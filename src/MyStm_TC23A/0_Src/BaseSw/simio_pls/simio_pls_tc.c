/*! \file simio.h
 *  \brief Simulated I/O API implementation for TriCore and TriCore2
 *
 *  Simulated I/O for stdin,stdout and stderr
 *  ASCII terminal window via target - host
 *  debug communication channel
 *  Supported tool chains: HighTec
 *
 *  \autor pls Programmierbare Logik & Systeme GmbH  1999-2012
 *
 *  \version
 *    04.12.2012  Version derived from former UDE sample projects
 *
 */

#include "simio_pls.h"

#include <stdio.h>


// ***********************************************************************
//
//   TYPE DEFINITIONS
//
// ***********************************************************************
#ifndef EOF
#define EOF		(1)
#endif /* EOF */

#define SIMIO_TARGET_BUFFER_SIZE		1024

typedef struct tagSimIOBuffer
{
	unsigned short wReadIndex;
	unsigned short wWriteIndex;
	unsigned char byBuffer[SIMIO_TARGET_BUFFER_SIZE];
} SIMIOBUFFER_t;

typedef struct tagJtagSimioAccess
{
	unsigned int dwSignature;
	unsigned short wHTBufSize;
	unsigned short wTHBufSize;
	volatile SIMIOBUFFER_t *dwHTBufAddr;
	volatile SIMIOBUFFER_t *dwTHBufAddr;
} TJtagSimioAccess_t;

#define JTAG_SIMIO_SIGNATURE	0x4741544A	/* "JTAG" */

// ***********************************************************************
//
//   PROTOTYPES OF INTERNAL FUNCTIONS
//
// ***********************************************************************
static unsigned int simio_GetTHBufferSpace(void);
static unsigned int simio_GetHTCharCount(void);
static unsigned char simio_GetByteFromHost(void);
static void simio_PutByteToHost(unsigned char Data);

// ***********************************************************************
//
//   MODULE STATIC VARIABLES
//
// ***********************************************************************
#pragma section ".data"
static volatile SIMIOBUFFER_t simio_HTBuffer = { 0, 0, {0} };
static volatile SIMIOBUFFER_t simio_THBuffer = { 0, 0, {0} };

TJtagSimioAccess_t g_JtagSimioAccess =
{
	.dwSignature = JTAG_SIMIO_SIGNATURE,
	.wHTBufSize  = SIMIO_TARGET_BUFFER_SIZE,
	.wTHBufSize  = SIMIO_TARGET_BUFFER_SIZE,
	.dwHTBufAddr = &simio_HTBuffer,
	.dwTHBufAddr = &simio_THBuffer
};

static unsigned int simio_NonBlockingMode = 0;
#pragma section

// ***********************************************************************
//
//   FUNCTIONS
//
// ***********************************************************************
void SIMIO_Init(unsigned int Mode)
{
	if (SIMIO_NONBLOCKINGMODE & Mode)
		simio_NonBlockingMode = 1;
	else
		simio_NonBlockingMode = 0;
}

// ***********************************************************************
//
//  Get free buffer space for output buffer (non blocking
//
// ***********************************************************************
static unsigned int simio_GetTHBufferSpace(void)
{
	unsigned int uiBufferSpace;
	unsigned short wReadIndex, wWriteIndex;

	/* access through global structure so that it is not removed by linker */
	wReadIndex  = g_JtagSimioAccess.dwHTBufAddr->wReadIndex;
	wWriteIndex = g_JtagSimioAccess.dwHTBufAddr->wWriteIndex;

	if (wWriteIndex < wReadIndex)
	{
		uiBufferSpace = wReadIndex - wWriteIndex - 1;
	}
	else
	{
		uiBufferSpace = wReadIndex + (SIMIO_TARGET_BUFFER_SIZE - 1 - wWriteIndex);
	}
	/* check for new space we set the readindex and losing old data */
	if (simio_NonBlockingMode)
	{
		if (uiBufferSpace == 0)
		{
			if (++wReadIndex >= SIMIO_TARGET_BUFFER_SIZE)
			{
				wReadIndex = 0;
			}
			simio_THBuffer.wReadIndex = wReadIndex;
			uiBufferSpace = 1;
	  }
	}
	/* we need 1 or more Bytes of space */
	return uiBufferSpace;
}

// ***********************************************************************
//
//
//
// ***********************************************************************
static unsigned int simio_GetHTCharCount(void)
{
	unsigned short wReadIndex, wWriteIndex;
	wReadIndex  = simio_HTBuffer.wReadIndex;
	wWriteIndex = simio_HTBuffer.wWriteIndex;

	if (wWriteIndex >= wReadIndex)
	{
		return wWriteIndex - wReadIndex;
	}
	else
	{
		return wWriteIndex + (SIMIO_TARGET_BUFFER_SIZE - wReadIndex);
	}
}

// ***********************************************************************
//
//  Read byte from HT transfer buffer
//
// ***********************************************************************
static unsigned char simio_GetByteFromHost(void)
{
	unsigned short wReadIndex;
	unsigned char ucByte;
	wReadIndex = simio_HTBuffer.wReadIndex;
	ucByte = simio_HTBuffer.byBuffer[wReadIndex++];
	if (wReadIndex >= SIMIO_TARGET_BUFFER_SIZE)
		wReadIndex = 0;
	simio_HTBuffer.wReadIndex = wReadIndex;
	return ucByte;
}

// ***********************************************************************
//
//  write byte to TH transfer buffer
//
// ***********************************************************************
static void simio_PutByteToHost(unsigned char Data)
{
	unsigned short wWriteIndex;

	if (simio_NonBlockingMode)
	{
		if (!simio_GetTHBufferSpace())
		{
			return; /* discard */
		}
	}
	else
	{
		/* wait until buffer space is available */
		while (!simio_GetTHBufferSpace())
			;
	}
	wWriteIndex = simio_THBuffer.wWriteIndex;
	simio_THBuffer.byBuffer[wWriteIndex++] = Data;
	if (wWriteIndex >= SIMIO_TARGET_BUFFER_SIZE)
	{
		wWriteIndex = 0;
	}
	simio_THBuffer.wWriteIndex = wWriteIndex;
}

// ***********************************************************************
//
//  Posix read
//  this function is called by the ANSI-C Library to read data from a FD
//
// ***********************************************************************
#ifndef SIMIO_NO_POSIX_READ_WRITE
size_t read(int fd, void *buffer, size_t count)
{
	size_t index;
	index = 0;
	if (fileno(stdin) == fd)
	{
		char *buf = (char *)buffer;

		/* wait for at least one byte */
		while (0 == simio_GetHTCharCount())
			;
		for (; index < count && 0 != simio_GetHTCharCount(); index++, buf++)
		{
			*buf = simio_GetByteFromHost();
		}
	}
	return index;
}

// ***********************************************************************
//
//  Posix write
//  this function is called by the ANSI-C Library to write data to a FD
//
// ***********************************************************************
size_t write(int fd, const void *buffer, size_t count)
{
	size_t index;
	index = 0;
	if (fileno(stdout) == fd || fileno(stderr) == fd)
	{
		const char *buf = (const char *)buffer;
		for (; index < count; index++, buf++)
		{
			simio_PutByteToHost(*buf);
		}
	}
	return index;
}

int kbhit(void)
{
	return simio_GetHTCharCount() ? 1 : 0;
}
#endif  /* SIMIO_NO_POSIX_READ_WRITE */

unsigned int SIMIO_GetHTCharCount(void)
{
	return simio_GetHTCharCount();
}

unsigned char SIMIO_GetByteFromHost(void)
{
	if (!simio_NonBlockingMode)
	{
		/* wait for data */
		while (0 == SIMIO_GetHTCharCount())
			;
	}
	return simio_GetByteFromHost();
}

void SIMIO_PutByteToHost(unsigned char Data)
{
	simio_PutByteToHost(Data);
}

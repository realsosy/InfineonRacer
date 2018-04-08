/*! \file simio.h
 *  \brief Simulated I/O API definition
 *
 *  Simulated I/O for stdin,stdout and stderr
 *  ASCII terminal window via target - host
 *  debug communication channel
 *
 *  \autor pls Programmierbare Logik & Systeme GmbH  1999-2012
 *
 *  \version
 *    04.12.2010  Version derived from former UDE sample projects
 *
 */

#ifndef __SIMIO_H__
#define __SIMIO_H__

#define SIMIO_NONBLOCKINGMODE	0x0001

void SIMIO_Init(unsigned int Mode);

int kbhit(void);

unsigned int SIMIO_GetHTCharCount(void);
unsigned char SIMIO_GetByteFromHost(void);
void SIMIO_PutByteToHost(unsigned char Data);

#endif  /* __SIMIO_H__ */

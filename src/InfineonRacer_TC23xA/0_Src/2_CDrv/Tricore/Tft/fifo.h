/*
 * fifo.h
 *
 *  Created on: 26.01.2013
 *      Author: voigtlae
 */

#ifndef FIFO_H_
#define FIFO_H_


void fifo_display_init (uint32 * pFIFO, uint32 size);
sint32 fifo_display_used (void);
uint32 fifo_max_used (void);
sint32 PUT_FIFO_DISPLAY (uint32 value);
sint32 GET_FIFO_DISPLAY (uint32 * pvalue);
sint32 FIFO_DISPLAY_FREE (void);
sint32 FIFO_DISPLAY_USED (void);
sint32 GET_FIFO_DISPLAY_NODROP (uint32 * pvalue);

typedef struct tfifodisplay
{
    uint32 *pFIFO_DISPLAY;
    uint32 FIFO_DISPLAY_SIZE;
    volatile sint32 FIFO_DISPLAY_IN;
    volatile sint32 FIFO_DISPLAY_OUT;
    uint32 FIFO_MAX_USED;
} TFIFODISPLAY;

#endif /* FIFO_H_ */

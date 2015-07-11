/**
 * adc.h - Declares the ADC related functions
 *
 * Copyright (c) 2015 Joseph Angelo
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

#ifndef ADC_H_
#define ADC_H_

#include <stdint.h>
#include <stdbool.h>

#define ADC_CHANNEL_0			0
#define ADC_CHANNEL_1			1
#define ADC_CHANNEL_2			2
#define ADC_CHANNEL_3			3
#define ADC_CHANNEL_4 			4
#define ADC_CHANNEL_5			5
#define ADC_CHANNEL_6			6
#define ADC_CHANNEL_7			7
#define ADC_CHANNEL_TEMP		8
#define ADC_CHANNEL_REF			14
#define ADC_CHANNEL_GND			15

#define ADC_FREE_RUNNING		(                                        (0) )
#define ADC_ANALOG_COMPARATOR	(                               (1 << ADTS0) )
#define ADC_EXTERNAL_INTERRUPT	(                (1 << ADTS1)                )
#define ADC_TC0_COMPARE_A		(                (1 << ADTS1) | (1 << ADTS0) )
#define ADC_TC0_OVERFLOW		( (1 << ADTS2)                               )
#define ADC_TC1_COMPARE_B		( (1 << ADTS2)                | (1 << ADTS0) )
#define ADC_TC1_OVERFLOW		( (1 << ADTS2) | (1 << ADTS1)                )
#define ADC_TC1_CAPTURE			( (1 << ADTS2) | (1 << ADTS1) | (1 << ADTS0) )
#define ADC_SOFTWARE			(                                     (0xFF) )


void adc_init(void);
bool adc_isConversionDone(void);
void adc_setChannel(uint8_t channel);
void adc_setStartEvent(uint8_t event);
void adc_startConversion(void);
uint16_t adc_getConversion(void);

#endif /* ADC_H_ */

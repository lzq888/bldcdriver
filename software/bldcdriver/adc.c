/**
 * adc.c - Define the ADC related functions
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

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/atomic.h>
#include "adc.h"

#define EVENT_MASK		( (1 << ADTS2) | (1 << ADTS1) | (1 << ADTS0) )
#define CHANNEL_MASK	( (1 << MUX3) | (1 << MUX2) | (1 << MUX1) | (1 << MUX0) )

static bool conversionComplete;
static uint16_t conversionData;

void adc_init(void)
{
	ADMUX = (1 << REFS1) | (1 << REFS0);
	ADCSRA = (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0) | (1 << ADIE);
	ADCSRB = 0;

	conversionComplete = false;
	conversionData = 0;

	ADCSRA |= (1 << ADEN); // Turns on the ADC
}

bool adc_isConversionDone(void)
{
	return conversionComplete;
}

void adc_setChannel(uint8_t channel)
{
	ADMUX &= ~(CHANNEL_MASK);
	ADMUX |= (channel & CHANNEL_MASK);
}

void adc_setStartEvent(uint8_t event)
{
	if (ADC_SOFTWARE)
	{
		ADCSRA &= ~(1 << ADATE); // Disable external event triggering
	}
	else
	{
		// Configure the trigger event
		ADCSRB &= ~(EVENT_MASK);
		ADCSRB |= (event & EVENT_MASK);

		ADCSRA |= (1 << ADATE); // Enable external event triggering
	}
}

void adc_startConversion(void)
{
	ADCSRA |= (1 << ADSC);
}

uint16_t adc_getConversion(void)
{
	if (!conversionComplete)
	{
		return 0;
	}
	else
	{
		uint16_t data;
		ATOMIC_BLOCK( ATOMIC_RESTORESTATE )
		{
			data = conversionData;
			conversionComplete = false;
		}
		return data;
	}
}

ISR(ADC_vect)
{
	conversionData = ADC;
	conversionComplete = true;
}

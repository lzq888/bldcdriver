/**
 * pwm.c - Defines the functions to access the PWM output
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
#include "pwm.h"

void pwm_init()
{
	TCCR1A = (1<<COM1A1);
	TCCR1B = (1<<WGM13);
	TCCR1C = 0;

	TCNT1 = 0;
	OCR1A = 0;
	OCR1B = 0;
	ICR1 = PWM_MAX;
	TIMSK1 = 0;

	DDRB |= (1<<DDB1);
}

void pwm_start()
{
	TCCR1B |= (1<<CS10); // Turn on the clock
}

void pwm_stop()
{
	TCCR1B &= ~((1<<CS12) | (1<<CS11) | (1<<CS10)); // Turn off the clock
}

void pwm_setDutyCycle(uint16_t newDC)
{
	// Saturate the duty cycle to the max value
	if (newDC > PWM_MAX)
	{
		newDC = PWM_MAX;
	}

	OCR1A = newDC;
}




/**
 * io.c - Declares the IO related functions
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
#include "io.h"

void io_setPinDirection(uint8_t port, uint8_t pin, bool output)
{
	volatile uint8_t* portReg;

	switch (port)
	{
		case IO_PORT_B:
			portReg = &DDRB;
			break;
		case IO_PORT_C:
			portReg = &DDRC;
			break;
		case IO_PORT_D:
			portReg = &DDRD;
			break;
		default:
			return;
	}

	if (output)
	{
		(*portReg) |= pin;
	}
	else
	{
		(*portReg) &= ~pin;
	}
}

bool io_getPinValue(uint8_t port, uint8_t pin)
{
	switch (port)
	{
		case IO_PORT_B:
			return ((PINB & pin) != 0);
		case IO_PORT_C:
			return ((PINC & pin) != 0);
		case IO_PORT_D:
			return ((PIND & pin) != 0);
		default:
			return false;
	}
}

void io_setPinValue(uint8_t port, uint8_t pin, bool value)
{
	volatile uint8_t* portReg;

	switch (port)
	{
		case IO_PORT_B:
			portReg = &PORTB;
			break;
		case IO_PORT_C:
			portReg = &PORTC;
			break;
		case IO_PORT_D:
			portReg = &PORTD;
			break;
		default:
			return;
	}

	if (value)
	{
		(*portReg) |= pin;
	}
	else
	{
		(*portReg) &= ~pin;
	}
}

void io_togglePin(uint8_t port, uint8_t pin)
{
	switch (port)
	{
		case IO_PORT_B:
			PINB |= pin;
			break;
		case IO_PORT_C:
			PINC |= pin;
			break;
		case IO_PORT_D:
			PIND |= pin;
			break;
		default:
			break;
	}
}


/**
 * uart.c - Defines the UART related functions
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
#include "uart.h"
#include "bldcdriver.h"

// This header contains helper macros for calculating the baud rate
#include <util/setbaud.h>

void uart_init(void)
{
	// 9600 baud, assuming 20MHz clock
	UBRR0H = UBRRH_VALUE;
	UBRR0L = UBRRL_VALUE;

	#if USE_2X != 0
	UCSR0A = (1<<U2X0);
	#else
	UCSR0A = 0;
	#endif
	UCSR0B = (1<<RXEN0)|(1<<TXEN0);
	UCSR0C = (1<<UCSZ01)|(1<<UCSZ00);

	DDRD |= (1<<DDD0);
}

bool uart_putChar(char c)
{
	UDR0 = c;
	return true;
}

bool uart_getChar(char *c)
{
	*c = UDR0;
	return true;
}

bool uart_isTXComplete(void)
{
	if (UCSR0A & (1<<TXC0))
	{
		UCSR0A &= ~(1<<TXC0);
		return true;
	}
	else
	{
		return false;
	}
}

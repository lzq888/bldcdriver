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
#include <avr/interrupt.h>
#include "uart.h"
#include "io.h"
#include "bldcdriver.h"

#define RX_BUFFER_SIZE 10
static char rx_buffer[RX_BUFFER_SIZE];
static uint8_t rx_buffer_head;
static bool is_transmitting;

static void uart_enableInterrupts(void);
static void uart_disableInterrupts(void);

void uart_init(void)
{
	// Uses the baudrate set in bldcdriver.h
	UBRR0H = UART_BAUD_HIGH;
	UBRR0L = UART_BAUD_LOW;

	UCSR0A = 0;
	UCSR0B = (1 << RXEN0) | (1 << TXEN0);
	UCSR0C = (1 << UCSZ01) | (1 << UCSZ00);

	io_setPinDirection(IO_PORT_D, IO_PIN_1, IO_OUTPUT);

	rx_buffer_head = 0;
	is_transmitting = false;

	uart_enableInterrupts();
}

bool uart_putChar(char c)
{
	if (is_transmitting)
	{
		return false;
	}

	UDR0 = c;
	is_transmitting = true;
	return true;
}

bool uart_getChar(char *c)
{
	if (rx_buffer_head == 0)
	{
		return false;
	}
	else
	{
		uart_disableInterrupts();
		*c = rx_buffer[--rx_buffer_head];
		uart_enableInterrupts();
		return true;
	}
}

bool uart_isTXComplete(void)
{
	return !is_transmitting;
}

static void uart_enableInterrupts(void)
{
	UCSR0B |= ((1 << RXCIE0) | (1 << TXCIE0));
}

static void uart_disableInterrupts(void)
{
	UCSR0B &= ~((1 << RXCIE0) | (1 << TXCIE0));
}

ISR(USART_RX_vect)
{
	if (rx_buffer_head < RX_BUFFER_SIZE)
	{
		rx_buffer[rx_buffer_head++] = UDR0;
	}
	else
	{
		(void)UDR0; // read the data to clear the interrupt flag
	}
}

ISR(USART_TX_vect)
{
	is_transmitting = false;
}

/**
 * bldc.h - Defines several global items for the bldc software project
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
#ifndef BLDCDRIVER_H
#define BLDCDRIVER_H

// Defines the main clock frequency
#define F_CPU 20000000

// Defines the UART baud rate
#define UART_BAUD 9600
//#define UART_BAUD 115200
#if (F_CPU == 20000000) && (UART_BAUD == 9600)
#define UART_BAUD_HIGH 0
#define UART_BAUD_LOW 129
#elif (F_CPU == 20000000) && (UART_BAUD == 115200)
#define UART_BAUD_HIGH 0
#define UART_BAUD_LOW 10
#else
#error "No usable baudrate found"
#endif

#endif

/**
 * io.h - Declares the IO related functions
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

#ifndef IO_H_
#define IO_H_

#include <stdbool.h>

#define IO_OUTPUT	true
#define IO_INPUT	false

#define IO_PORT_B	0
#define IO_PORT_C	1
#define IO_PORT_D	2

#define IO_PIN_0	(1 << 0)
#define IO_PIN_1	(1 << 1)
#define IO_PIN_2	(1 << 2)
#define IO_PIN_3	(1 << 3)
#define IO_PIN_4	(1 << 4)
#define IO_PIN_5	(1 << 5)
#define IO_PIN_6	(1 << 6)
#define IO_PIN_7	(1 << 7)

void io_setPinDirection(uint8_t port, uint8_t pin, bool output);
bool io_getPinValue(uint8_t port, uint8_t pin);
void io_setPinValue(uint8_t port, uint8_t pin, bool value);
void io_togglePin(uint8_t port, uint8_t pin);

#endif /* IO_H_ */

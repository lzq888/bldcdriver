# Makefile
#
# Copyright (c) 2015 Joseph Angelo
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.


SOURCES=main.c fuse.c uart.c pwm.c led.c
PROJNAME=bldcdriver

CROSS_PREFIX=avr-
CC=$(CROSS_PREFIX)gcc
OBJCOPY=$(CROSS_PREFIX)objcopy
SIZE=$(CROSS_PREFIX)size

BUILDDIR=build

BIN=$(BUILDDIR)/$(PROJNAME).elf
HEX=$(BUILDDIR)/$(PROJNAME).hex
MEMMAP=$(BUILDDIR)/$(PROJNAME).map
OBJECTS=$(SOURCES:%.c=$(BUILDDIR)/%.o)

# Flag explanations:
#	-c - Compile and assemble, but don't link. Outputs object code
#	-g - Keep debug information
#	-Wall - Enable all warnings
#	-mmcu=attiny85 - Compile for the ATtiny85 chip
CFLAGS=-c -g -Wall -mmcu=atmega328 -MD -O1
#	--warn - Enable all warnings
ASFLAGS=-g --warn -mmcu=atmega328
#	-Map memory.map - Output a text file containing the memory map
LDFLAGS=-Wl,-Map=$(MEMMAP)

all: mkdirs $(BIN)
	#$(OBJCOPY) --only-section=.text --only-section=.data --only-section=.bss --output-target=ihex $(BIN) $(HEX)
	$(SIZE) $(BIN)

# Include any dependency files
-include $(BUILDDIR)/*.d

$(BIN): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $(BIN)

clean:
	rm -f $(BIN) $(HEX) $(MEMMAP) $(OBJECTS)

mkdirs:
	@mkdir -p $(BUILDDIR)

program:
	avrdude -p m328 -c usbtiny -e -U flash:w:$(BIN):e

fuse:
	avrdude -p m328 -c usbtiny -U hfuse:w:$(BIN):e -U lfuse:w:$(BIN):e -Uefuse:w:$(BIN):e

$(BUILDDIR)/%.o: %.c
	$(CC) $(CFLAGS) $< -o $@

$(BUILDDIR)/%.o: %.cpp
	$(CC) $(CFLAGS) $< -o $@

$(BUILDDIR)/%.o: %.s
	$(CC) $(ASFLAGS) $< -o $@


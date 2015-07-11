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


SOURCES=main.c fuse.c uart.c pwm.c led.c io.c adc.c eepromData.c
PROJNAME=bldcdriver

CCTARGET=atmega328p
AVRDUDETARGET=m328

CROSS_PREFIX=avr-
CC=$(CROSS_PREFIX)gcc
OBJCOPY=$(CROSS_PREFIX)objcopy
SIZE=$(CROSS_PREFIX)size

BUILDDIR=build

ELF=$(BUILDDIR)/$(PROJNAME).elf
HEX=$(BUILDDIR)/$(PROJNAME).hex
SREC=$(BUILDDIR)/$(PROJNAME).srec
BIN=$(BUILDDIR)/$(PROJNAME).bin
EEPROMHEX=$(BUILDDIR)/eeprom.hex
EEPROMSREC=$(BUILDDIR)/eeprom.srec
EEPROMBIN=$(BUILDDIR)/eeprom.bin
MEMMAP=$(BUILDDIR)/$(PROJNAME).map
OBJECTS=$(SOURCES:%.c=$(BUILDDIR)/%.o)

# Flag explanations:
#	-c - Compile and assemble, but don't link. Outputs object code
#	-g - Keep debug information
#	-Wall - Enable all warnings
#	-mmcu=attiny85 - Compile for the ATtiny85 chip
CFLAGS=-c -g -Wall -mmcu=$(CCTARGET) -MD -O1 -std=c99
#	--warn - Enable all warnings
ASFLAGS=-g --warn -mmcu=$(CCTARGET)
#	-Map memory.map - Output a text file containing the memory map
LDFLAGS=-Wl,-Map=$(MEMMAP) -mmcu=$(CCTARGET)

all: mkdirs $(ELF) $(HEX) $(SREC) $(BIN) $(EEPROMHEX) $(EEPROMSREC) $(EEPROMBIN)
	$(SIZE) -C --mcu=$(CCTARGET) $(ELF)

clean:
	rm -f $(ELF) $(HEX) $(SREC) $(BIN) $(MEMMAP) $(OBJECTS) $(EEPROMHEX) $(EEPROMSREC) $(EEPROMBIN)

# Include any dependency files
-include $(BUILDDIR)/*.d

$(ELF): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $(ELF)

$(HEX): $(ELF)
	$(OBJCOPY) --only-section=.text --only-section=.data --output-target=ihex $(ELF) $(HEX)

$(SREC): $(ELF)
	$(OBJCOPY) --only-section=.text --only-section=.data --output-target=srec $(ELF) $(SREC)

$(BIN): $(ELF)
	$(OBJCOPY) --only-section=.text --only-section=.data --output-target=binary $(ELF) $(BIN)

$(EEPROMHEX): $(ELF)
	$(OBJCOPY) --only-section=.eeprom --output-target=ihex $(ELF) $(EEPROMHEX)

$(EEPROMSREC): $(ELF)
	$(OBJCOPY) --only-section=.eeprom --output-target=srec $(ELF) $(EEPROMSREC)

$(EEPROMBIN): $(ELF)
	$(OBJCOPY) --only-section=.eeprom --output-target=binary $(ELF) $(EEPROMBIN)

mkdirs:
	@mkdir -p $(BUILDDIR)

program: $(ELF)
	avrdude -p $(AVRDUDETARGET) -c usbtiny -e -U flash:w:$(ELF):e

fuse: $(ELF)
	avrdude -p $(AVRDUDETARGET) -c usbtiny -U hfuse:w:$(ELF):e -U lfuse:w:$(ELF):e -Uefuse:w:$(ELF):e

eeprom: $(ELF)
	avrdude -p $(AVRDUDETARGET) -c usbtiny -U eeprom:w:$(ELF):e

$(BUILDDIR)/%.o: %.c
	$(CC) $(CFLAGS) $< -o $@

$(BUILDDIR)/%.o: %.cpp
	$(CC) $(CFLAGS) $< -o $@

$(BUILDDIR)/%.o: %.s
	$(CC) $(ASFLAGS) $< -o $@


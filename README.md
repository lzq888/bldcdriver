# bldcdriver
The hardware and software for a brushless motor driver

## Hardware
The hardware design was done in KiCAD, but alternative portable file formats have been provided where possible.

### Design Specs
Power Source: 6V-18V (2-4 LiPo Cells, 4-12 NiMH)

Constant Output Current: 20A

Motor Type: Brushless (Optional Sensors)

PWM Frequency: 16kHz

## Software
The software is written in C, with an attempt to separate the hardware specific drivers from the higher level motor control and communication logic. 

### Toolchain
Since the first hardware revision uses an Atmel ATMega microcontroller the open source toolchain consisting of avr-binutils, avr-gcc, and avr-libc is used.

### IDE
A Makefile is provided for building the software regardless of the IDE used. An Eclipse CDT set of project files has been included.

### Programming
The avrdude tool is used for interfacing with the programmer. The programmer used is a varient of the USBtinyISP tool. Any combination of programmer and software tools that allow use of the standard 6-pin AVR In-System Programming interface should be usable. The avr-binutils linker outputs an ELF file which includes sections for the flash, SRAM, fuses bits, lock bits, and the eeprom. For compatibility with other programing tools the Makefile produces files for the flash memory and eeprom in Intel-hex, SREC, and raw binary file formats.



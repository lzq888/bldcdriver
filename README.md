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
Since the first hardware revision uses an Atmel ATMega microcontroller the open source toolchain consisting of avr-binutils, avr-gcc, and avr-libc will be used. A Makefile is provided for building the software. An Eclipse CDT set of project files has been included, but any IDE should be useable with the provided Makefile.

## Programming
The avrdude tool is used for interfacing with the programming tool. The physical tool used is a varient of the USBtinyISP tool. Any combination of programming tools that allow use of the standart 6-pin AVR In-System Programming interface should be usable. The avr-binutils linker outputs a .elf file with which includes sections for the fuses lock bits and the eeprom. For compatibility with other programing tools the Makefile also produces files for the flash memory and eeprom in Intel-hex, SREC, and raw binary file formats.



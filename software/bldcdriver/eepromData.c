/*
 * eeprom.c
 *
 *  Created on: Jul 11, 2015
 *      Author: ben
 */
#include <stdint.h>
#include <avr/eeprom.h>

EEMEM uint16_t lowBattThreshold = 0x03F1;
EEMEM uint8_t i2cAddr = 0x04;

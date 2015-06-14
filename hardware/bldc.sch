EESchema Schematic File Version 2  date Sun 14 Jun 2015 10:56:58 MST
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:bldc-cache
LIBS:bldc-cache
EELAYER 25  0
EELAYER END
$Descr User 11000 8500
encoding utf-8
Sheet 1 4
Title "BLDC Controller"
Date "14 jun 2015"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 7805 U1
U 1 1 557DC005
P 5250 1100
F 0 "U1" H 5400 904 60  0000 C CNN
F 1 "7805" H 5250 1300 60  0000 C CNN
	1    5250 1100
	1    0    0    -1  
$EndComp
Connection ~ 4750 1450
Wire Wire Line
	4400 1450 5750 1450
Wire Wire Line
	7800 2500 9200 2500
Wire Wire Line
	9200 2500 9200 2550
Wire Wire Line
	9200 2550 9500 2550
Wire Wire Line
	2100 2650 1400 2650
Wire Wire Line
	1400 2650 1400 4850
Wire Wire Line
	1400 4850 4550 4850
Wire Wire Line
	6500 4400 8900 4400
Wire Wire Line
	6500 4600 8700 4600
Wire Wire Line
	6800 2950 3450 2950
Wire Wire Line
	6800 2650 3450 2650
Wire Wire Line
	6800 2350 3450 2350
Connection ~ 8700 2500
Wire Wire Line
	8700 4600 8700 2500
Connection ~ 8800 2400
Wire Wire Line
	8800 2400 8800 4500
Wire Wire Line
	3350 900  3350 850 
Wire Wire Line
	2450 850  2450 900 
Wire Wire Line
	2450 900  2300 900 
Wire Wire Line
	2300 900  2300 850 
Wire Wire Line
	4550 4600 1600 4600
Wire Wire Line
	1600 4600 1600 2450
Wire Wire Line
	1600 2450 2100 2450
Wire Wire Line
	2100 2250 1800 2250
Wire Wire Line
	1800 2250 1800 4400
Wire Wire Line
	1800 4400 4550 4400
Wire Wire Line
	8900 4400 8900 2300
Connection ~ 5250 1450
Wire Wire Line
	5950 1000 5950 1050
Wire Wire Line
	5950 1050 5650 1050
Wire Wire Line
	4550 1050 4550 1000
Wire Wire Line
	5250 1500 5250 1350
Wire Wire Line
	4550 4500 1700 4500
Wire Wire Line
	1700 4500 1700 2350
Wire Wire Line
	1700 2350 2100 2350
Connection ~ 8900 2300
Connection ~ 4750 1050
Connection ~ 4750 1050
Connection ~ 5750 1050
Connection ~ 5750 1050
Wire Wire Line
	9500 2400 7800 2400
Wire Wire Line
	6800 2250 3450 2250
Wire Wire Line
	6800 2550 3450 2550
Wire Wire Line
	6800 2850 3450 2850
Wire Wire Line
	8800 4500 6500 4500
Wire Wire Line
	7800 2750 8600 2750
Wire Wire Line
	8600 2750 8600 4850
Wire Wire Line
	8600 4850 6500 4850
Wire Wire Line
	9500 2250 9200 2250
Wire Wire Line
	9200 2250 9200 2300
Wire Wire Line
	9200 2300 7800 2300
Wire Wire Line
	4400 1050 4850 1050
Connection ~ 4550 1050
$Comp
L CONN_1 J8
U 1 1 557DB4F9
P 4250 1450
F 0 "J8" H 4330 1450 40  0000 L CNN
F 1 "BATT-" H 4250 1505 30  0000 C CNN
	1    4250 1450
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 J7
U 1 1 557DB4EE
P 4250 1050
F 0 "J7" H 4330 1050 40  0000 L CNN
F 1 "BATT+" H 4250 1105 30  0000 C CNN
	1    4250 1050
	-1   0    0    1   
$EndComp
$Comp
L C C2
U 1 1 555D4F9E
P 5750 1250
F 0 "C2" H 5800 1350 50  0000 L CNN
F 1 "1uF" H 5800 1150 50  0000 L CNN
F 4 "FK24X7R1H105K" H 5750 1250 60  0001 C CNN "Mfg P/N"
F 5 "445-8517-ND" H 5750 1250 60  0001 C CNN "Digikey P/N"
F 6 "810-FK24X7R1H105K" H 5750 1250 60  0001 C CNN "Mouser P/N"
	1    5750 1250
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 555D4F9B
P 4750 1250
F 0 "C1" H 4800 1350 50  0000 L CNN
F 1 "1uF" H 4800 1150 50  0000 L CNN
F 4 "FK24X7R1H105K" H 4750 1250 60  0001 C CNN "Mfg P/N"
F 5 "445-8517-ND" H 4750 1250 60  0001 C CNN "Digikey P/N"
F 6 "810-FK24X7R1H105K" H 4750 1250 60  0001 C CNN "Mouser P/N"
	1    4750 1250
	1    0    0    -1  
$EndComp
$Sheet
S 4550 4200 1950 850 
U 5533F799
F0 "Signal Conditioning" 60
F1 "Signal Conditioning.sch" 60
F2 "W_OUT" I R 6500 4600 60 
F3 "V_OUT" I R 6500 4500 60 
F4 "U_OUT" I R 6500 4400 60 
F5 "W_BEMF" O L 4550 4600 60 
F6 "V_BEMF" O L 4550 4500 60 
F7 "U_BEMF" O L 4550 4400 60 
F8 "CURR_SENSE_COND" O L 4550 4850 60 
F9 "CURR_SENSE_RAW" I R 6500 4850 60 
$EndSheet
$Comp
L GND #PWR01
U 1 1 553C10DF
P 3350 900
F 0 "#PWR01" H 3350 900 30  0001 C CNN
F 1 "GND" H 3350 830 30  0001 C CNN
	1    3350 900 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 553C10DA
P 3350 850
F 0 "#FLG02" H 3350 1120 30  0001 C CNN
F 1 "PWR_FLAG" H 3350 1080 30  0000 C CNN
	1    3350 850 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 55343C2E
P 2300 850
F 0 "#FLG03" H 2300 1120 30  0001 C CNN
F 1 "PWR_FLAG" H 2300 1080 30  0000 C CNN
	1    2300 850 
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR04
U 1 1 55343C22
P 2450 850
F 0 "#PWR04" H 2450 800 20  0001 C CNN
F 1 "+BATT" H 2450 950 30  0000 C CNN
	1    2450 850 
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 J3
U 1 1 55340D36
P 9650 2550
F 0 "J3" H 9730 2550 40  0000 L CNN
F 1 "W_OUT" H 9650 2605 30  0000 C CNN
	1    9650 2550
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 J2
U 1 1 55340D33
P 9650 2400
F 0 "J2" H 9730 2400 40  0000 L CNN
F 1 "V_OUT" H 9650 2455 30  0000 C CNN
	1    9650 2400
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 J1
U 1 1 55340D0A
P 9650 2250
F 0 "J1" H 9730 2250 40  0000 L CNN
F 1 "U_OUT" H 9650 2305 30  0000 C CNN
	1    9650 2250
	1    0    0    -1  
$EndComp
$Sheet
S 2100 2050 1350 1100
U 5533F41F
F0 "Microcontroller" 60
F1 "Microcontroller.sch" 60
F2 "U_BEMF_SENSE" I L 2100 2250 60 
F3 "W_BEMF_SENSE" I L 2100 2450 60 
F4 "V_BEMF_SENSE" I L 2100 2350 60 
F5 "U_HI" O R 3450 2250 60 
F6 "V_HI" O R 3450 2550 60 
F7 "U_LO" O R 3450 2350 60 
F8 "V_LO" O R 3450 2650 60 
F9 "W_LO" O R 3450 2950 60 
F10 "W_HI" O R 3450 2850 60 
F11 "CURR_SENSE" I L 2100 2650 60 
$EndSheet
$Sheet
S 6800 2150 1000 900 
U 5533EFF3
F0 "3 Phase Inverter" 60
F1 "3 Phase Inverter.sch" 60
F2 "W_LO" I L 6800 2950 60 
F3 "W_HI" I L 6800 2850 60 
F4 "V_LO" I L 6800 2650 60 
F5 "V_HI" I L 6800 2550 60 
F6 "U_LO" I L 6800 2350 60 
F7 "U_HI" I L 6800 2250 60 
F8 "U_OUT" O R 7800 2300 60 
F9 "V_OUT" O R 7800 2400 60 
F10 "W_OUT" O R 7800 2500 60 
F11 "CURR_SENSE" O R 7800 2750 60 
$EndSheet
$Comp
L GND #PWR05
U 1 1 5533EF79
P 5250 1500
F 0 "#PWR05" H 5250 1500 30  0001 C CNN
F 1 "GND" H 5250 1430 30  0001 C CNN
	1    5250 1500
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR06
U 1 1 5533EF2A
P 4550 1000
F 0 "#PWR06" H 4550 950 20  0001 C CNN
F 1 "+BATT" H 4550 1100 30  0000 C CNN
	1    4550 1000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 5533EF24
P 5950 1000
F 0 "#PWR07" H 5950 1090 20  0001 C CNN
F 1 "+5V" H 5950 1090 30  0000 C CNN
	1    5950 1000
	1    0    0    -1  
$EndComp
$EndSCHEMATC

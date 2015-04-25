EESchema Schematic File Version 2  date Sat 25 Apr 2015 16:01:28 MST
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
Date "25 apr 2015"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3350 900  3350 850 
Wire Wire Line
	2450 850  2450 900 
Wire Wire Line
	2450 900  2300 900 
Wire Wire Line
	2300 900  2300 850 
Wire Wire Line
	1550 900  1550 850 
Connection ~ 8550 2600
Wire Wire Line
	7600 2600 9500 2600
Wire Wire Line
	4550 4900 1350 4900
Wire Wire Line
	4550 5000 1250 5000
Wire Wire Line
	1250 5000 1250 2350
Wire Wire Line
	1250 2350 2100 2350
Wire Wire Line
	4550 4600 1600 4600
Wire Wire Line
	1600 4600 1600 3000
Wire Wire Line
	1600 3000 2100 3000
Wire Wire Line
	2100 2800 1800 2800
Wire Wire Line
	1800 2800 1800 4400
Wire Wire Line
	1800 4400 4550 4400
Wire Wire Line
	6100 4600 8200 4600
Wire Wire Line
	8200 4600 8200 2900
Wire Wire Line
	6100 4500 8550 4500
Wire Wire Line
	8550 4500 8550 2600
Wire Wire Line
	6100 4400 8900 4400
Wire Wire Line
	8900 4400 8900 2300
Wire Wire Line
	6850 2850 3450 2850
Wire Wire Line
	6850 2550 3450 2550
Wire Wire Line
	6850 2250 3450 2250
Connection ~ 5250 1450
Wire Wire Line
	5750 1450 4750 1450
Wire Wire Line
	5950 1000 5950 1050
Wire Wire Line
	5950 1050 5650 1050
Wire Wire Line
	4850 1050 4550 1050
Wire Wire Line
	4550 1050 4550 1000
Wire Wire Line
	5250 1500 5250 1350
Wire Wire Line
	3450 2350 6850 2350
Wire Wire Line
	3450 2650 6850 2650
Wire Wire Line
	3450 2950 6850 2950
Wire Wire Line
	7600 2400 8800 2400
Wire Wire Line
	8800 2400 8800 4900
Wire Wire Line
	8800 4900 6100 4900
Wire Wire Line
	7600 2700 8450 2700
Wire Wire Line
	8450 2700 8450 5000
Wire Wire Line
	8450 5000 6100 5000
Wire Wire Line
	7600 3000 8100 3000
Wire Wire Line
	8100 3000 8100 5100
Wire Wire Line
	8100 5100 6100 5100
Wire Wire Line
	4550 4500 1700 4500
Wire Wire Line
	1700 4500 1700 2900
Wire Wire Line
	1700 2900 2100 2900
Wire Wire Line
	1350 4900 1350 2250
Wire Wire Line
	1350 2250 2100 2250
Wire Wire Line
	4550 5100 1150 5100
Wire Wire Line
	1150 5100 1150 2450
Wire Wire Line
	1150 2450 2100 2450
Wire Wire Line
	7600 2300 9500 2300
Connection ~ 8900 2300
Wire Wire Line
	7600 2900 9500 2900
Connection ~ 8200 2900
Connection ~ 4750 1050
Connection ~ 4750 1050
Connection ~ 5750 1050
Connection ~ 5750 1050
Wire Wire Line
	1550 1500 1550 1550
Wire Wire Line
	2950 850  2950 900 
Wire Wire Line
	2950 900  2800 900 
Wire Wire Line
	2800 900  2800 850 
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
L +5VA #PWR03
U 1 1 55343C4A
P 2950 850
F 0 "#PWR03" H 2950 980 20  0001 C CNN
F 1 "+5VA" H 2950 950 30  0000 C CNN
	1    2950 850 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 55343C3C
P 2800 850
F 0 "#FLG04" H 2800 1120 30  0001 C CNN
F 1 "PWR_FLAG" H 2800 1080 30  0000 C CNN
	1    2800 850 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 55343C2E
P 2300 850
F 0 "#FLG05" H 2300 1120 30  0001 C CNN
F 1 "PWR_FLAG" H 2300 1080 30  0000 C CNN
	1    2300 850 
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR06
U 1 1 55343C22
P 2450 850
F 0 "#PWR06" H 2450 800 20  0001 C CNN
F 1 "+BATT" H 2450 950 30  0000 C CNN
	1    2450 850 
	1    0    0    -1  
$EndComp
$Comp
L BATTERY BT1
U 1 1 5534389A
P 1550 1200
F 0 "BT1" H 1550 1400 50  0000 C CNN
F 1 "BATTERY" H 1550 1010 50  0000 C CNN
	1    1550 1200
	0    1    1    0   
$EndComp
$Comp
L +BATT #PWR07
U 1 1 55340DA2
P 1550 850
F 0 "#PWR07" H 1550 800 20  0001 C CNN
F 1 "+BATT" H 1550 950 30  0000 C CNN
	1    1550 850 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 55340D98
P 1550 1550
F 0 "#PWR08" H 1550 1550 30  0001 C CNN
F 1 "GND" H 1550 1480 30  0001 C CNN
	1    1550 1550
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 J5
U 1 1 55340D36
P 9650 2900
F 0 "J5" H 9730 2900 40  0000 L CNN
F 1 "W_OUT" H 9650 2955 30  0000 C CNN
	1    9650 2900
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 J4
U 1 1 55340D33
P 9650 2600
F 0 "J4" H 9730 2600 40  0000 L CNN
F 1 "V_OUT" H 9650 2655 30  0000 C CNN
	1    9650 2600
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 J3
U 1 1 55340D0A
P 9650 2300
F 0 "J3" H 9730 2300 40  0000 L CNN
F 1 "U_OUT" H 9650 2355 30  0000 C CNN
	1    9650 2300
	1    0    0    -1  
$EndComp
$Sheet
S 4550 4200 1550 1100
U 5533F799
F0 "Signal Conditioning" 60
F1 "Signal Conditioning.sch" 60
F2 "U_CURR_SENSE" O L 4550 4900 60 
F3 "V_CURR_SENSE" O L 4550 5000 60 
F4 "W_CURR_SENSE" O L 4550 5100 60 
F5 "W_CURR_RAW" I R 6100 5100 60 
F6 "V_CURR_RAW" I R 6100 5000 60 
F7 "U_CURR_RAW" I R 6100 4900 60 
F8 "W_OUT" I R 6100 4600 60 
F9 "V_OUT" I R 6100 4500 60 
F10 "U_OUT" I R 6100 4400 60 
F11 "W_BEMF" O L 4550 4600 60 
F12 "V_BEMF" O L 4550 4500 60 
F13 "U_BEMF" O L 4550 4400 60 
$EndSheet
$Sheet
S 2100 2050 1350 1100
U 5533F41F
F0 "Microcontroller" 60
F1 "Microcontroller.sch" 60
F2 "U_BEMF_SENSE" I L 2100 2800 60 
F3 "W_BEMF_SENSE" I L 2100 3000 60 
F4 "V_CURR_SENSE" I L 2100 2350 60 
F5 "V_BEMF_SENSE" I L 2100 2900 60 
F6 "U_HI" O R 3450 2250 60 
F7 "V_HI" O R 3450 2550 60 
F8 "U_LO" O R 3450 2350 60 
F9 "V_LO" O R 3450 2650 60 
F10 "W_LO" O R 3450 2950 60 
F11 "W_HI" O R 3450 2850 60 
F12 "U_CURR_SENSE" I L 2100 2250 60 
F13 "W_CURR_SENSE" I L 2100 2450 60 
$EndSheet
$Sheet
S 6850 2150 750  900 
U 5533EFF3
F0 "3 Phase Inverter" 60
F1 "3 Phase Inverter.sch" 60
F2 "W_LO" I L 6850 2950 60 
F3 "W_HI" I L 6850 2850 60 
F4 "V_LO" I L 6850 2650 60 
F5 "V_HI" I L 6850 2550 60 
F6 "U_LO" I L 6850 2350 60 
F7 "U_HI" I L 6850 2250 60 
F8 "U_OUT" O R 7600 2300 60 
F9 "V_OUT" O R 7600 2600 60 
F10 "W_OUT" O R 7600 2900 60 
F11 "W_CURR" O R 7600 3000 60 
F12 "V_CURR" O R 7600 2700 60 
F13 "U_CURR" O R 7600 2400 60 
$EndSheet
$Comp
L GND #PWR09
U 1 1 5533EF79
P 5250 1500
F 0 "#PWR09" H 5250 1500 30  0001 C CNN
F 1 "GND" H 5250 1430 30  0001 C CNN
	1    5250 1500
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR010
U 1 1 5533EF2A
P 4550 1000
F 0 "#PWR010" H 4550 950 20  0001 C CNN
F 1 "+BATT" H 4550 1100 30  0000 C CNN
	1    4550 1000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR011
U 1 1 5533EF24
P 5950 1000
F 0 "#PWR011" H 5950 1090 20  0001 C CNN
F 1 "+5V" H 5950 1090 30  0000 C CNN
	1    5950 1000
	1    0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 5533EF14
P 4750 1250
F 0 "C1" H 4800 1350 50  0000 L CNN
F 1 "1uF" H 4800 1150 50  0000 L CNN
	1    4750 1250
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2
U 1 1 5533EF10
P 5750 1250
F 0 "C2" H 5800 1350 50  0000 L CNN
F 1 "1uF" H 5800 1150 50  0000 L CNN
	1    5750 1250
	1    0    0    -1  
$EndComp
$Comp
L 7805 U1
U 1 1 5533EEE8
P 5250 1100
F 0 "U1" H 5400 904 60  0000 C CNN
F 1 "7805" H 5250 1300 60  0000 C CNN
	1    5250 1100
	1    0    0    -1  
$EndComp
$EndSCHEMATC

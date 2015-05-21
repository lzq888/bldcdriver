EESchema Schematic File Version 2  date Wed 20 May 2015 21:52:57 MST
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
Sheet 2 4
Title "BEMF and Current Sense Signal Conditioning"
Date "21 may 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3550 4950 3500 4950
Connection ~ 7150 5200
Wire Wire Line
	7150 5250 7150 5200
Wire Wire Line
	4650 4550 4650 4600
Connection ~ 4050 4550
Wire Wire Line
	4100 4550 4000 4550
Wire Wire Line
	4050 4950 4050 4550
Connection ~ 3000 4950
Wire Wire Line
	3000 5000 3000 4650
Wire Wire Line
	6950 4950 6950 5200
Wire Wire Line
	6950 5200 7350 5200
Wire Wire Line
	4900 2200 5100 2200
Wire Wire Line
	7150 2200 7350 2200
Wire Wire Line
	2650 2200 2450 2200
Wire Wire Line
	6250 2350 6250 2300
Wire Wire Line
	3800 2350 3800 2300
Connection ~ 6250 2850
Wire Wire Line
	6400 2850 6000 2850
Connection ~ 6100 3350
Wire Wire Line
	6250 3350 6000 3350
Connection ~ 8500 2850
Wire Wire Line
	8650 2850 8250 2850
Connection ~ 8350 3350
Wire Wire Line
	8500 3350 8250 3350
Connection ~ 3800 2850
Wire Wire Line
	3950 2850 3550 2850
Connection ~ 3650 3350
Wire Wire Line
	3800 3350 3550 3350
Wire Wire Line
	3650 3400 3650 3350
Wire Wire Line
	3800 2300 3650 2300
Wire Wire Line
	8500 2300 8350 2300
Wire Wire Line
	8350 3400 8350 3350
Wire Wire Line
	6100 3400 6100 3350
Wire Wire Line
	6250 2300 6100 2300
Wire Wire Line
	3550 3350 3550 3300
Wire Wire Line
	3550 2850 3550 2900
Wire Wire Line
	8250 3350 8250 3300
Wire Wire Line
	8250 2850 8250 2900
Wire Wire Line
	6000 3350 6000 3300
Wire Wire Line
	6000 2850 6000 2900
Wire Wire Line
	3000 4450 2850 4450
Wire Wire Line
	8500 2300 8500 2350
Wire Wire Line
	2650 2400 2650 2600
Wire Wire Line
	2650 2600 3650 2600
Wire Wire Line
	3650 2600 3650 2300
Wire Wire Line
	7350 2400 7350 2600
Wire Wire Line
	7350 2600 8350 2600
Wire Wire Line
	8350 2600 8350 2300
Wire Wire Line
	5100 2400 5100 2600
Wire Wire Line
	5100 2600 6100 2600
Wire Wire Line
	6100 2600 6100 2300
Wire Wire Line
	6950 4550 6950 4300
Wire Wire Line
	6950 4300 7350 4300
Wire Wire Line
	3000 5500 3000 5550
Wire Wire Line
	4650 5000 4650 5050
Wire Wire Line
	5100 4550 4600 4550
Connection ~ 4650 4550
Wire Wire Line
	7150 4250 7150 4300
Connection ~ 7150 4300
$Comp
L R R2
U 1 1 555D645C
P 3250 4950
F 0 "R2" V 3350 4950 50  0000 C CNN
F 1 "11k" V 3250 4950 50  0000 C CNN
F 4 "MFR-25FBF52-169K" V 3250 4950 60  0001 C CNN "Mfg P/N"
F 5 "169KXBK-ND" V 3250 4950 60  0001 C CNN "Digikey P/N"
F 6 "603-MFR-25FBF52-169K" V 3250 4950 60  0001 C CNN "Mouser P/N"
	1    3250 4950
	0    -1   1    0   
$EndComp
$Comp
L R R20
U 1 1 555D6392
P 3800 4950
F 0 "R20" V 3900 4950 50  0000 C CNN
F 1 "11k" V 3800 4950 50  0000 C CNN
F 4 "MFR-25FBF52-169K" V 3800 4950 60  0001 C CNN "Mfg P/N"
F 5 "169KXBK-ND" V 3800 4950 60  0001 C CNN "Digikey P/N"
F 6 "603-MFR-25FBF52-169K" V 3800 4950 60  0001 C CNN "Mouser P/N"
	1    3800 4950
	0    -1   1    0   
$EndComp
$Comp
L +BATT #PWR08
U 1 1 555D62EA
P 7150 4250
F 0 "#PWR08" H 7150 4200 20  0001 C CNN
F 1 "+BATT" H 7150 4350 30  0000 C CNN
	1    7150 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 555D62D6
P 7150 5250
F 0 "#PWR09" H 7150 5250 30  0001 C CNN
F 1 "GND" H 7150 5180 30  0001 C CNN
	1    7150 5250
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 555D54C5
P 3000 5250
F 0 "R1" V 3080 5250 50  0000 C CNN
F 1 "11k" V 3000 5250 50  0000 C CNN
F 4 "MFR-25FBF52-7K15" V 3000 5250 60  0001 C CNN "Mfg P/N"
F 5 "7.15KXBK-ND" V 3000 5250 60  0001 C CNN "Digikey P/N"
F 6 "603-MFR-25FBF52-7K15" V 3000 5250 60  0001 C CNN "Mouser P/N"
	1    3000 5250
	-1   0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 555D53D7
P 8500 2600
F 0 "R8" V 8580 2600 50  0000 C CNN
F 1 "169k" V 8500 2600 50  0000 C CNN
F 4 "MFR-25FBF52-169K" V 8500 2600 60  0001 C CNN "Mfg P/N"
F 5 "169KXBK-ND" V 8500 2600 60  0001 C CNN "Digikey P/N"
F 6 "603-MFR-25FBF52-169K" V 8500 2600 60  0001 C CNN "Mouser P/N"
	1    8500 2600
	-1   0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 555D53D4
P 6250 2600
F 0 "R6" V 6330 2600 50  0000 C CNN
F 1 "169k" V 6250 2600 50  0000 C CNN
F 4 "MFR-25FBF52-169K" V 6250 2600 60  0001 C CNN "Mfg P/N"
F 5 "169KXBK-ND" V 6250 2600 60  0001 C CNN "Digikey P/N"
F 6 "603-MFR-25FBF52-169K" V 6250 2600 60  0001 C CNN "Mouser P/N"
	1    6250 2600
	-1   0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 555D5374
P 8500 3100
F 0 "R9" V 8580 3100 50  0000 C CNN
F 1 "11k" V 8500 3100 50  0000 C CNN
F 4 "MFR-25FBF52-11K" V 8500 3100 60  0001 C CNN "Mfg P/N"
F 5 "11.0KXBK-ND" V 8500 3100 60  0001 C CNN "Digikey P/N"
F 6 "603-MFR-25FBF52-11K" V 8500 3100 60  0001 C CNN "Mouser P/N"
	1    8500 3100
	-1   0    0    1   
$EndComp
$Comp
L R R7
U 1 1 555D5371
P 6250 3100
F 0 "R7" V 6330 3100 50  0000 C CNN
F 1 "11k" V 6250 3100 50  0000 C CNN
F 4 "MFR-25FBF52-11K" V 6250 3100 60  0001 C CNN "Mfg P/N"
F 5 "11.0KXBK-ND" V 6250 3100 60  0001 C CNN "Digikey P/N"
F 6 "603-MFR-25FBF52-11K" V 6250 3100 60  0001 C CNN "Mouser P/N"
	1    6250 3100
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 555D5368
P 3800 3100
F 0 "R4" V 3880 3100 50  0000 C CNN
F 1 "11k" V 3800 3100 50  0000 C CNN
F 4 "MFR-25FBF52-11K" V 3800 3100 60  0001 C CNN "Mfg P/N"
F 5 "11.0KXBK-ND" V 3800 3100 60  0001 C CNN "Digikey P/N"
F 6 "603-MFR-25FBF52-11K" V 3800 3100 60  0001 C CNN "Mouser P/N"
	1    3800 3100
	-1   0    0    1   
$EndComp
$Comp
L C C6
U 1 1 555D4FE1
P 6950 4750
F 0 "C6" H 7000 4850 50  0000 L CNN
F 1 "1uF" H 7000 4650 50  0000 L CNN
F 4 "FK24X7R1H105K" H 6950 4750 60  0001 C CNN "Mfg P/N"
F 5 "445-8517-ND" H 6950 4750 60  0001 C CNN "Digikey P/N"
F 6 "810-FK24X7R1H105K" H 6950 4750 60  0001 C CNN "Mouser P/N"
	1    6950 4750
	-1   0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 555D4DC7
P 4650 4800
F 0 "C4" H 4700 4900 50  0000 L CNN
F 1 "2000pF" H 4700 4700 50  0000 L CNN
F 4 "S202M29Z5UN63L6R" H 4650 4800 60  0001 C CNN "Mfg P/N"
F 5 "1268PH-ND" H 4650 4800 60  0001 C CNN "Digikey P/N"
F 6 "594-S202M29Z5UN63L6R" H 4650 4800 60  0001 C CNN "Mouser P/N"
	1    4650 4800
	-1   0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 555D4DC4
P 8250 3100
F 0 "C7" H 8300 3200 50  0000 L CNN
F 1 "2000pF" H 8300 3000 50  0000 L CNN
F 4 "S202M29Z5UN63L6R" H 8250 3100 60  0001 C CNN "Mfg P/N"
F 5 "1268PH-ND" H 8250 3100 60  0001 C CNN "Digikey P/N"
F 6 "594-S202M29Z5UN63L6R" H 8250 3100 60  0001 C CNN "Mouser P/N"
	1    8250 3100
	-1   0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 555D4DC2
P 6000 3100
F 0 "C5" H 6050 3200 50  0000 L CNN
F 1 "2000pF" H 6050 3000 50  0000 L CNN
F 4 "S202M29Z5UN63L6R" H 6000 3100 60  0001 C CNN "Mfg P/N"
F 5 "1268PH-ND" H 6000 3100 60  0001 C CNN "Digikey P/N"
F 6 "594-S202M29Z5UN63L6R" H 6000 3100 60  0001 C CNN "Mouser P/N"
	1    6000 3100
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 554659C8
P 4650 5050
F 0 "#PWR010" H 4650 5050 30  0001 C CNN
F 1 "GND" H 4650 4980 30  0001 C CNN
	1    4650 5050
	-1   0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 554659A9
P 4350 4550
F 0 "R5" V 4430 4550 50  0000 C CNN
F 1 "11k" V 4350 4550 50  0000 C CNN
F 4 "MFR-25FBF52-7K15" V 4350 4550 60  0001 C CNN "Mfg P/N"
F 5 "7.15KXBK-ND" V 4350 4550 60  0001 C CNN "Digikey P/N"
F 6 "603-MFR-25FBF52-7K15" V 4350 4550 60  0001 C CNN "Mouser P/N"
	1    4350 4550
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR011
U 1 1 5546596B
P 3000 5550
F 0 "#PWR011" H 3000 5550 30  0001 C CNN
F 1 "GND" H 3000 5480 30  0001 C CNN
	1    3000 5550
	-1   0    0    -1  
$EndComp
$Comp
L LM2902N U2
U 5 1 554597DA
P 7450 4750
F 0 "U2" H 7500 4950 60  0000 C CNN
F 1 "LM2902N" H 7600 4550 50  0000 C CNN
	5    7450 4750
	1    0    0    -1  
$EndComp
$Comp
L LM2902N U2
U 4 1 554597D2
P 3500 4550
F 0 "U2" H 3550 4750 60  0000 C CNN
F 1 "LM2902N" H 3650 4350 50  0000 C CNN
	4    3500 4550
	1    0    0    -1  
$EndComp
$Comp
L LM2902N U2
U 2 1 554597A3
P 5600 2300
F 0 "U2" H 5650 2500 60  0000 C CNN
F 1 "LM2902N" H 5750 2100 50  0000 C CNN
	2    5600 2300
	1    0    0    -1  
$EndComp
$Comp
L LM2902N U2
U 3 1 554597A0
P 7850 2300
F 0 "U2" H 7900 2500 60  0000 C CNN
F 1 "LM2902N" H 8000 2100 50  0000 C CNN
	3    7850 2300
	1    0    0    -1  
$EndComp
$Comp
L LM2902N U2
U 1 1 5545979A
P 3150 2300
F 0 "U2" H 3200 2500 60  0000 C CNN
F 1 "LM2902N" H 3300 2100 50  0000 C CNN
	1    3150 2300
	1    0    0    -1  
$EndComp
Text HLabel 5100 4550 2    60   Output ~ 0
CURR_SENSE_COND
Text HLabel 2850 4450 0    60   Input ~ 0
CURR_SENSE_RAW
Text HLabel 4900 2200 0    40   Input ~ 0
W_OUT
Text HLabel 7150 2200 0    40   Input ~ 0
V_OUT
Text HLabel 2450 2200 0    40   Input ~ 0
U_OUT
Text HLabel 6400 2850 2    40   Output ~ 0
W_BEMF
Text HLabel 8650 2850 2    40   Output ~ 0
V_BEMF
Text HLabel 3950 2850 2    40   Output ~ 0
U_BEMF
$Comp
L R R3
U 1 1 5533F7C7
P 3800 2600
F 0 "R3" V 3880 2600 50  0000 C CNN
F 1 "169k" V 3800 2600 50  0000 C CNN
F 4 "MFR-25FBF52-169K" V 3800 2600 60  0001 C CNN "Mfg P/N"
F 5 "169KXBK-ND" V 3800 2600 60  0001 C CNN "Digikey P/N"
F 6 "603-MFR-25FBF52-169K" V 3800 2600 60  0001 C CNN "Mouser P/N"
	1    3800 2600
	-1   0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5533F7C6
P 3550 3100
F 0 "C3" H 3600 3200 50  0000 L CNN
F 1 "2000pF" H 3600 3000 50  0000 L CNN
F 4 "S202M29Z5UN63L6R" H 3550 3100 60  0001 C CNN "Mfg P/N"
F 5 "1268PH-ND" H 3550 3100 60  0001 C CNN "Digikey P/N"
F 6 "594-S202M29Z5UN63L6R" H 3550 3100 60  0001 C CNN "Mouser P/N"
	1    3550 3100
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5533F7C4
P 3650 3400
F 0 "#PWR012" H 3650 3400 30  0001 C CNN
F 1 "GND" H 3650 3330 30  0001 C CNN
	1    3650 3400
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5533F7C3
P 8350 3400
F 0 "#PWR013" H 8350 3400 30  0001 C CNN
F 1 "GND" H 8350 3330 30  0001 C CNN
	1    8350 3400
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5533F7BA
P 6100 3400
F 0 "#PWR014" H 6100 3400 30  0001 C CNN
F 1 "GND" H 6100 3330 30  0001 C CNN
	1    6100 3400
	-1   0    0    -1  
$EndComp
$EndSCHEMATC

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
Sheet 4 4
Title "3 Phase Inverter"
Date "14 jun 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C C17
U 1 1 555D4FC4
P 2400 2400
F 0 "C17" H 2450 2500 50  0000 L CNN
F 1 "1uF" H 2450 2300 50  0000 L CNN
F 4 "FK24X7R1H105K" H 2400 2400 60  0001 C CNN "Mfg P/N"
F 5 "445-8517-ND" H 2400 2400 60  0001 C CNN "Digikey P/N"
F 6 "810-FK24X7R1H105K" H 2400 2400 60  0001 C CNN "Mouser P/N"
	1    2400 2400
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 555D4FC0
P 5200 2400
F 0 "C19" H 5250 2500 50  0000 L CNN
F 1 "1uF" H 5250 2300 50  0000 L CNN
F 4 "FK24X7R1H105K" H 5200 2400 60  0001 C CNN "Mfg P/N"
F 5 "445-8517-ND" H 5200 2400 60  0001 C CNN "Digikey P/N"
F 6 "810-FK24X7R1H105K" H 5200 2400 60  0001 C CNN "Mouser P/N"
	1    5200 2400
	1    0    0    -1  
$EndComp
$Comp
L C C21
U 1 1 555D4FBB
P 8150 2400
F 0 "C21" H 8200 2500 50  0000 L CNN
F 1 "1uF" H 8200 2300 50  0000 L CNN
F 4 "FK24X7R1H105K" H 8150 2400 60  0001 C CNN "Mfg P/N"
F 5 "445-8517-ND" H 8150 2400 60  0001 C CNN "Digikey P/N"
F 6 "810-FK24X7R1H105K" H 8150 2400 60  0001 C CNN "Mouser P/N"
	1    8150 2400
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 555D4FB8
P 7350 2550
F 0 "C20" H 7400 2650 50  0000 L CNN
F 1 "1uF" H 7400 2450 50  0000 L CNN
F 4 "FK24X7R1H105K" H 7350 2550 60  0001 C CNN "Mfg P/N"
F 5 "445-8517-ND" H 7350 2550 60  0001 C CNN "Digikey P/N"
F 6 "810-FK24X7R1H105K" H 7350 2550 60  0001 C CNN "Mouser P/N"
	1    7350 2550
	-1   0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 555D4FB5
P 4400 2550
F 0 "C18" H 4450 2650 50  0000 L CNN
F 1 "1uF" H 4450 2450 50  0000 L CNN
F 4 "FK24X7R1H105K" H 4400 2550 60  0001 C CNN "Mfg P/N"
F 5 "445-8517-ND" H 4400 2550 60  0001 C CNN "Digikey P/N"
F 6 "810-FK24X7R1H105K" H 4400 2550 60  0001 C CNN "Mouser P/N"
	1    4400 2550
	-1   0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 555D4FB1
P 1600 2550
F 0 "C16" H 1650 2650 50  0000 L CNN
F 1 "1uF" H 1650 2450 50  0000 L CNN
F 4 "FK24X7R1H105K" H 1600 2550 60  0001 C CNN "Mfg P/N"
F 5 "445-8517-ND" H 1600 2550 60  0001 C CNN "Digikey P/N"
F 6 "810-FK24X7R1H105K" H 1600 2550 60  0001 C CNN "Mouser P/N"
	1    1600 2550
	-1   0    0    -1  
$EndComp
Text HLabel 6050 3800 2    60   Output ~ 0
CURR_SENSE
Wire Wire Line
	6050 3800 5700 3800
Wire Wire Line
	5700 3800 5700 3350
Wire Wire Line
	2900 3350 2900 3700
Wire Wire Line
	2900 3700 8650 3700
Wire Wire Line
	8650 3700 8650 3350
Wire Wire Line
	1600 2800 1700 2800
Wire Wire Line
	1700 2800 1700 2850
Wire Wire Line
	1700 2850 1750 2850
Connection ~ 8000 2150
Wire Wire Line
	7350 2350 7350 2150
Wire Wire Line
	8000 2800 8000 2200
Wire Wire Line
	7350 2150 8650 2150
Connection ~ 8150 2850
Wire Wire Line
	8000 2850 8800 2850
Connection ~ 7500 2150
Connection ~ 8650 2150
Wire Wire Line
	8650 2150 8650 2350
Wire Wire Line
	8350 2550 8300 2550
Wire Wire Line
	7500 3000 7350 3000
Connection ~ 8000 2300
Wire Wire Line
	7550 2300 7500 2300
Wire Wire Line
	7950 2300 8000 2300
Wire Wire Line
	8150 2600 8150 2850
Connection ~ 8650 2850
Connection ~ 7500 2300
Wire Wire Line
	7350 2950 7500 2950
Wire Wire Line
	8650 2750 8650 2950
Wire Wire Line
	8000 2200 8150 2200
Wire Wire Line
	8000 2950 8300 2950
Wire Wire Line
	8300 2950 8300 2550
Wire Wire Line
	7350 2750 7350 2850
Connection ~ 7350 2800
Wire Wire Line
	8350 3150 8300 3150
Wire Wire Line
	8300 3150 8300 3000
Wire Wire Line
	8300 3000 8000 3000
Wire Wire Line
	7500 2800 7500 2150
Wire Wire Line
	4550 2150 4550 2800
Wire Wire Line
	5050 3000 5350 3000
Wire Wire Line
	5350 3000 5350 3150
Wire Wire Line
	5350 3150 5400 3150
Connection ~ 4400 2800
Wire Wire Line
	4400 2750 4400 2850
Wire Wire Line
	5350 2950 5350 2550
Wire Wire Line
	5350 2950 5050 2950
Wire Wire Line
	5200 2200 5050 2200
Wire Wire Line
	5700 2750 5700 2950
Wire Wire Line
	4400 2950 4550 2950
Connection ~ 4550 2300
Connection ~ 5700 2850
Wire Wire Line
	5200 2600 5200 2850
Wire Wire Line
	5000 2300 5050 2300
Wire Wire Line
	4600 2300 4550 2300
Connection ~ 5050 2300
Wire Wire Line
	4550 3000 4400 3000
Wire Wire Line
	5350 2550 5400 2550
Wire Wire Line
	5700 2350 5700 2150
Connection ~ 5700 2150
Connection ~ 4550 2150
Wire Wire Line
	5050 2850 5850 2850
Connection ~ 5200 2850
Wire Wire Line
	5700 2150 4400 2150
Wire Wire Line
	5050 2200 5050 2800
Wire Wire Line
	4400 2150 4400 2350
Connection ~ 5050 2150
Connection ~ 2250 2150
Wire Wire Line
	1600 2350 1600 2150
Wire Wire Line
	2250 2800 2250 2200
Wire Wire Line
	1600 2150 2900 2150
Connection ~ 2400 2850
Wire Wire Line
	2250 2850 3050 2850
Connection ~ 1750 2150
Connection ~ 2900 2150
Wire Wire Line
	2900 2150 2900 2350
Wire Wire Line
	2600 2550 2550 2550
Wire Wire Line
	1750 3000 1600 3000
Connection ~ 2250 2300
Wire Wire Line
	1800 2300 1750 2300
Wire Wire Line
	2200 2300 2250 2300
Wire Wire Line
	2400 2600 2400 2850
Connection ~ 2900 2850
Connection ~ 1750 2300
Wire Wire Line
	1600 2950 1750 2950
Wire Wire Line
	5700 4300 5700 4350
Wire Wire Line
	2900 2750 2900 2950
Wire Wire Line
	2250 2200 2400 2200
Wire Wire Line
	2250 2950 2550 2950
Wire Wire Line
	2550 2950 2550 2550
Wire Wire Line
	1600 2750 1600 2850
Connection ~ 1600 2800
Wire Wire Line
	2600 3150 2550 3150
Wire Wire Line
	2550 3150 2550 3000
Wire Wire Line
	2550 3000 2250 3000
Wire Wire Line
	1750 2150 1750 2800
Wire Wire Line
	7500 2850 7450 2850
Wire Wire Line
	7450 2850 7450 2800
Wire Wire Line
	7450 2800 7350 2800
Wire Wire Line
	4550 2850 4500 2850
Wire Wire Line
	4500 2850 4500 2800
Wire Wire Line
	4500 2800 4400 2800
Connection ~ 5700 3700
$Comp
L NTD5806N Q7
U 1 1 553C27F8
P 8550 3150
F 0 "Q7" H 8800 3300 60  0000 R CNN
F 1 "NTD5806N" H 9200 3100 60  0000 R CNN
F 2 "DPAK" H 8760 2870 60  0001 C CNN
F 3 "datasheets/NTD5806N.PDF" H 9235 2795 60  0001 C CNN
F 4 "NTD5806NT4G" H 8550 3150 60  0001 C CNN "Mfg P/N"
F 5 "NTD5806NT4GOSCT-ND" H 8550 3150 60  0001 C CNN "Digikey P/N"
F 6 "863-NTD5806NT4G" H 8550 3150 60  0001 C CNN "Mouser P/N"
	1    8550 3150
	1    0    0    -1  
$EndComp
$Comp
L NTD5806N Q6
U 1 1 553C27F5
P 8550 2550
F 0 "Q6" H 8800 2700 60  0000 R CNN
F 1 "NTD5806N" H 9200 2500 60  0000 R CNN
F 2 "DPAK" H 8760 2270 60  0001 C CNN
F 3 "datasheets/NTD5806N.PDF" H 9235 2195 60  0001 C CNN
F 4 "NTD5806NT4G" H 8550 2550 60  0001 C CNN "Mfg P/N"
F 5 "NTD5806NT4GOSCT-ND" H 8550 2550 60  0001 C CNN "Digikey P/N"
F 6 "863-NTD5806NT4G" H 8550 2550 60  0001 C CNN "Mouser P/N"
	1    8550 2550
	1    0    0    -1  
$EndComp
$Comp
L NTD5806N Q5
U 1 1 553C27F4
P 5600 3150
F 0 "Q5" H 5850 3300 60  0000 R CNN
F 1 "NTD5806N" H 6250 3100 60  0000 R CNN
F 2 "DPAK" H 5810 2870 60  0001 C CNN
F 3 "datasheets/NTD5806N.PDF" H 6285 2795 60  0001 C CNN
F 4 "NTD5806NT4G" H 5600 3150 60  0001 C CNN "Mfg P/N"
F 5 "NTD5806NT4GOSCT-ND" H 5600 3150 60  0001 C CNN "Digikey P/N"
F 6 "863-NTD5806NT4G" H 5600 3150 60  0001 C CNN "Mouser P/N"
	1    5600 3150
	1    0    0    -1  
$EndComp
$Comp
L NTD5806N Q4
U 1 1 553C27F1
P 5600 2550
F 0 "Q4" H 5850 2700 60  0000 R CNN
F 1 "NTD5806N" H 6250 2500 60  0000 R CNN
F 2 "DPAK" H 5810 2270 60  0001 C CNN
F 3 "datasheets/NTD5806N.PDF" H 6285 2195 60  0001 C CNN
F 4 "NTD5806NT4G" H 5600 2550 60  0001 C CNN "Mfg P/N"
F 5 "NTD5806NT4GOSCT-ND" H 5600 2550 60  0001 C CNN "Digikey P/N"
F 6 "863-NTD5806NT4G" H 5600 2550 60  0001 C CNN "Mouser P/N"
	1    5600 2550
	1    0    0    -1  
$EndComp
$Comp
L NTD5806N Q3
U 1 1 553C27EE
P 2800 3150
F 0 "Q3" H 3050 3300 60  0000 R CNN
F 1 "NTD5806N" H 3450 3100 60  0000 R CNN
F 2 "DPAK" H 3010 2870 60  0001 C CNN
F 3 "datasheets/NTD5806N.PDF" H 3485 2795 60  0001 C CNN
F 4 "NTD5806NT4G" H 2800 3150 60  0001 C CNN "Mfg P/N"
F 5 "NTD5806NT4GOSCT-ND" H 2800 3150 60  0001 C CNN "Digikey P/N"
F 6 "863-NTD5806NT4G" H 2800 3150 60  0001 C CNN "Mouser P/N"
	1    2800 3150
	1    0    0    -1  
$EndComp
$Comp
L DIODE D3
U 1 1 553C253E
P 7750 2300
F 0 "D3" H 7750 2400 40  0000 C CNN
F 1 "1N4936" H 7750 2200 40  0000 C CNN
F 2 "DO-41" H 7750 2300 60  0001 C CNN
F 3 "datasheets/1N4936.pdf" H 7750 2300 60  0001 C CNN
F 4 "1N4936" H 7750 2300 60  0001 C CNN "Mfg P/N"
F 5 "1N4936FSCT-ND" H 7750 2300 60  0001 C CNN "Digikey P/N"
F 6 "512-1N4936" H 7750 2300 60  0001 C CNN "Mouser P/N"
	1    7750 2300
	1    0    0    -1  
$EndComp
$Comp
L DIODE D2
U 1 1 553C253C
P 4800 2300
F 0 "D2" H 4800 2400 40  0000 C CNN
F 1 "1N4936" H 4800 2200 40  0000 C CNN
F 2 "DO-41" H 4800 2300 60  0001 C CNN
F 3 "datasheets/1N4936.pdf" H 4800 2300 60  0001 C CNN
F 4 "1N4936" H 4800 2300 60  0001 C CNN "Mfg P/N"
F 5 "1N4936FSCT-ND" H 4800 2300 60  0001 C CNN "Digikey P/N"
F 6 "512-1N4936" H 4800 2300 60  0001 C CNN "Mouser P/N"
	1    4800 2300
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR034
U 1 1 553C100A
P 8000 2150
F 0 "#PWR034" H 8000 2100 20  0001 C CNN
F 1 "+BATT" H 8000 2250 30  0000 C CNN
	1    8000 2150
	1    0    0    -1  
$EndComp
Text HLabel 7350 3000 0    40   Input ~ 0
W_LO
Text HLabel 7350 2950 0    40   Input ~ 0
W_HI
$Comp
L GND #PWR035
U 1 1 553C1005
P 7350 2850
F 0 "#PWR035" H 7350 2850 30  0001 C CNN
F 1 "GND" H 7350 2780 30  0001 C CNN
	1    7350 2850
	1    0    0    -1  
$EndComp
Text HLabel 8800 2850 2    40   Output ~ 0
W_OUT
$Comp
L IRS2301S U7
U 1 1 553C1004
P 7750 2900
F 0 "U7" H 7650 3100 60  0000 C CNN
F 1 "LM5109" H 7750 2700 60  0000 C CNN
F 2 "SOIC8" H 7550 3250 60  0001 C CNN
F 3 "datasheets/lm5109.pdf" H 8000 3350 60  0001 C CNN
F 4 "LM5109MA/NOPB" H 7750 3450 60  0001 C CNN "Mfg P/N"
F 5 "LM5109MA/NOPB-ND" H 7850 3550 60  0001 C CNN "Digikey P/N"
F 6 "926-LM5109MA/NOPB" H 7850 3650 60  0001 C CNN "Mouser P/N"
	1    7750 2900
	1    0    0    -1  
$EndComp
$Comp
L IRS2301S U6
U 1 1 553C0FFD
P 4800 2900
F 0 "U6" H 4700 3100 60  0000 C CNN
F 1 "LM5109" H 4800 2700 60  0000 C CNN
F 2 "SOIC8" H 4600 3250 60  0001 C CNN
F 3 "datasheets/lm5109.pdf" H 5050 3350 60  0001 C CNN
F 4 "LM5109MA/NOPB" H 4800 3450 60  0001 C CNN "Mfg P/N"
F 5 "LM5109MA/NOPB-ND" H 4900 3550 60  0001 C CNN "Digikey P/N"
F 6 "926-LM5109MA/NOPB" H 4900 3650 60  0001 C CNN "Mouser P/N"
	1    4800 2900
	1    0    0    -1  
$EndComp
Text HLabel 5850 2850 2    40   Output ~ 0
V_OUT
$Comp
L GND #PWR036
U 1 1 553C0FFC
P 4400 2850
F 0 "#PWR036" H 4400 2850 30  0001 C CNN
F 1 "GND" H 4400 2780 30  0001 C CNN
	1    4400 2850
	1    0    0    -1  
$EndComp
Text HLabel 4400 2950 0    40   Input ~ 0
V_HI
Text HLabel 4400 3000 0    40   Input ~ 0
V_LO
$Comp
L +BATT #PWR037
U 1 1 553C0FF7
P 5050 2150
F 0 "#PWR037" H 5050 2100 20  0001 C CNN
F 1 "+BATT" H 5050 2250 30  0000 C CNN
	1    5050 2150
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR038
U 1 1 553C0FD4
P 2250 2150
F 0 "#PWR038" H 2250 2100 20  0001 C CNN
F 1 "+BATT" H 2250 2250 30  0000 C CNN
	1    2250 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 553C0F30
P 5700 4350
F 0 "#PWR039" H 5700 4350 30  0001 C CNN
F 1 "GND" H 5700 4280 30  0001 C CNN
	1    5700 4350
	1    0    0    -1  
$EndComp
$Comp
L NTD5806N Q2
U 1 1 55340B88
P 2800 2550
F 0 "Q2" H 3050 2700 60  0000 R CNN
F 1 "NTD5806N" H 3450 2500 60  0000 R CNN
F 2 "DPAK" H 3010 2270 60  0001 C CNN
F 3 "datasheets/NTD5806N.PDF" H 3485 2195 60  0001 C CNN
F 4 "NTD5806NT4G" H 2800 2550 60  0001 C CNN "Mfg P/N"
F 5 "NTD5806NT4GOSCT-ND" H 2800 2550 60  0001 C CNN "Digikey P/N"
F 6 "863-NTD5806NT4G" H 2800 2550 60  0001 C CNN "Mouser P/N"
	1    2800 2550
	1    0    0    -1  
$EndComp
Text HLabel 1600 3000 0    40   Input ~ 0
U_LO
Text HLabel 1600 2950 0    40   Input ~ 0
U_HI
$Comp
L GND #PWR040
U 1 1 5533F2AB
P 1600 2850
F 0 "#PWR040" H 1600 2850 30  0001 C CNN
F 1 "GND" H 1600 2780 30  0001 C CNN
	1    1600 2850
	1    0    0    -1  
$EndComp
Text HLabel 3050 2850 2    40   Output ~ 0
U_OUT
$Comp
L IRS2301S U5
U 1 1 5533F2AE
P 2000 2900
F 0 "U5" H 1900 3100 60  0000 C CNN
F 1 "LM5109" H 2000 2700 60  0000 C CNN
F 2 "SOIC8" H 1800 3250 60  0001 C CNN
F 3 "datasheets/lm5109.pdf" H 2250 3350 60  0001 C CNN
F 4 "LM5109MA/NOPB" H 2000 3450 60  0001 C CNN "Mfg P/N"
F 5 "LM5109MA/NOPB-ND" H 2100 3550 60  0001 C CNN "Digikey P/N"
F 6 "926-LM5109MA/NOPB" H 2100 3650 60  0001 C CNN "Mouser P/N"
	1    2000 2900
	1    0    0    -1  
$EndComp
$Comp
L DIODE D1
U 1 1 5533F2AD
P 2000 2300
F 0 "D1" H 2000 2400 40  0000 C CNN
F 1 "1N4936" H 2000 2200 40  0000 C CNN
F 2 "DO-41" H 2000 2300 60  0001 C CNN
F 3 "datasheets/1N4936.pdf" H 2000 2300 60  0001 C CNN
F 4 "1N4936" H 2000 2300 60  0001 C CNN "Mfg P/N"
F 5 "1N4936FSCT-ND" H 2000 2300 60  0001 C CNN "Digikey P/N"
F 6 "512-1N4936" H 2000 2300 60  0001 C CNN "Mouser P/N"
	1    2000 2300
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 5533F2A2
P 5700 4050
F 0 "R18" V 5780 4050 50  0000 C CNN
F 1 "0.01" V 5700 4050 50  0000 C CNN
F 4 "MPR5JB10L0" V 5700 4050 60  0001 C CNN "Mfg P/N"
F 5 "MPR5JB10L0-ND" V 5700 4050 60  0001 C CNN "Digikey P/N"
	1    5700 4050
	1    0    0    -1  
$EndComp
$EndSCHEMATC

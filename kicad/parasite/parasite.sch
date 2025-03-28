EESchema Schematic File Version 4
LIBS:parasite-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "parasite"
Date "2021-02-05"
Rev "1.1.0"
Comp ""
Comment1 "rbaron.net"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L dk_RF-Transceiver-Modules:ESP32-WROOM-32 MOD1
U 1 1 600B059D
P 2450 1350
F 0 "MOD1" H 1600 -775 60  0000 C CNN
F 1 "ESP32-WROOM-32" H 1650 -900 60  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2650 1550 60  0001 L CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 2650 1650 60  0001 L CNN
F 4 "1904-1010-1-ND" H 2650 1750 60  0001 L CNN "Digi-Key_PN"
F 5 "ESP32-WROOM-32" H 2650 1850 60  0001 L CNN "MPN"
F 6 "RF/IF and RFID" H 2650 1950 60  0001 L CNN "Category"
F 7 "RF Transceiver Modules" H 2650 2050 60  0001 L CNN "Family"
F 8 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 2650 2150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/espressif-systems/ESP32-WROOM-32/1904-1010-1-ND/8544305" H 2650 2250 60  0001 L CNN "DK_Detail_Page"
F 10 "SMD MODULE, ESP32-D0WDQ6, 32MBIT" H 2650 2350 60  0001 L CNN "Description"
F 11 "Espressif Systems" H 2650 2450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2650 2550 60  0001 L CNN "Status"
	1    2450 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2350 1550 2350
$Comp
L Device:C_Small C2
U 1 1 600C0E3F
P 3675 3475
F 0 "C2" H 3767 3521 50  0000 L CNN
F 1 "10u" H 3767 3430 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3675 3475 50  0001 C CNN
F 3 "~" H 3675 3475 50  0001 C CNN
	1    3675 3475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 600C554F
P 3675 3575
F 0 "#PWR0102" H 3675 3325 50  0001 C CNN
F 1 "GND" H 3680 3402 50  0000 C CNN
F 2 "" H 3675 3575 50  0001 C CNN
F 3 "" H 3675 3575 50  0001 C CNN
	1    3675 3575
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 600C5D97
P 2600 3600
F 0 "#PWR0103" H 2600 3350 50  0001 C CNN
F 1 "GND" H 2605 3427 50  0000 C CNN
F 2 "" H 2600 3600 50  0001 C CNN
F 3 "" H 2600 3600 50  0001 C CNN
	1    2600 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3450 2600 3450
Connection ~ 2650 3450
Wire Wire Line
	2650 3450 2750 3450
Wire Wire Line
	2600 3600 2600 3450
Connection ~ 2600 3450
Wire Wire Line
	2600 3450 2650 3450
$Comp
L Device:R_Small_US R2
U 1 1 600C897C
P 1325 1450
F 0 "R2" V 1530 1450 50  0000 C CNN
F 1 "10k" V 1439 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1255 1450 50  0001 C CNN
F 3 "~" H 1325 1450 50  0001 C CNN
	1    1325 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1425 1450 1625 1450
Wire Wire Line
	1625 1275 1625 1450
Connection ~ 1625 1450
Wire Wire Line
	1625 1450 1950 1450
Wire Wire Line
	1125 1375 1125 1450
Wire Wire Line
	1225 1450 1125 1450
Wire Wire Line
	1950 1550 825  1550
Wire Wire Line
	825  1550 825  1525
Text Label 3725 2250 0    50   ~ 0
TX
Text Label 3725 2350 0    50   ~ 0
RX
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 600CD6DE
P 4250 4650
F 0 "J1" H 4250 4275 50  0000 R CNN
F 1 "Conn_01x02_Female" H 4275 4200 50  0000 R CNN
F 2 "Connector_JST:JST_PH_S2B-PH-K_1x02_P2.00mm_Horizontal" H 4250 4650 50  0001 C CNN
F 3 "~" H 4250 4650 50  0001 C CNN
	1    4250 4650
	-1   0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0107
U 1 1 600D5D8A
P 4925 6225
F 0 "#PWR0107" H 4925 6075 50  0001 C CNN
F 1 "+BATT" H 4940 6398 50  0000 C CNN
F 2 "" H 4925 6225 50  0001 C CNN
F 3 "" H 4925 6225 50  0001 C CNN
	1    4925 6225
	1    0    0    -1  
$EndComp
$Comp
L ht7333-a:HT7333-A L1
U 1 1 600BCB7B
P 5325 6425
F 0 "L1" H 5375 6928 60  0000 C CNN
F 1 "HT7333-A" H 5375 6822 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3_Handsoldering" H 5450 5675 60  0000 C CNN
F 3 "" H 5325 6425 60  0000 C CNN
	1    5325 6425
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 6225 6000 6275
$Comp
L power:GND #PWR0109
U 1 1 600D67FB
P 5475 6800
F 0 "#PWR0109" H 5475 6550 50  0001 C CNN
F 1 "GND" H 5480 6627 50  0000 C CNN
F 2 "" H 5475 6800 50  0001 C CNN
F 3 "" H 5475 6800 50  0001 C CNN
	1    5475 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 600D587C
P 5825 6375
F 0 "C4" H 5917 6421 50  0000 L CNN
F 1 "10u" H 5917 6330 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5825 6375 50  0001 C CNN
F 3 "~" H 5825 6375 50  0001 C CNN
	1    5825 6375
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 600D4FBF
P 4925 6525
F 0 "C3" H 5017 6571 50  0000 L CNN
F 1 "10u" H 5017 6480 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4925 6525 50  0001 C CNN
F 3 "~" H 4925 6525 50  0001 C CNN
	1    4925 6525
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2250 3950 2250
Wire Wire Line
	4325 2350 4325 2250
Wire Wire Line
	3350 2350 4325 2350
Text Label 1550 2350 0    50   ~ 0
PWM
Text Label 825  4400 0    50   ~ 0
PWM
$Comp
L Device:R_Small_US R1
U 1 1 600E0E7A
P 1275 4400
F 0 "R1" V 1480 4400 50  0000 C CNN
F 1 "10k" V 1389 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1205 4400 50  0001 C CNN
F 3 "~" H 1275 4400 50  0001 C CNN
	1    1275 4400
	0    -1   -1   0   
$EndComp
Text Label 2025 4625 0    50   ~ 0
Csen+
Wire Wire Line
	2025 4825 2025 4925
$Comp
L power:GND #PWR0110
U 1 1 600E4C05
P 2025 4925
F 0 "#PWR0110" H 2025 4675 50  0001 C CNN
F 1 "GND" H 2030 4752 50  0000 C CNN
F 2 "" H 2025 4925 50  0001 C CNN
F 3 "" H 2025 4925 50  0001 C CNN
	1    2025 4925
	1    0    0    -1  
$EndComp
Text Label 2025 4825 0    50   ~ 0
Csen-
$Comp
L Diode:LL4148 D1
U 1 1 600E601E
P 2475 4400
F 0 "D1" H 2475 4184 50  0000 C CNN
F 1 "LL4148" H 2475 4275 50  0000 C CNN
F 2 "Diode_SMD:D_MiniMELF" H 2475 4225 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 2475 4400 50  0001 C CNN
	1    2475 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 600E6E5B
P 2850 4600
F 0 "C1" H 2942 4646 50  0000 L CNN
F 1 "1n" H 2942 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2850 4600 50  0001 C CNN
F 3 "~" H 2850 4600 50  0001 C CNN
	1    2850 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 600E7750
P 3275 4600
F 0 "R6" H 3343 4646 50  0000 L CNN
F 1 "1M" H 3343 4555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3205 4600 50  0001 C CNN
F 3 "~" H 3275 4600 50  0001 C CNN
	1    3275 4600
	1    0    0    -1  
$EndComp
Connection ~ 2025 4400
Wire Wire Line
	2625 4400 2850 4400
Wire Wire Line
	3275 4400 3275 4500
Wire Wire Line
	2850 4500 2850 4400
Connection ~ 2850 4400
Wire Wire Line
	2850 4400 3275 4400
Wire Wire Line
	3275 4400 3600 4400
Connection ~ 3275 4400
Text Label 3600 4400 0    50   ~ 0
Vsen_out
Wire Wire Line
	3350 1450 3700 1450
Text Label 3700 1450 0    50   ~ 0
Vsen_out
Wire Wire Line
	2850 4700 2850 4850
Wire Wire Line
	3275 4850 3275 4700
Wire Wire Line
	3275 4850 3050 4850
Wire Wire Line
	3050 4850 3050 4950
Connection ~ 3050 4850
Wire Wire Line
	3050 4850 2850 4850
$Comp
L power:GND #PWR0111
U 1 1 600EF4B2
P 3050 4950
F 0 "#PWR0111" H 3050 4700 50  0001 C CNN
F 1 "GND" H 3055 4777 50  0000 C CNN
F 2 "" H 3050 4950 50  0001 C CNN
F 3 "" H 3050 4950 50  0001 C CNN
	1    3050 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2025 4400 2025 4625
Wire Wire Line
	1375 4400 1700 4400
Wire Wire Line
	825  4400 1175 4400
$Comp
L Device:R_Small_US R4
U 1 1 600FFF47
P 1150 6450
F 0 "R4" H 1218 6496 50  0000 L CNN
F 1 "10k" H 1218 6405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1080 6450 50  0001 C CNN
F 3 "~" H 1150 6450 50  0001 C CNN
	1    1150 6450
	0    1    1    0   
$EndComp
Text Label 875  6350 0    50   ~ 0
PWM
Wire Wire Line
	1450 6350 1250 6350
Wire Wire Line
	1050 6350 875  6350
$Comp
L power:GND #PWR0114
U 1 1 60104242
P 1750 6625
F 0 "#PWR0114" H 1750 6375 50  0001 C CNN
F 1 "GND" H 1755 6452 50  0000 C CNN
F 2 "" H 1750 6625 50  0001 C CNN
F 3 "" H 1750 6625 50  0001 C CNN
	1    1750 6625
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 601057D9
P 1750 5950
F 0 "R3" H 1818 5996 50  0000 L CNN
F 1 "1k" H 1818 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1680 5950 50  0001 C CNN
F 3 "~" H 1750 5950 50  0001 C CNN
	1    1750 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5700 1750 5850
$Comp
L Device:R_Small_US R5
U 1 1 601113E2
P 2550 5800
F 0 "R5" H 2618 5846 50  0000 L CNN
F 1 "1k" H 2618 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2480 5800 50  0001 C CNN
F 3 "~" H 2550 5800 50  0001 C CNN
	1    2550 5800
	1    0    0    -1  
$EndComp
Text Label 2550 5625 0    50   ~ 0
Csen+
Wire Wire Line
	2550 5625 2550 5700
Wire Notes Line
	4050 4025 4050 5300
Wire Notes Line
	4050 5300 675  5300
Wire Notes Line
	675  5300 675  4025
Wire Notes Line
	675  4025 4050 4025
Wire Notes Line
	675  5450 4050 5450
Wire Notes Line
	4050 5450 4050 7675
Wire Notes Line
	4050 7675 675  7675
Wire Notes Line
	675  7675 675  5450
Wire Notes Line
	4150 4025 4150 5300
Wire Notes Line
	4150 5450 4150 7675
Wire Notes Line
	4150 7675 6925 7675
Wire Notes Line
	6925 7675 6925 5450
Wire Notes Line
	6925 5450 4150 5450
Wire Wire Line
	2025 4400 2325 4400
Wire Wire Line
	1700 4325 1700 4400
Connection ~ 1700 4400
Wire Wire Line
	1700 4400 2025 4400
Wire Wire Line
	2850 4325 2850 4400
Connection ~ 4925 6425
Wire Wire Line
	5825 6275 6000 6275
Connection ~ 5825 6275
Wire Wire Line
	4925 6625 4925 6725
Wire Wire Line
	4925 6725 5475 6725
Wire Wire Line
	5475 6725 5825 6725
Wire Wire Line
	5825 6725 5825 6475
Connection ~ 5475 6725
Wire Wire Line
	5475 6800 5475 6725
Wire Wire Line
	2550 6050 2550 5900
Wire Wire Line
	1750 6550 1750 6625
$Comp
L Device:C_Small C6
U 1 1 600D105B
P 1150 6150
F 0 "C6" H 1242 6196 50  0000 L CNN
F 1 "100p" H 1242 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1150 6150 50  0001 C CNN
F 3 "~" H 1150 6150 50  0001 C CNN
	1    1150 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 6150 1250 6350
Wire Wire Line
	1050 6150 1050 6350
Connection ~ 1050 6350
Wire Wire Line
	1050 6350 1050 6450
Wire Wire Line
	1250 6450 1250 6350
Connection ~ 1250 6350
NoConn ~ 3350 1650
NoConn ~ 3350 1750
NoConn ~ 3350 1850
NoConn ~ 3350 1950
NoConn ~ 3350 2050
NoConn ~ 3350 2150
NoConn ~ 3350 2550
NoConn ~ 3350 2650
NoConn ~ 3350 2750
NoConn ~ 3350 2850
NoConn ~ 1950 3250
NoConn ~ 1950 3150
NoConn ~ 1950 3050
NoConn ~ 1950 2950
NoConn ~ 1950 2850
NoConn ~ 1950 2750
NoConn ~ 1950 2650
NoConn ~ 1950 2550
NoConn ~ 1950 2250
NoConn ~ 1950 2150
NoConn ~ 1950 2050
NoConn ~ 1950 1950
NoConn ~ 1950 1850
NoConn ~ 1950 1750
NoConn ~ 1950 1650
Wire Wire Line
	2450 3450 2550 3450
Connection ~ 2550 3450
$Comp
L power:+3.3V #PWR0104
U 1 1 601121A9
P 2650 1025
F 0 "#PWR0104" H 2650 875 50  0001 C CNN
F 1 "+3.3V" H 2665 1198 50  0000 C CNN
F 2 "" H 2650 1025 50  0001 C CNN
F 3 "" H 2650 1025 50  0001 C CNN
	1    2650 1025
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0117
U 1 1 60112953
P 1125 1375
F 0 "#PWR0117" H 1125 1225 50  0001 C CNN
F 1 "+3.3V" H 1140 1548 50  0000 C CNN
F 2 "" H 1125 1375 50  0001 C CNN
F 3 "" H 1125 1375 50  0001 C CNN
	1    1125 1375
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0112
U 1 1 60115261
P 6000 6225
F 0 "#PWR0112" H 6000 6075 50  0001 C CNN
F 1 "+3.3V" H 6015 6398 50  0000 C CNN
F 2 "" H 6000 6225 50  0001 C CNN
F 3 "" H 6000 6225 50  0001 C CNN
	1    6000 6225
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1025 2650 1250
Wire Wire Line
	4925 6225 4925 6425
$Comp
L power:+3.3V #PWR0101
U 1 1 60113F6B
P 3675 3375
F 0 "#PWR0101" H 3675 3225 50  0001 C CNN
F 1 "+3.3V" H 3690 3548 50  0000 C CNN
F 2 "" H 3675 3375 50  0001 C CNN
F 3 "" H 3675 3375 50  0001 C CNN
	1    3675 3375
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 6014264C
P 1700 4325
F 0 "TP3" H 1758 4443 50  0000 L CNN
F 1 "Csen+" H 1758 4352 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 1900 4325 50  0001 C CNN
F 3 "~" H 1900 4325 50  0001 C CNN
	1    1700 4325
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 60145A9D
P 2850 4325
F 0 "TP4" H 2908 4443 50  0000 L CNN
F 1 "Vsen_out" H 2908 4352 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3050 4325 50  0001 C CNN
F 3 "~" H 3050 4325 50  0001 C CNN
	1    2850 4325
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 600C7664
P 1625 1275
F 0 "TP2" H 1683 1393 50  0000 L CNN
F 1 "EN" H 1683 1302 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 1825 1275 50  0001 C CNN
F 3 "~" H 1825 1275 50  0001 C CNN
	1    1625 1275
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6011B4E9
P 6425 6225
F 0 "#FLG0101" H 6425 6300 50  0001 C CNN
F 1 "PWR_FLAG" H 6425 6398 50  0000 C CNN
F 2 "" H 6425 6225 50  0001 C CNN
F 3 "~" H 6425 6225 50  0001 C CNN
	1    6425 6225
	1    0    0    -1  
$EndComp
Wire Wire Line
	6425 6225 6175 6225
Connection ~ 6000 6225
$Comp
L Connector:TestPoint TP5
U 1 1 600DE18D
P 3950 2250
F 0 "TP5" H 4008 2368 50  0000 L CNN
F 1 "TX" H 4008 2277 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4150 2250 50  0001 C CNN
F 3 "~" H 4150 2250 50  0001 C CNN
	1    3950 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 600DEAED
P 4325 2250
F 0 "TP6" H 4383 2368 50  0000 L CNN
F 1 "RX" H 4383 2277 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4525 2250 50  0001 C CNN
F 3 "~" H 4525 2250 50  0001 C CNN
	1    4325 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 600CC1D9
P 825 1525
F 0 "TP1" H 883 1643 50  0000 L CNN
F 1 "IO0" H 883 1552 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 1025 1525 50  0001 C CNN
F 3 "~" H 1025 1525 50  0001 C CNN
	1    825  1525
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small Cpara1
U 1 1 6016579E
P 2025 4725
F 0 "Cpara1" H 2117 4771 50  0000 L CNN
F 1 "5p" H 2117 4680 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2025 4725 50  0001 C CNN
F 3 "~" H 2025 4725 50  0001 C CNN
	1    2025 4725
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q1
U 1 1 60188253
P 1650 6350
F 0 "Q1" H 1841 6396 50  0000 L CNN
F 1 "MMBT3904" H 1841 6305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1850 6275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 1650 6350 50  0001 L CNN
	1    1650 6350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q2
U 1 1 601897A7
P 2450 6250
F 0 "Q2" H 2641 6296 50  0000 L CNN
F 1 "MMBT3904" H 2641 6205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2650 6175 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2450 6250 50  0001 L CNN
	1    2450 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 6050 1750 6100
$Comp
L power:GND #PWR0116
U 1 1 6019BDBF
P 2550 6600
F 0 "#PWR0116" H 2550 6350 50  0001 C CNN
F 1 "GND" H 2555 6427 50  0000 C CNN
F 2 "" H 2550 6600 50  0001 C CNN
F 3 "" H 2550 6600 50  0001 C CNN
	1    2550 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 6450 2550 6600
Wire Wire Line
	1750 6100 2250 6100
Wire Wire Line
	2250 6100 2250 6250
Connection ~ 1750 6100
Wire Wire Line
	1750 6100 1750 6150
$Comp
L Connector:TestPoint TP8
U 1 1 601A891E
P 6175 5850
F 0 "TP8" H 6233 5968 50  0000 L CNN
F 1 "3.3" H 6233 5877 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6375 5850 50  0001 C CNN
F 3 "~" H 6375 5850 50  0001 C CNN
	1    6175 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6175 5850 6175 6225
Connection ~ 6175 6225
Wire Wire Line
	6175 6225 6000 6225
$Comp
L Connector:TestPoint TP9
U 1 1 601AB8DD
P 6275 6725
F 0 "TP9" H 6333 6843 50  0000 L CNN
F 1 "GND" H 6333 6752 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6475 6725 50  0001 C CNN
F 3 "~" H 6475 6725 50  0001 C CNN
	1    6275 6725
	1    0    0    -1  
$EndComp
Wire Wire Line
	5825 6725 6275 6725
Connection ~ 5825 6725
Wire Wire Line
	3350 1550 3700 1550
Text Label 3700 1550 0    50   ~ 0
Vbat_mon
$Comp
L Device:R_Small_US R7
U 1 1 600E2554
P 8025 6100
F 0 "R7" V 8230 6100 50  0000 C CNN
F 1 "470k" V 8139 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7955 6100 50  0001 C CNN
F 3 "~" H 8025 6100 50  0001 C CNN
	1    8025 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 600E34F7
P 8625 6100
F 0 "R8" V 8830 6100 50  0000 C CNN
F 1 "470k" V 8739 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8555 6100 50  0001 C CNN
F 3 "~" H 8625 6100 50  0001 C CNN
	1    8625 6100
	0    -1   -1   0   
$EndComp
$Comp
L power:+BATT #PWR0118
U 1 1 600E3936
P 7700 6100
F 0 "#PWR0118" H 7700 5950 50  0001 C CNN
F 1 "+BATT" H 7715 6273 50  0000 C CNN
F 2 "" H 7700 6100 50  0001 C CNN
F 3 "" H 7700 6100 50  0001 C CNN
	1    7700 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 6100 7925 6100
Wire Wire Line
	8125 6100 8325 6100
$Comp
L power:GND #PWR0119
U 1 1 600E96D3
P 8875 6100
F 0 "#PWR0119" H 8875 5850 50  0001 C CNN
F 1 "GND" H 8880 5927 50  0000 C CNN
F 2 "" H 8875 6100 50  0001 C CNN
F 3 "" H 8875 6100 50  0001 C CNN
	1    8875 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8725 6100 8875 6100
Wire Wire Line
	8325 6100 8325 5775
Connection ~ 8325 6100
Wire Wire Line
	8325 6100 8525 6100
Text Label 8325 5775 0    50   ~ 0
Vbat_mon
Wire Notes Line
	6975 6475 6975 5450
Wire Notes Line
	6975 5450 9750 5450
Wire Notes Line
	9750 5450 9750 6475
Wire Notes Line
	9750 6475 6975 6475
Text Label 1550 2450 0    50   ~ 0
Disch
Wire Wire Line
	1950 2450 1550 2450
Text Label 1750 5700 0    50   ~ 0
Disch
$Comp
L parasite-rescue:BS-7-dk_Battery-Holders-Clips-Contacts BAT1
U 1 1 6020F3E7
P 4825 4700
F 0 "BAT1" V 5112 4700 60  0000 C CNN
F 1 "BS-7" V 5006 4700 60  0000 C CNN
F 2 "Battery:BatteryHolder_Keystone_3008_1x2450" H 5025 4900 60  0001 L CNN
F 3 "http://www.memoryprotectiondevices.com/datasheets/BS-7-datasheet.pdf" V 5025 5000 60  0001 L CNN
F 4 "BS-7-ND" H 5025 5100 60  0001 L CNN "Digi-Key_PN"
F 5 "BS-7" H 5025 5200 60  0001 L CNN "MPN"
F 6 "Battery Products" H 5025 5300 60  0001 L CNN "Category"
F 7 "Battery Holders, Clips, Contacts" H 5025 5400 60  0001 L CNN "Family"
F 8 "http://www.memoryprotectiondevices.com/datasheets/BS-7-datasheet.pdf" H 5025 5500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/mpd-memory-protection-devices/BS-7/BS-7-ND/389447" H 5025 5600 60  0001 L CNN "DK_Detail_Page"
F 10 "BATTERY HOLDER COIN 20MM PC PIN" H 5025 5700 60  0001 L CNN "Description"
F 11 "MPD (Memory Protection Devices)" H 5025 5800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5025 5900 60  0001 L CNN "Status"
	1    4825 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 60210317
P 5000 4450
F 0 "R9" V 5205 4450 50  0000 C CNN
F 1 "1k" V 5114 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4930 4450 50  0001 C CNN
F 3 "~" H 5000 4450 50  0001 C CNN
	1    5000 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4825 4500 4825 4450
Wire Wire Line
	4825 4450 4900 4450
$Comp
L Device:C_Small C5
U 1 1 60229425
P 5250 4675
F 0 "C5" H 5342 4721 50  0000 L CNN
F 1 "0.1u" H 5342 4630 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5250 4675 50  0001 C CNN
F 3 "~" H 5250 4675 50  0001 C CNN
	1    5250 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4575 5250 4450
Wire Wire Line
	5100 4450 5250 4450
Wire Wire Line
	5250 4775 5250 4900
Wire Wire Line
	4825 4900 5250 4900
$Comp
L parasite:XB3303A U1
U 1 1 602715EA
P 6225 4650
F 0 "U1" H 6200 4185 50  0000 C CNN
F 1 "XB3303A" H 6200 4276 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6225 4650 50  0001 C CNN
F 3 "" H 6225 4650 50  0001 C CNN
	1    6225 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 4900 5600 4900
Wire Wire Line
	5600 4900 5600 4800
Wire Wire Line
	5600 4800 5775 4800
Connection ~ 5250 4900
Connection ~ 4825 4450
$Comp
L power:+BATT #PWR0105
U 1 1 60281B05
P 4825 4275
F 0 "#PWR0105" H 4825 4125 50  0001 C CNN
F 1 "+BATT" H 4840 4448 50  0000 C CNN
F 2 "" H 4825 4275 50  0001 C CNN
F 3 "" H 4825 4275 50  0001 C CNN
	1    4825 4275
	1    0    0    -1  
$EndComp
Wire Wire Line
	6725 4650 6850 4650
Wire Wire Line
	6850 4650 6850 4775
$Comp
L power:GND #PWR0106
U 1 1 60285B36
P 6850 4775
F 0 "#PWR0106" H 6850 4525 50  0001 C CNN
F 1 "GND" H 6855 4602 50  0000 C CNN
F 2 "" H 6850 4775 50  0001 C CNN
F 3 "" H 6850 4775 50  0001 C CNN
	1    6850 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4650 4450 4450
Wire Wire Line
	4450 4450 4825 4450
Wire Wire Line
	4450 4750 4450 4900
Wire Wire Line
	4450 4900 4825 4900
Connection ~ 4825 4900
Wire Wire Line
	5250 4450 5775 4450
Connection ~ 5250 4450
Wire Wire Line
	4825 4275 4825 4450
Wire Notes Line
	4150 4025 7100 4025
Wire Notes Line
	7100 4025 7100 5300
Wire Notes Line
	4150 5300 7100 5300
$EndSCHEMATC

EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 1
Title "USB PD Power Supply"
Date "2020-03-22"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP32-WROOM-32 U2
U 1 1 5E77E77E
P 1500 6500
F 0 "U2" H 1050 7850 50  0000 C CNN
F 1 "ESP32-WROOM-32" V 950 5550 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 1500 5000 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 1200 6550 50  0001 C CNN
	1    1500 6500
	1    0    0    -1  
$EndComp
Text Label 3350 6700 0    50   ~ 0
I2C_SDA
Text Label 3350 6800 0    50   ~ 0
I2C_SCL
Text Notes 3800 6800 0    50   ~ 0
add test header
Wire Wire Line
	2100 6700 2750 6700
Wire Wire Line
	2100 6800 3050 6800
$Comp
L Device:R_US R9
U 1 1 5E787840
P 2750 6500
F 0 "R9" H 2818 6546 50  0000 L CNN
F 1 "4.7k" H 2818 6455 50  0000 L CNN
F 2 "" V 2790 6490 50  0001 C CNN
F 3 "~" H 2750 6500 50  0001 C CNN
	1    2750 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R10
U 1 1 5E788698
P 3050 6500
F 0 "R10" H 3118 6546 50  0000 L CNN
F 1 "4.7k" H 3118 6455 50  0000 L CNN
F 2 "" V 3090 6490 50  0001 C CNN
F 3 "~" H 3050 6500 50  0001 C CNN
	1    3050 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6650 2750 6700
Connection ~ 2750 6700
Wire Wire Line
	2750 6700 3350 6700
Wire Wire Line
	3050 6650 3050 6800
Connection ~ 3050 6800
Wire Wire Line
	3050 6800 3350 6800
$Comp
L power:+2V7 #PWR0101
U 1 1 5E78B272
P 2750 6350
F 0 "#PWR0101" H 2750 6200 50  0001 C CNN
F 1 "+2V7" H 2765 6523 50  0000 C CNN
F 2 "" H 2750 6350 50  0001 C CNN
F 3 "" H 2750 6350 50  0001 C CNN
	1    2750 6350
	1    0    0    -1  
$EndComp
$Comp
L power:+2V7 #PWR0102
U 1 1 5E78BB5A
P 3050 6350
F 0 "#PWR0102" H 3050 6200 50  0001 C CNN
F 1 "+2V7" H 3065 6523 50  0000 C CNN
F 2 "" H 3050 6350 50  0001 C CNN
F 3 "" H 3050 6350 50  0001 C CNN
	1    3050 6350
	1    0    0    -1  
$EndComp
$Comp
L STUSB4500QTR:STUSB4500QTR U1
U 1 1 5E77DEB8
P 5200 3000
F 0 "U1" H 4550 4250 50  0000 C CNN
F 1 "STUSB4500QTR" H 5650 4250 50  0000 C CNN
F 2 "QFN50P400X400X90-25N" H 5200 3000 50  0001 L BNN
F 3 "STMicroelectronics" H 5200 3000 50  0001 L BNN
F 4 "2" H 5200 3000 50  0001 L BNN "Field4"
F 5 "IPC-7351B" H 5200 3000 50  0001 L BNN "Field5"
	1    5200 3000
	1    0    0    -1  
$EndComp
$Comp
L USB4085-GF-A_REVA:USB4085-GF-A_REVA J1
U 1 1 5E77EC99
P 1350 3100
F 0 "J1" H 1000 4000 50  0000 C CNN
F 1 "USB4085-GF-A_REVA" V 900 2650 50  0000 C CNN
F 2 "GCT_USB4085-GF-A_REVA" H 1350 3100 50  0001 L BNN
F 3 "Global Connector Technology" H 1350 3100 50  0001 L BNN
F 4 "A" H 1350 3100 50  0001 L BNN "Field4"
F 5 "Manufacturer Recommendations" H 1350 3100 50  0001 L BNN "Field5"
	1    1350 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5E78B22A
P 1500 4000
F 0 "#PWR0103" H 1500 3750 50  0001 C CNN
F 1 "GND" H 1505 3827 50  0000 C CNN
F 2 "" H 1500 4000 50  0001 C CNN
F 3 "" H 1500 4000 50  0001 C CNN
	1    1500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3800 1500 3800
Wire Wire Line
	1500 3800 1500 3900
Wire Wire Line
	1450 3900 1500 3900
Connection ~ 1500 3900
Wire Wire Line
	1500 3900 1500 4000
Wire Wire Line
	1450 2800 1500 2800
Wire Wire Line
	1500 2800 1500 2900
Wire Wire Line
	1500 2900 1450 2900
Wire Wire Line
	1450 3050 1500 3050
Wire Wire Line
	1500 3050 1500 3150
Wire Wire Line
	1500 3150 1450 3150
Wire Wire Line
	1500 2900 1650 2900
Connection ~ 1500 2900
Wire Wire Line
	1500 3150 1650 3150
Connection ~ 1500 3150
Text Label 1650 2900 0    50   ~ 0
USB_DN
Text Label 1650 3150 0    50   ~ 0
USB_DP
Wire Wire Line
	1450 2400 1550 2400
Wire Wire Line
	1550 2400 1550 2300
Wire Wire Line
	1450 2300 1550 2300
Connection ~ 1550 2300
$Comp
L Connector:TestPoint TP1
U 1 1 5E796E86
P 1550 1000
F 0 "TP1" H 1500 1250 50  0000 L CNN
F 1 "TestPoint" H 1608 1027 50  0001 L CNN
F 2 "" H 1750 1000 50  0001 C CNN
F 3 "~" H 1750 1000 50  0001 C CNN
	1    1550 1000
	1    0    0    -1  
$EndComp
$Comp
L STL6P3LLH6:STL6P3LLH6 Q1
U 1 1 5E798FEC
P 6550 1100
F 0 "Q1" V 6885 1100 50  0000 C CNN
F 1 "STL6P3LLH6" V 6794 1100 50  0000 C CNN
F 2 "TRANS_STL6P3LLH6" H 6550 1100 50  0001 L BNN
F 3 "3" H 6550 1100 50  0001 L BNN
F 4 "1.0mm" H 6550 1100 50  0001 L BNN "Field4"
F 5 "ST Microelectronics" H 6550 1100 50  0001 L BNN "Field5"
F 6 "Manufacturer Recommendations" H 6550 1100 50  0001 L BNN "Field6"
	1    6550 1100
	0    1    -1   0   
$EndComp
$Comp
L STL6P3LLH6:STL6P3LLH6 Q2
U 1 1 5E79FDFD
P 7450 1100
F 0 "Q2" V 7785 1100 50  0000 C CNN
F 1 "STL6P3LLH6" V 7694 1100 50  0000 C CNN
F 2 "TRANS_STL6P3LLH6" H 7450 1100 50  0001 L BNN
F 3 "3" H 7450 1100 50  0001 L BNN
F 4 "1.0mm" H 7450 1100 50  0001 L BNN "Field4"
F 5 "ST Microelectronics" H 7450 1100 50  0001 L BNN "Field5"
F 6 "Manufacturer Recommendations" H 7450 1100 50  0001 L BNN "Field6"
	1    7450 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 1900 6650 1900
$Comp
L Device:R_US R1
U 1 1 5E7A363D
P 6650 1700
F 0 "R1" H 6718 1746 50  0000 L CNN
F 1 "22k" H 6718 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6690 1690 50  0001 C CNN
F 3 "~" H 6650 1700 50  0001 C CNN
	1    6650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1900 6650 1850
Wire Wire Line
	6650 1200 6650 1500
Wire Wire Line
	7350 1200 7350 1500
Wire Wire Line
	7350 1500 6850 1500
Connection ~ 6650 1500
Wire Wire Line
	6650 1500 6650 1550
Wire Wire Line
	1550 1000 1550 2300
Wire Wire Line
	1550 1000 1900 1000
Connection ~ 1550 1000
$Comp
L Device:R_US R2
U 1 1 5E7AC667
P 6850 1250
F 0 "R2" H 6918 1296 50  0000 L CNN
F 1 "100k" H 6918 1205 50  0000 L CNN
F 2 "" V 6890 1240 50  0001 C CNN
F 3 "~" H 6850 1250 50  0001 C CNN
	1    6850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1400 6850 1500
Connection ~ 6850 1500
Wire Wire Line
	6850 1500 6650 1500
Wire Wire Line
	6750 1000 6850 1000
Wire Wire Line
	6850 1100 6850 1000
Connection ~ 6850 1000
Wire Wire Line
	6850 1000 7150 1000
$Comp
L Device:C C1
U 1 1 5E7AEADE
P 7900 1200
F 0 "C1" H 8015 1246 50  0000 L CNN
F 1 "C" H 8015 1155 50  0000 L CNN
F 2 "" H 7938 1050 50  0001 C CNN
F 3 "~" H 7900 1200 50  0001 C CNN
	1    7900 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 5E7AF010
P 7650 1500
F 0 "R3" V 7445 1500 50  0000 C CNN
F 1 "100" V 7536 1500 50  0000 C CNN
F 2 "" V 7690 1490 50  0001 C CNN
F 3 "~" H 7650 1500 50  0001 C CNN
	1    7650 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 1500 7500 1500
Connection ~ 7350 1500
Wire Wire Line
	7800 1500 7900 1500
Wire Wire Line
	7900 1500 7900 1350
Wire Wire Line
	7650 1000 7900 1000
Wire Wire Line
	7900 1050 7900 1000
Connection ~ 7900 1000
Wire Wire Line
	7900 1000 8250 1000
$Comp
L Device:R_US R4
U 1 1 5E7B2AC2
P 8250 1250
F 0 "R4" H 8182 1204 50  0000 R CNN
F 1 "1k" H 8182 1295 50  0000 R CNN
F 2 "" V 8290 1240 50  0001 C CNN
F 3 "~" H 8250 1250 50  0001 C CNN
	1    8250 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	8250 1100 8250 1000
Connection ~ 8250 1000
Wire Wire Line
	8250 1400 8250 2000
Wire Wire Line
	8250 2000 6100 2000
$Comp
L Connector:TestPoint TP2
U 1 1 5E7B8804
P 8850 950
F 0 "TP2" H 8800 1200 50  0000 L CNN
F 1 "TestPoint" H 8908 977 50  0001 L CNN
F 2 "" H 9050 950 50  0001 C CNN
F 3 "~" H 9050 950 50  0001 C CNN
	1    8850 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1000 8850 1000
Wire Wire Line
	8850 950  8850 1000
Connection ~ 8850 1000
Wire Wire Line
	8850 1000 9200 1000
$Comp
L power:GND #PWR0105
U 1 1 5E7BE8FE
P 6200 4200
F 0 "#PWR0105" H 6200 3950 50  0001 C CNN
F 1 "GND" H 6205 4027 50  0000 C CNN
F 2 "" H 6200 4200 50  0001 C CNN
F 3 "" H 6200 4200 50  0001 C CNN
	1    6200 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4000 6200 4000
Wire Wire Line
	6200 4000 6200 4100
Wire Wire Line
	6100 4100 6200 4100
Connection ~ 6200 4100
Wire Wire Line
	6200 4100 6200 4200
NoConn ~ 6100 3300
NoConn ~ 6100 3100
NoConn ~ 6100 2900
NoConn ~ 6100 2800
NoConn ~ 6100 2700
Wire Wire Line
	6100 2100 7150 2100
Wire Wire Line
	7150 2100 7150 1000
Connection ~ 7150 1000
Wire Wire Line
	7150 1000 7250 1000
$Comp
L Device:R_US R5
U 1 1 5E7CD815
P 4000 4300
F 0 "R5" H 4068 4346 50  0000 L CNN
F 1 "100k" H 4068 4255 50  0000 L CNN
F 2 "" V 4040 4290 50  0001 C CNN
F 3 "~" H 4000 4300 50  0001 C CNN
	1    4000 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4150 4000 4100
Wire Wire Line
	4000 4000 4300 4000
Wire Wire Line
	4300 4100 4000 4100
Connection ~ 4000 4100
Wire Wire Line
	4000 4100 4000 4000
$Comp
L power:GND #PWR0106
U 1 1 5E7D0DAF
P 4000 4500
F 0 "#PWR0106" H 4000 4250 50  0001 C CNN
F 1 "GND" H 4005 4327 50  0000 C CNN
F 2 "" H 4000 4500 50  0001 C CNN
F 3 "" H 4000 4500 50  0001 C CNN
	1    4000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4500 4000 4450
Text Label 3800 2900 0    50   ~ 0
I2C_SDA
Text Label 3800 2800 0    50   ~ 0
I2C_SCL
Wire Wire Line
	3800 2800 4300 2800
Wire Wire Line
	3800 2900 4300 2900
Text Label 3800 3000 0    50   ~ 0
STUSB_ALERT
Text Label 2400 7600 0    50   ~ 0
STUSB_ALERT
Wire Wire Line
	2400 7600 2100 7600
$Comp
L Device:D_Schottky D1
U 1 1 5E7DB0F2
P 2700 1250
F 0 "D1" V 2700 1171 50  0000 R CNN
F 1 "D_Schottky" V 2655 1171 50  0001 R CNN
F 2 "" H 2700 1250 50  0001 C CNN
F 3 "~" H 2700 1250 50  0001 C CNN
	1    2700 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 1100 2700 1000
Connection ~ 2700 1000
Wire Wire Line
	2700 1000 3150 1000
$Comp
L Device:C C2
U 1 1 5E7DDB36
P 2700 1650
F 0 "C2" H 2815 1696 50  0000 L CNN
F 1 "1uF" H 2815 1605 50  0000 L CNN
F 2 "" H 2738 1500 50  0001 C CNN
F 3 "~" H 2700 1650 50  0001 C CNN
	1    2700 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1400 2700 1450
Wire Wire Line
	2700 1450 3150 1450
Connection ~ 2700 1450
Wire Wire Line
	2700 1450 2700 1500
$Comp
L Device:R_US R6
U 1 1 5E7E1CA0
P 3150 1200
F 0 "R6" H 3218 1246 50  0000 L CNN
F 1 "470" H 3218 1155 50  0000 L CNN
F 2 "" V 3190 1190 50  0001 C CNN
F 3 "~" H 3150 1200 50  0001 C CNN
	1    3150 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 5E7E254E
P 3150 1700
F 0 "R7" H 3218 1746 50  0000 L CNN
F 1 "1k" H 3218 1655 50  0000 L CNN
F 2 "" V 3190 1690 50  0001 C CNN
F 3 "~" H 3150 1700 50  0001 C CNN
	1    3150 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1050 3150 1000
Connection ~ 3150 1000
Wire Wire Line
	3150 1000 6350 1000
Wire Wire Line
	3150 1350 3150 1450
Wire Wire Line
	3150 1450 3150 1550
Connection ~ 3150 1450
Wire Wire Line
	2700 1800 2700 1950
$Comp
L power:GND #PWR0107
U 1 1 5E7EAD26
P 2700 1950
F 0 "#PWR0107" H 2700 1700 50  0001 C CNN
F 1 "GND" H 2705 1777 50  0000 C CNN
F 2 "" H 2700 1950 50  0001 C CNN
F 3 "" H 2700 1950 50  0001 C CNN
	1    2700 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2050 4300 2050
Wire Wire Line
	3150 1850 3150 2050
$Comp
L Device:R_US R8
U 1 1 5E7F03E8
P 3550 2400
F 0 "R8" H 3618 2446 50  0000 L CNN
F 1 "100k" H 3618 2355 50  0000 L CNN
F 2 "" V 3590 2390 50  0001 C CNN
F 3 "~" H 3550 2400 50  0001 C CNN
	1    3550 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5E7F38F1
P 3550 2600
F 0 "#PWR0108" H 3550 2350 50  0001 C CNN
F 1 "GND" H 3555 2427 50  0000 C CNN
F 2 "" H 3550 2600 50  0001 C CNN
F 3 "" H 3550 2600 50  0001 C CNN
	1    3550 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2600 3550 2550
Text Label 3800 2200 0    50   ~ 0
STUSB_RESET
Text Label 2400 7500 0    50   ~ 0
STUSB_RESET
Wire Wire Line
	2400 7500 2100 7500
Wire Wire Line
	3550 2250 3550 2200
Wire Wire Line
	3550 2200 4300 2200
$Comp
L Device:C C3
U 1 1 5E7FEF05
P 6800 2700
F 0 "C3" H 6915 2746 50  0000 L CNN
F 1 "1uF" H 6915 2655 50  0000 L CNN
F 2 "" H 6838 2550 50  0001 C CNN
F 3 "~" H 6800 2700 50  0001 C CNN
	1    6800 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5E7FFA7D
P 7200 2700
F 0 "C4" H 7315 2746 50  0000 L CNN
F 1 "1uF" H 7315 2655 50  0000 L CNN
F 2 "" H 7238 2550 50  0001 C CNN
F 3 "~" H 7200 2700 50  0001 C CNN
	1    7200 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5E7FFFB9
P 7600 2700
F 0 "C5" H 7715 2746 50  0000 L CNN
F 1 "1uF" H 7715 2655 50  0000 L CNN
F 2 "" H 7638 2550 50  0001 C CNN
F 3 "~" H 7600 2700 50  0001 C CNN
	1    7600 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2500 6800 2500
Wire Wire Line
	6800 2500 6800 2550
Wire Wire Line
	6100 2400 7200 2400
Wire Wire Line
	7200 2400 7200 2550
Wire Wire Line
	7150 2100 7600 2100
Wire Wire Line
	7600 2100 7600 2550
Connection ~ 7150 2100
Wire Wire Line
	6100 3900 6200 3900
Wire Wire Line
	6200 3900 6200 4000
Connection ~ 6200 4000
$Comp
L power:GND #PWR0109
U 1 1 5E80BF71
P 6800 2900
F 0 "#PWR0109" H 6800 2650 50  0001 C CNN
F 1 "GND" H 6805 2727 50  0000 C CNN
F 2 "" H 6800 2900 50  0001 C CNN
F 3 "" H 6800 2900 50  0001 C CNN
	1    6800 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5E80C446
P 7200 2900
F 0 "#PWR0110" H 7200 2650 50  0001 C CNN
F 1 "GND" H 7205 2727 50  0000 C CNN
F 2 "" H 7200 2900 50  0001 C CNN
F 3 "" H 7200 2900 50  0001 C CNN
	1    7200 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5E80C79E
P 7600 2900
F 0 "#PWR0111" H 7600 2650 50  0001 C CNN
F 1 "GND" H 7605 2727 50  0000 C CNN
F 2 "" H 7600 2900 50  0001 C CNN
F 3 "" H 7600 2900 50  0001 C CNN
	1    7600 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2900 7600 2850
Wire Wire Line
	7200 2850 7200 2900
Wire Wire Line
	6800 2900 6800 2850
$Comp
L Device:R_US R11
U 1 1 5E8243D2
P 3050 2800
F 0 "R11" H 3118 2846 50  0000 L CNN
F 1 "100k" H 3118 2755 50  0000 L CNN
F 2 "" V 3090 2790 50  0001 C CNN
F 3 "~" H 3050 2800 50  0001 C CNN
	1    3050 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3000 3050 2950
Wire Wire Line
	3050 3000 4300 3000
$Comp
L power:+3.3V #PWR0104
U 1 1 5E828156
P 3050 2600
F 0 "#PWR0104" H 3050 2450 50  0001 C CNN
F 1 "+3.3V" H 3065 2773 50  0000 C CNN
F 2 "" H 3050 2600 50  0001 C CNN
F 3 "" H 3050 2600 50  0001 C CNN
	1    3050 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2600 3050 2650
Wire Wire Line
	1450 3400 3550 3400
Wire Wire Line
	3900 3800 4300 3800
Wire Wire Line
	1700 3700 1700 3500
Wire Wire Line
	1700 3500 1450 3500
Wire Wire Line
	1700 3700 3550 3700
Wire Wire Line
	3600 3800 3550 3800
Wire Wire Line
	3550 3800 3550 3700
Connection ~ 3550 3700
Wire Wire Line
	3550 3700 4300 3700
Wire Wire Line
	3900 3500 4300 3500
Wire Wire Line
	3600 3500 3550 3500
Wire Wire Line
	3550 3500 3550 3400
Connection ~ 3550 3400
Wire Wire Line
	3550 3400 4300 3400
$Comp
L Jumper:SolderJumper_2_Bridged JP1
U 1 1 5E83FC5E
P 3750 3500
F 0 "JP1" H 3750 3400 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3750 3614 50  0001 C CNN
F 2 "" H 3750 3500 50  0001 C CNN
F 3 "~" H 3750 3500 50  0001 C CNN
	1    3750 3500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP2
U 1 1 5E840044
P 3750 3800
F 0 "JP2" H 3750 3700 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3750 3914 50  0001 C CNN
F 2 "" H 3750 3800 50  0001 C CNN
F 3 "~" H 3750 3800 50  0001 C CNN
	1    3750 3800
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:CP2102N-A01-GQFN24 U3
U 1 1 5E78F2C6
P 6450 6950
F 0 "U3" H 6050 7750 50  0000 C CNN
F 1 "CP2102N" H 6750 7750 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 6900 6150 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2102n-datasheet.pdf" H 6500 5900 50  0001 C CNN
	1    6450 6950
	1    0    0    -1  
$EndComp
Text Label 5350 7350 0    50   ~ 0
USB_DP
Text Label 5350 7450 0    50   ~ 0
USB_DN
Wire Wire Line
	5350 7450 5850 7450
Wire Wire Line
	5350 7350 5850 7350
$Comp
L power:GND #PWR0112
U 1 1 5E7978C1
P 6500 7950
F 0 "#PWR0112" H 6500 7700 50  0001 C CNN
F 1 "GND" H 6505 7777 50  0000 C CNN
F 2 "" H 6500 7950 50  0001 C CNN
F 3 "" H 6500 7950 50  0001 C CNN
	1    6500 7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 7950 6500 7850
Wire Wire Line
	6500 7850 6550 7850
Wire Wire Line
	6450 7850 6500 7850
Connection ~ 6500 7850
$Comp
L power:+3.3V #PWR0113
U 1 1 5E782AC4
P 1500 5050
F 0 "#PWR0113" H 1500 4900 50  0001 C CNN
F 1 "+3.3V" H 1515 5223 50  0000 C CNN
F 2 "" H 1500 5050 50  0001 C CNN
F 3 "" H 1500 5050 50  0001 C CNN
	1    1500 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5050 1500 5100
Text Label 8450 1000 0    50   ~ 0
vSINK
$Comp
L power:VBUS #PWR?
U 1 1 5E78E73B
P 1900 950
F 0 "#PWR?" H 1900 800 50  0001 C CNN
F 1 "VBUS" H 1900 1150 50  0000 C CNN
F 2 "" H 1900 950 50  0001 C CNN
F 3 "" H 1900 950 50  0001 C CNN
	1    1900 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 950  1900 1000
Connection ~ 1900 1000
Wire Wire Line
	1900 1000 2700 1000
$Comp
L IR38062MTRPBF:IR38062MTRPBF U4
U 1 1 5E7944E7
P 11100 2950
F 0 "U4" H 11100 4417 50  0000 C CNN
F 1 "IR38062MTRPBF" H 11100 4326 50  0000 C CNN
F 2 "PQFN50P700X500X100-26N" H 11100 2950 50  0001 L BNN
F 3 "Infineon" H 11100 2950 50  0001 L BNN
	1    11100 2950
	1    0    0    -1  
$EndComp
$Comp
L IR38062MTRPBF:IR38062MTRPBF U5
U 1 1 5E797DCB
P 11100 6950
F 0 "U5" H 11100 8417 50  0000 C CNN
F 1 "IR38062MTRPBF" H 11100 8326 50  0000 C CNN
F 2 "PQFN50P700X500X100-26N" H 11100 6950 50  0001 L BNN
F 3 "Infineon" H 11100 6950 50  0001 L BNN
	1    11100 6950
	1    0    0    -1  
$EndComp
$EndSCHEMATC

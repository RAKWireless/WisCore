# Hardware

## Wis Board

* The following figure is the RAK WisProduct EVK. It's a perfect compatibility with Arduino development board, and there are WisCore Board & WisAp Board

	+ WisCore: 16MB flash & 32MB DDR2, include "Mother Board", "Micro-Computer Board", "Audio Sub Board", support Amazon AVS

	+ WisAp: 8MB flash & 32MB DDR2, include "Mother Board", "Micro-Computer Board",just as a router

* Mother Board

![](https://github.com/RAKWireless/wiscore/raw/master/img/inf_reg_pic8.png)

* Micro-Computer Board

![](https://github.com/RAKWireless/wiscore/raw/master/img/inf_reg_pic9.png)

* Audio Sub Board

![](https://github.com/RAKWireless/wiscore/raw/master/img/inf_reg_pic6.png/)






### **Key Features**
<TBD>

![](https://github.com/RAKWireless/wiscore/raw/master/img/key_features.png)




### Technology Specs
<TBD>

#### Wis Board

* **Wis Board-Front**

![](https://github.com/RAKWireless/wiscore/raw/master/img/inf_reg_pic2.png)

* **Wis Board-Back**

![](https://github.com/RAKWireless/wiscore/raw/master/img/inf_reg_pic3.png)


* **Silk Priting**

| Name | Silk printing |  Description |
| :------: | :----: | :-----------: |
| MT7628 Development Board | \ | Integrated hardware and software |
| Micro-USB	| CON1 	| Debug(URT0) |
| Button 	| SW1 	| GPIO38(recover)			  |
| WAN 	 | CON5 	| Wide Area Network Interface（RJ45) |
| LAN 	 | CON4 	| Local Area Network Interface（RJ45）|
| Power	 | CON3 	| 9V-12 V			  |
| SD Card | J2 	| External Storage card			  |
| USB Host | CON2 	| USB Disk			  |
| WIFI 	 | \ 	| WIFI Antenna			  |


* **Pin No**

| Pin No | Name | Description |
| ------ | ---- | ----------- |
| 1 	 | TXD1 	| UART1 |
| 2 	 | RXD1 	| UART1	|
| 3 	 | LINK2 	| 10/100M PHY Port#2 activity LED,JTAG_TMS |
| 4 	 | \    	| \ |
| 5 	 | LINK3 	| 10/100M PHY Port#2 activity LED,JTAG_CLK			  |
| 6 	 | PWM2 	| PWM			  |
| 7 	 | PWM3 	| PWM		  |
| 8 	 | GPIO0 	| GPIO			  |
| 9 	 | LINK4 	| 10/100M PHY Port#2 activity LED,JTAG_TRST_N			  |
| 10 	 | \ 	| \			  |
| 11	 | SPI_CS 	| SPI chip select 1			  |
| 12 	 | MOSI 	| SPI master input/slave output			  |
| 13 	 | MISO 	| SPI master output/slave input			  |
| 14 	 | SPI_CLK 	| SPI clock			  |
| 15 	 | GND 	| GND			  |
| 16 	 | GND 	| GND		  |
| 17	 | GND 	| GND			  |
| 18 	 | GND 	| GND			  |
| 19 	 | 2_RST 	| CIe device reset		  |
| 20 	 | 7_GPIO7 	| Reference clock output			  |
| 21 	 | 7_RST 	| 10/100 PHY Port#3 TXOP3		  |
| 22 	 | 7_NINT 	| 10/100 PHY Port#2 RXIP2		  |
| 23	 | 2_NINT	| 0/100 PHY Port#1 RXIN1		  |
| 24 	 | I2C_SDA 	| I2C data			  |
| 25 	 | I2C_CLK	| I2C clock		  |
| 26 	 | I2S_CLK 	| I2S clock		  |
| 27 	 | I2S_WS	| I2S word select			  |
| 28	 | I2S_SDO	| I2S data output			  |
| 29 	 | I2S_SDI 	| I2S data inpu			  |
| 30 	 | 3v3 	| VDD33			  |
| 31 	 | 3v3 	| VDD33			  |



* **Uart Introduction**

There are Uart0, Uart1 and Uart2 in the board.
Uart0 is Debug Port, and you can use it through Set Jumpers, or use it directly.
You can also realize [Introduce uart](https://github.com/RAKWireless/WisCore/wiki/Introduce-uart) for more information.


* **Set Jumpers**

1. Short ( RX1---C_TX , TX1---C_RX ), USB <--->( RX1 TX1), uart function（TXD1，RXD1）

2. Short ( C_RX---TX0 , C_TX---RX0 ), USB <--->( RX0 TX0), debug function

![](https://github.com/RAKWireless/wiscore/raw/master/img/inf_reg_pic4.png)



### Resources
<TBD>

[The more detailed introduction in doc:](https://github.com/RAKWireless/wiscore/raw/master/Doc/)

* [MT7628_datasheet.pdf](https://github.com/RAKWireless/wiscore/blob/master/Doc/MT7628_datasheet.pdf)
* [Audio_Sub_Board_1V1_3D.pdf](https://github.com/RAKWireless/wiscore/blob/master/Doc/Audio_Sub_Board_1V1_3D.pdf)
* [Audio_Sub_Board_1V1_Bitmap.pdf](https://github.com/RAKWireless/wiscore/blob/master/Doc/Audio_Sub_Board_1V1_Bitmap.pdf)
* [Audio_Sub_Board_1V1_SCH.pdf](https://github.com/RAKWireless/wiscore/blob/master/Doc/Audio_Sub_Board_1V1_SCH.pdf)
* [Mother_Board_1V1_3D.pdf](https://github.com/RAKWireless/wiscore/blob/master/Doc/Mother_Board_1V1_3D.pdf)
* [Mother_Board_1V1_Bitmap.pdf](https://github.com/RAKWireless/wiscore/blob/master/Doc/Mother_Board_1V1_Bitmap.pdf)
* [Mother_Board_1V1_SCH.pdf](https://github.com/RAKWireless/wiscore/blob/master/Doc/Mother_Board_1V1_SCH.pdf)

# Software

+ The SDK is for WisCore hardware development platform base on OpenWrt system. Software features include three product series: WisAp, WisAvs(Amazon Alexa Avs function), WisGw(wiscore gateway)

+ If you are the first compiler SDK you need to choose to use the product type and then set the compiler environment. so that the next time you recompile the same types of products when there is no need to in the environmental settings unless you want to switch to other types of products

## WisCoreSDK
<div align=center><img src="https://github.com/RAKWireless/WisCore/blob/master/img/openwrtlogo.png?raw=true" width="50%" height="50%"></div>

WisCore runs a open-source distribution of embedded Linux called [OpenWrt](https://github.com/RAKWireless/WisCore-SDK) on WisCore Board Module.

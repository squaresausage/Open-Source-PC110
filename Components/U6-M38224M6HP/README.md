
## Datasheets ##
[M38224M6HP](M3822.pdf)

[PCA4738H0-80A](PCA4738H.pdf)

## Part Number Details ##
```
M38223E4HP
|||||||||
|||||||++--> 80P6Q-A
||||||+----> 16384 Byte ROM Size 
|||||+-----> EPROM / OTP Version
||||+------> 512 Bytes RAM
++++-------> Mitsubishi 3822 Group MCU
```
There are at least two variations of the PC110.    In a small number of systems U6 is M38223E4HP OTP/EPROM version of the chip,  in the rest it is the M38223M4-192HP MASKROM version.  It is unclear if these represent early production models or perhaps supply chain related.    This is a helpful detail as it is unclear if a MASKROM variant can have its program read out without an optical approach.

Some boards also have non-programmed Sandisk controllers in U41 and contain a flash chip U27 for the program/config, where as the rest omit the external flashrom and have a maskrom U41.

I have observed boards where U6 is EPROM but U41 is MASKROM.  I have not yet seen one where U6 is MASKROM and U41 is not.  

## Location ##

![image](https://github.com/user-attachments/assets/a2e46dda-e8bc-42d8-bcc8-e8081ce7fbb1)

![image](https://github.com/user-attachments/assets/63b54d00-19b9-41cf-ab7a-5a5157431210)

![image](https://github.com/user-attachments/assets/ee8c9987-725a-453d-a366-4c2538670507)

## ROM Extraction ##

[M38223E4HP@QFP80.BIN](/Flash/M38223E4HP/M38223E4HP@QFP80.BIN) - **M3822X POWER SENSE MICON FIRMWARE Rev 8 (C) 1995 RIOS SYSTEMS CO.,LTD**

So far it seems to not be possible to  read the program from the MASKROM version of the chip,  which likely is to be expected.

There was some indictation that M38xx could be  programmed using a Segger Flasher 5 or earlier,  but I was unsuccessful with this approach so far.

For the PROM method, the documentation specifies to utilize a standard programmer with the following special adapter:

PCA4738H-80A - PROM Programming Adapter for 80-pin 0.5mm-pitch LQFP of 38000 Series with PROM

I was unable to find detailed documentation on this adapter,  but the manual does specify some useful information.

The document titled [**PROM Programming Adapters for 38000 Series**](PCA4738H.pdf) on **Page 16 under 2.6 Setting the Programming Area** specifies to configure your programmer for a M5M27C256A and that the ROM area will be 0x4080 to 0x7FFD.

In reviewing related chips of the M38 family I was able to determine the following were the required connections for accessing the PROM.   Note VCC not not be powered, and instead P40 receives VCC to power only the internal PROM.  There is a note about this PIN and its special use case for powering the internal PROM.   PIN60 must be grounded.   

![image](https://github.com/user-attachments/assets/8579a198-b227-40f8-a572-06c0f398118c)

![image](https://github.com/user-attachments/assets/6970e252-dd4f-4683-bb03-ae091cd09395)

![image](https://github.com/user-attachments/assets/3129b726-b946-48d5-81b0-c5377505cb77)

![image](https://github.com/user-attachments/assets/38b46af4-bfe2-436d-9f8f-eba12970e8a5)




## Program Recovery & Analysis

Datasheet states the M3822 group is based on the 740 family core,  which is based on the 65C02.

[Mitsubishi 704 Family MCU](https://en.wikipedia.org/wiki/Mitsubishi_740)

The vector table at the end of the PROM is as expected and dissassembly is the next step.

The ROM is appears at 0xC080 -> 0xFFFD  in the 65C02 memory space, with FFFC/FFFD being the reset vector.

![image](https://github.com/user-attachments/assets/961d2ac0-5853-4dcf-a048-27df407ffb32)



## Other Notes ##

* The UART pins (19,20)  are connected to U69 /  M3813E4HP   Pins 10/11.  The communicate at 1200 baud, there is a heartbeat and some other communication to be investigated.

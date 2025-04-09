## Datasheets ##

As found with the  power management MCU,  some PC110's  have a MASKROM version populated,  and some have PROM version which can be read back.

The actual datasheet for the M3881   does not appear to be available,  however reviewing datasheets of similiar chips is helpful.

[PCA4738H0-80A](/Components/U6-M38224M6HP/PCA4738H.pdf)

[M38813M4 Example](M38813M4.png)

[M38002M4.PDF](M38002M4.PDF)


## Part Number Details ##
```
M38813E4HP
||||||||||
||||||||++--> 64P6Q-A
|||||||+----> 16384 Byte ROM Size 
||||||+-----> EPROM / OTP Version
|||||+------> 512 Bytes RAM
+++++-------> Mitsubishi 3881 Group MCU
```

## Location ##

![image](https://github.com/user-attachments/assets/75d7d57d-3b6d-42b6-a599-fa1e0b315e55)

![image](https://github.com/user-attachments/assets/18fbbbcb-55ce-4dbd-80cf-8aaa6c8dd9de)

## ROM Extraction ##

[M3881E4HP@QFP64.BIN](/Flash/M38813E4HP/M38813E4HP@QFP64.bin) - **MELPS 740 Series Keyboard Firmware Version 1.1(C) Copyright 1992-1995 RIOS Systems Co.,Ltd**

Extraction of the firmware from the M38813E4 was the same concept as the M38223E4,  however without a datasheet and limited information it took some trial and error to determine how to power the internal PROM.

As shown below, those are the connections made when using at as an M5M27C256K chip.    Datasheets for similiar  chips showed attaching A15 to VCC, however doing this caused unexpected behaviour.   Pulling A15 high with a 10K resistor resulted in reliable results.  The connections are still not quite as expected in relation to CE/OE.    Once connected the PROM is located at 0x4080 to 0x7FFD.

For a little bit more detail refer to [U6-M38224M6HP](/Components/U6-M38224M6HP/).

![image](https://github.com/user-attachments/assets/b446d97c-5ab2-43ac-837a-550ea7de3277)

![image](https://github.com/user-attachments/assets/b918c431-c520-4f86-8f6d-f8bbc8276454)





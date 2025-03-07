
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


## Program Recovery & Analysis

The documentation states that the  EPROM version can be programmed and verified using a general purpose PROM Programmer (with adapter).

Datasheet states the M822 group is based on the 740 family core,  which is based on the 6502.

[Mitsubishi 704 Family MCU](https://en.wikipedia.org/wiki/Mitsubishi_740)

### Recover / Extraction ###
PCA4738H-80A - PROM Programming Adapter for 80-pin 0.5mm-pitch LQFP of 38000 Series with PROM

This is also a M38xx group,  does not mention this part# but PIN names make sense.

(https://www.segger.com/products/production/flasher-5st7/models/flasher-5/)

![image](https://github.com/user-attachments/assets/14d8da21-7dae-48d2-bbe9-4c3d3efb0e96)

### Workflow ###

![image](https://github.com/user-attachments/assets/fc6904b1-b986-44e2-942a-3a0fede0cd2a)

## TODO ##
* Find pinout for the above mentioned adapter.
* Attempt to read program back using verification process of the programming workflow
* Potentially extract optically 
* Dissassmble and comment the code (superset of 6502 instructions), registers documented in M3822 datasheet.

## Other Notes ##

* The UART pins (19,20)  are connected to U69 /  M3813E4HP   Pins 10/11.  The communicate at 1200 baud, there is a heartbeat and some other communication to be investigated.


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
## Location ##

![image](https://github.com/user-attachments/assets/a2e46dda-e8bc-42d8-bcc8-e8081ce7fbb1)

## Program Recovery & Analysis

The documentation states that the  EPROM version can be programmed and verified using a general purpose PROM Programmer (with adapter).

Adapter for this package is:

PCA4738H-80A - PROM Programming Adapter for 80-pin 0.5mm-pitch LQFP of 38000 Series with PROM

![image](https://github.com/user-attachments/assets/fc6904b1-b986-44e2-942a-3a0fede0cd2a)

## TODO ##
* Find pinout for the above mentioned adapter.
* Attempt to read program back using verification process of the programming workflow
* Potentially extract optically 
* Dissassmble and comment the code.

## Other Notes ##

* The UART pins (19,20)  are connected to U69 /  M3813E4HP   Pins 10/11.  The communicate at 1200 baud, there is a heartbeat and some other communication to be investigated.

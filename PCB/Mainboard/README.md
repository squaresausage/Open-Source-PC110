### IBM PC110 PCB redesigned in KiCad

Layer Stack-up

| Index | Layer name | Description  |
| ----- | ---------- | ------------ |
| 1     | FC2        | Top          |
| 2     | FC1        | Signal       |
| 3     | IP1        | Power        |
| 4     | IC1        | Signal       |
| 5     | IC2        | Signal       |
| 6     | IC3        | Signal       |
| 7     | IC4        | Signal       |
| 8     | IP2        | Ground       |
| 9     | BC1        | Signal       |
| 10    | BC2        | Bottom       |


Here is a render of FC1, IC1, IC2, IC3, IC4 and BC1 together:

<img width="1723" alt="Screenshot 2025-01-25 at 10 13 16 PM" src="https://github.com/user-attachments/assets/236c46e9-727b-4f4f-9e76-789af8857413" />

And here is a render of FC2, FC1, IC1, IC2, IC3, IC4, BC1 and BC2 together:
<img width="1373" alt="Screenshot 2025-02-05 at 3 54 23 PM" src="https://github.com/user-attachments/assets/b2f1c086-2c23-4186-90f2-25991bcc9946" />

And here are 3D renders from the top and bottom layers:

Top side:

Real picture:

![IMG_3971](https://github.com/user-attachments/assets/75b1abc5-cac4-496b-b5d3-1811dfd3c4c2)

3D render:

<img width="775" alt="Screenshot 2025-03-01 at 7 24 52 AM" src="https://github.com/user-attachments/assets/523f7844-b7db-4861-845e-9c4a9800933a" />

Bottom side:

Real picture:

![IMG_3970](https://github.com/user-attachments/assets/f91a05f9-e525-4199-8f36-1ad349f0f6ab)

3D render:

<img width="753" alt="Screenshot 2025-03-01 at 8 22 09 AM" src="https://github.com/user-attachments/assets/d8d5141f-493d-4d2e-96a1-e3b77a2a9792" />

Schematic Organization
-----
Here is a view of the schematic hierarchy:

<img width="969" alt="Screenshot 2025-06-28 at 11 49 18 PM" src="https://github.com/user-attachments/assets/aaa84bd1-ac3c-4935-8697-59380e3e1548" />

Description of each schematic sheet

| Page | Sheet Name | Description  |
| ---- | ---------- | ------------ |
| 1     | Root      | Index of all sheets  |
| 2     | Clock | Local Oscillator and Clock Distribution Tree |
| 3     | Processor  | CPU and Debug pins |
| 4     | Chipset  | SCAMP IV chipset North Bridge |
| 5     | VGA | Video Controller and Video RAM       |
| 6     | Memory  | Internal Memory Back and RAM Expansion Connector |
| 7     | ROM | BIOS and Font Maskrom |
| 8     | ASIC | Bowman and Pluto, South Bridge |
| 9     | Super IO | FDD, Parallel and Serial ports |
| 10    | Power | Power Controller, PSU Connector, Status LCD, and Touchpad |
| 11    | PCMICA  | PCMCIA Controller and Related Power Controller |
| 12    | Audio | Sound Controller, FM Synthesizer and related analogue AMP |
| 13    | Storage | Internal Flash memory, CF card interface |
| 14    | Keyboard | Keyboard controller, Trackpoint controller |
| 15    | Docking | Docking Station, Internal Modem Connector |

Combined Schematic on one page
-----
Here is a combined schematic on a single page, just for the appreciation of its complexity.

![PC110-Motherboard-Flat](https://github.com/user-attachments/assets/c5fadc1b-a60b-4648-ba51-807372080b42)

Aside from the fun aspect of combining all the sheets on a single one, there is a practical use that is related to the recreation of the schematic from a given PCB. On KiCad, you cannot select components from different sheets simultaneously. Therefore, you cannot highlight all the components on your schematic at once to see if there is still any component on the layout that is not mapped. However, with a single sheet compilation, you can do that (as it is shown below) and you can go back to the layout and see if there is still any component that is left behind. Below you can see that, on the layout for both top and bottom layers, all the components are highlighted.

All components selected on the schematic
<img width="745" alt="Screenshot 2025-06-29 at 9 31 57 AM" src="https://github.com/user-attachments/assets/c9daa48f-d929-412e-8669-80e893900fd4" />

Highlighted components on the top layer

![PHOTO-2025-06-28-23-33-13](https://github.com/user-attachments/assets/12d72b1f-18ab-41fc-ae15-e1fb0e3804bb)

Highlighted components on the bottom layer

![PHOTO-2025-06-28-23-32-53](https://github.com/user-attachments/assets/81a08039-c5af-4830-a8ac-0693d4b1b803)

And here is the SVG version of the single-sheet [schemati](https://drive.google.com/file/d/18CVSU7gRzODHXLN1vmV7egy4e2-WGHxe/view?usp=drive_link).

PCB statistics report
=====================

Board
-----
- Width: 150.0500 mm
- Height: 107.3513 mm
- Area: 12400.2967 mm²

Pads
----
- Through hole: 29
- SMD: 4860
- Total: 4889

Vias
----
- Through vias: 2407
- Blind/buried: 3684
- Total: 6091

Components
----------

|              | Front Side | Back Side | Total |
|--------------|------------|-----------|-------|
|THT:          |          1 |         0 |     1 |
|SMD:          |        486 |       446 |   932 |
|Unspecified:  |          0 |         1 |     1 |
|Total:        |        487 |       447 |   934 |

Drill holes
-----------

| Count | Shape |    X Size |    Y Size | Plated | Via/Pad | Start Layer | Stop Layer |
|-------|-------|-----------|-----------|--------|---------|-------------|------------|
|  1950 | Round | 0.2000 mm | 0.2000 mm |    PTH |     Via |         BC1 |        BC2 |
|  1914 | Round | 0.2000 mm | 0.2000 mm |    PTH |     Via |         FC2 |        BC2 |
|  1730 | Round | 0.2000 mm | 0.2000 mm |    PTH |     Via |         FC2 |        FC1 |
|   493 | Round | 0.3000 mm | 0.3000 mm |    PTH |     Via |         FC2 |        BC2 |
|    20 | Round | 0.8000 mm | 0.8000 mm |    PTH |     Pad |         FC2 |        BC2 |
|     5 | Round | 1.0000 mm | 1.0000 mm |    PTH |     Pad |         FC2 |        BC2 |
|     2 |  Slot | 2.0000 mm | 0.9000 mm |    PTH |     Pad |         FC2 |        BC2 |
|     2 |  Slot | 0.8000 mm | 2.2000 mm |    PTH |     Pad |         FC2 |        BC2 |
|     2 | Round | 0.2000 mm | 0.2000 mm |    PTH |     Via |         FC2 |        IC2 |
|     1 | Round | 0.2000 mm | 0.2000 mm |    PTH |     Via |         FC2 |        IC1 |
|     1 | Round | 0.3000 mm | 0.3000 mm |    PTH |     Via |         BC1 |        BC2 |
|     1 | Round | 0.2000 mm | 0.2000 mm |    PTH |     Via |         IP1 |        BC2 |

Here is a cross section of the PCB stack-up

![Board_cross_section](https://github.com/user-attachments/assets/69448d79-1651-4f14-ac00-2899aa87db19)

## Schematics

The schematic is incomplete, and the sch files are placeholders.

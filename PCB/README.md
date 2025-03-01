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


BOM Values

| Index | Layer name | Description  | Status |
| ----- | ---------- | ------------ | ------ |
| 1     | FC2        | Top Layer    |        |
| 2     | BC2        | Bottom Layer |        |


Here is a render of FC1, IC1, IC2, IC3, IC4 and BC1 together:

<img width="1723" alt="Screenshot 2025-01-25 at 10 13 16 PM" src="https://github.com/user-attachments/assets/236c46e9-727b-4f4f-9e76-789af8857413" />

And here is a render of FC2, FC1, IC1, IC2, IC3, IC4, BC1 and BC2 together:
<img width="1373" alt="Screenshot 2025-02-05 at 3 54 23 PM" src="https://github.com/user-attachments/assets/b2f1c086-2c23-4186-90f2-25991bcc9946" />

And here are 3D renders from the top and bottom layers:

Top side:

<img width="775" alt="Screenshot 2025-03-01 at 7 24 52 AM" src="https://github.com/user-attachments/assets/523f7844-b7db-4861-845e-9c4a9800933a" />

Bottom side:

<img width="753" alt="Screenshot 2025-03-01 at 8 22 09 AM" src="https://github.com/user-attachments/assets/d8d5141f-493d-4d2e-96a1-e3b77a2a9792" />

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



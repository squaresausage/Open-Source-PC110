Here is a memory dump from the MSM538032E made by OKI.

You can use https://binvis.io/ to study the binary file.

Here is how the chip was fitted on a proto board to be read by a programmer

![PHOTO-2025-03-04-15-16-44](https://github.com/user-attachments/assets/1ec6310c-30fe-4bd9-a26a-1ebd54b33e12)

And here are the results

![PHOTO-2025-03-04-19-22-45](https://github.com/user-attachments/assets/ba34fce3-9987-4b54-a465-0ccf8b7b9a59)

It looks like the first 8k bytes are exposed in the "font window" and is a properly formatted option rom with the Japanese character sets.

This is what the 8k bytes look like:

![WhatsApp Image 2025-03-04 at 20 44 57](https://github.com/user-attachments/assets/ab47040d-b2bb-4e07-9493-6b115e13f85e)

Higher resolution character sets in their too.

Digging further in the code it seems that there is a reference to the different size character sets:

![PHOTO-2025-03-04-20-59-01](https://github.com/user-attachments/assets/b8fc24f2-c471-4327-af1e-fa48569bc93e)


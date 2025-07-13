# 🧠 Rebuilding the IBM PC110: A Deep Dive into Silicon, Sandpaper, and Secrets

**Reverse engineering a 90s subnotebook with undocumented BGA chips, custom gate arrays, and masked ROM microcontrollers**

---

## 📦 Introduction: A Forgotten Palm-Sized Powerhouse

The **IBM PC110**, released exclusively in **Japan in 1995**, was one of the smallest fully functional x86 systems ever made — a palmtop computer that crammed a 486 processor, VGA graphics, PCMCIA, PS/2 peripherals, and full ISA-style architecture into something smaller than a paperback.

Despite rumors of an **English-language or U.S. release**, no such version ever reached the market. The project was reportedly in development but was quietly shelved — making the PC110 not only unique, but **regionally rare and historically mysterious**.

What fascinated me wasn’t just the size — it was the story under the keyboard. Hidden silicon. BGA packages with no public documentation. ASICs IBM never admitted existed.

So I decided to **reverse engineer the entire machine**. That journey involved **sandpaper**, **ROM dumps**, **laser decapping**, **high-resolution die photos**, and the help of some brilliant hardware hackers. What I found includes rare chipsets, custom logic arrays, and design decisions that were both *visionary* and *tragically destructive*.

---

## ⚙️ A Design Ahead of Its Time — and One Fatal Flaw

The PC110 had forward-thinking design features, including:

- A **standard camcorder battery** (still sold on Amazon today)
- A **CompactFlash card slot**, used as its primary storage drive

These were remarkable decisions in 1995 — long before CF replaced spinning disks in industrial systems.

But the system had a fatal flaw:  
A small **NiMH-based bridge battery**, soldered internally, designed to maintain power between full battery swaps.

Over time, that battery becomes a **ticking time bomb**.  
As it fails, it **leaks potassium hydroxide (KOH)**, a highly corrosive chemical that **destroys PCB traces**, **eats through components**, and **wrecks solder joints**.  
It’s the leading cause of death for otherwise restorable PC110 units today.

---

## 🪚 Sanding a 10-Layer PCB — With a Flatbed Scanner

To begin understanding the system, I took the hard route:  
I **sanded the motherboard** down layer by layer.

The board is just **1mm thick**, with **10 copper layers**, each ~**70 microns**. I used **ultra-fine grit sandpaper** to remove layers delicately, scanning the exposed surface after each pass with a **high-resolution flatbed scanner**.

It was slow, imperfect, and occasionally damaging — but it worked. By the end, I had a full stack of perfectly aligned copper layers.

---

## 🧰 Reconstructing the Board in KiCad

With the scanned layers imported into **KiCad**, I aligned them and manually traced:

- Every net  
- Every via  
- Every component pad  

Bit by bit, the **entire circuit** came back to life. Some traces were incomplete or degraded, but logic and redundancy allowed me to **reconstruct the full schematic** of the system.

---

## 🧩 The Known and Unknown Silicon

I was able to identify most major components:

- **Intel 80486SX** CPU  
- **CHIPS65535** VGA controller  
- **Ricoh RB5C396** PCMCIA bridge  
- Standard floppy, IDE, and Super I/O chips  

But three components were mysterious:

- **VL82C420** – no known datasheet  
- **IBM ASIC "Pluto"**  
- **IBM ASIC "Bowman"**

The VL82C420 was part of VLSI’s **SCAMP IV** series — a power-efficient chipset line — but even after deep digging and contacting former VLSI employees, **no pinout or datasheet surfaced**.

---

## 🔬 Decapping the Chips with CLC & John McMaster

With the help of **CLC**, we **decapped the VL82C420**, as well as **Pluto** and **Bowman**, using a **laser-driven photo-chemical process**.

Then, with the amazing support of **John McMaster**, we captured **high-resolution images** of the silicon dies. What we found was astonishing.

---

### 🧠 Inside the VL82C420

The die layout revealed that the VL82C420 wasn’t just a glue logic chip — it was an integrated north bridge featuring:

- 2× **VL82C59** interrupt controllers  
- 2× **VL82C37** DMA controllers  
- 1× **VL82C54** interval timer  
- 1× **VL82C018** real-time clock  
- A **large gate array** connecting them

It was a north bridge **system-on-chip**, custom packaged by IBM in a BGA format never publicly documented.

---

### 🧬 Pluto and Bowman: IBM’s Custom Gate Arrays

Analysis of **Pluto** and **Bowman** showed that both were **IBM-designed gate arrays**, likely manufactured specifically for the PC110 and similar embedded platforms.

They handled:

- **Power sequencing**  
- **Interrupt management**  
- **ISA bus control**  
- Possibly docking I/O and thermal sensing

---

## 🤖 Embedded Microcontrollers and ROM Extraction

Beyond the main chips, the PC110 also includes **three microcontrollers**:

| Chip           | Function                  |
|----------------|---------------------------|
| **M38223**     | Power sequencing          |
| **M3881**      | Keyboard & PS/2 interface |
| **D17137AGT**  | TrackPoint controller     |

With the brilliant work of **Kevin Moonlight**, we were able to **dump the ROMs** from the M38223 and M3881.

The **D17137AGT** was more difficult — it’s a **4-bit mask ROM device**. No external access was possible, but thanks to **John McMaster**, we obtained a **high-resolution die image**, including the ROM section.  
We chose not to decode it visually — the firmware wouldn't significantly contribute to understanding system behavior — but it’s now archived and preserved.

---

## 🌐 Bringing the Community Together — Thanks to Mike Lycett

One of the most important forces behind this project’s success was **Mike Lycett**.  
Mike was instrumental in:

- **Coordinating communication** across contributors  
- Organizing and managing a **community fundraiser**  
- Bringing **global attention and visibility** to the PC110 project  
- Helping steer the outreach that enabled us to access rare chips, imaging tools, and archival data

Without his support, organization, and advocacy, many of the technical breakthroughs documented here would have been significantly delayed — or impossible.

---

## 📂 Everything is Open-Source

You can access everything from this project, including:

- PCB scans (all 10 layers)  
- Full KiCad schematic & layout  
- Microcontroller ROM dumps  
- High-res silicon die images  
- Annotations and notes on each subsystem

👉 **[GitHub Repository: https://github.com/ahmadexp/Open-Source-PC110](https://github.com/ahmadexp/Open-Source-PC110)**

---

## 🧭 What’s Next?

This is just the beginning. Next steps may include:

- **Rebuilding** the motherboard with modern tools  
- Creating a **hardware emulator or simulation**  
- Attempting a **full boot from a re-engineered system**

---

## 🙏 Thanks and Acknowledgements

This project would not have been possible without:

- **Mike Lycett** — for organizing the fundraiser, coordinating the effort, and promoting the project  
- **Kevin Moonlight** — for microcontroller ROM extraction  
- **John McMaster** — for high-resolution die imaging and technical consultation  
- **CLC** — for decapping services and silicon prep  
- The **open hardware & retrocomputing community** — for encouragement, contributions, and documentation support

---

## 📢 Stay Updated

- 🔗 GitHub: [https://github.com/ahmadexp/Open-Source-PC110](https://github.com/ahmadexp/Open-Source-PC110)  
- 📧 Contact: Ahmad Byagowi / [@ahmadexp](https://github.com/ahmadexp)  
- 🎥 Full video breakdown coming soon on YouTube

/* M3823x Firmware Reverse-Engineering Skeleton
 *
 * This file is a **compilable** C scaffold derived from the disassembly.
 * It does NOT reproduce the original firmware; instead, it gives you
 * named tables, vector stubs, and placeholders for MMIO/logic so you
 * can incrementally port or simulate behavior.
 *
 * Build: gcc -std=c99 -Wall -Wextra -pedantic -O2 m3823x_firmware_skeleton.c -o m3823x_skel
 */

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

/* --- Memory map notes (from analysis) ---
 * Vectors: RESET=0xD1AF, NMI=0xDC61, IRQ=0xE6B1
 * Hot ZP: $04, $58, $5A-$5C, $65-$71, $6D-$6F, $70/$71, $73
 * Page-1 I/O: $0102, $0104-$010B
 * MMIO writers frequently touch 0xE320
 */

/* Simulated MMIO:
 * In hosted C, we can't access raw addresses like 0xE320 safely.
 * For compile-ability and testing, we provide a small simulation layer.
 */
typedef struct {
    uint8_t regs[0x1000]; /* arbitrary size for a scratch MMIO window */
} mmio_t;

static mmio_t MMIO;           /* simulated device window */
#define MMIO_BASE   0xE320u   /* firmware's observed base */
#define MMIO_AT(off) (MMIO.regs[(off) & (sizeof(MMIO.regs)-1)])

/* Zero-page and page-1 I/O working vars (simulated).
 * In real MCU, these live at absolute addresses; here we model them as globals.
 */
static uint8_t zp_04, zp_58, zp_5A, zp_5B, zp_5C;
static uint8_t zp_65, zp_66, zp_67, zp_68, zp_69, zp_6A, zp_6B, zp_6C, zp_6D, zp_6E, zp_6F, zp_70, zp_71, zp_73;
static uint8_t io_0102, io_0104, io_0105, io_0106, io_0107, io_0108, io_0109, io_010A, io_010B;

/* Small utility to silence -Wunused warnings */
static void touch(const void *p) { (void)p; }

/* --- Tables extracted from ROM bytes --- */
// Bytes extracted from $C58D..$C59B
const uint8_t taper_table[] = {
    0x06, 0x06, 0x05, 0x05, 0x04, 0x04, 0x03, 0x03, 0x02, 0x02, 0x01, 0x01, 0x00, 0x00, 0x00
};
size_t taper_table_len = sizeof(taper_table)/sizeof(taper_table[0]);
// Bytes extracted from $C5A0..$C5F8
const uint8_t ramp_table[] = {
    0xFF, 0xFE, 0xFD, 0xFC, 0xFB, 0xFA, 0xF9, 0xF8, 0xF7, 0xF6, 0xF5, 0xF4, 0xF3, 0xF2, 0xF1, 0xF0,
    0xEF, 0xEE, 0xED, 0xEC, 0xEB, 0xEA, 0xE9, 0xE8, 0xE7, 0xE6, 0xE5, 0xE4, 0xE3, 0xE2, 0xE1, 0xE0,
    0xDF, 0xDE, 0xDD, 0xDC, 0xDB, 0xDA, 0xD9, 0xD8, 0xD7, 0xD6, 0xD5, 0xD4, 0xD3, 0xD2, 0xD1, 0xD0,
    0xCF, 0xCE, 0xCD, 0xCC, 0xCB, 0xCA, 0xC9, 0xC8, 0xC7, 0xC6, 0xC5, 0xC4, 0xC3, 0xC2, 0xC1, 0xC0,
    0xBF, 0xBE, 0xBD, 0xBC, 0xBB, 0xBA, 0xB9, 0xB8, 0xB7, 0xB6, 0xB5, 0xB4, 0xB3, 0xB2, 0xB1, 0xB0,
    0xAF, 0xAE, 0xAD, 0xAC, 0xAB
};
size_t ramp_table_len = sizeof(ramp_table)/sizeof(ramp_table[0]);
// Bytes extracted from $C670..$C67F
const uint8_t step_table[] = {
    0x00, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10
};
size_t step_table_len = sizeof(step_table)/sizeof(step_table[0]);
/* --- End tables --- */

/* Forward declarations (vector stubs and major routines) */
void reset_vector(void);
void nmi_vector(void);
void irq_vector(void);

/* Family / helper stubs based on analysis */
void mode_handler_A(void);
void mode_handler_B(void);
void mode_handler_C(void);
void mode_handler_D(void);
void mode_handler_E(void);

bool adc_accept(uint8_t v);      /* returns true if accepted */
void filter_ch0(void);
void filter_ch1(void);

void init_io_1(void);
void init_io_2(void);
void init_io_3(void);
void init_io_4(void);
void init_more(void);
void init_more_2(void);
void init_more_3(void);
void init_misc_1(void);

void port_update(void);
void io_write_family(void);
void mainloop_entry(void);

/* --- Stub implementations --- */

void reset_vector(void) {
    /* Emulate: SEI; JSR init_*; fall into main loop */
    init_io_1();
    init_io_2();
    init_io_3();
    init_io_4();
    init_more();
    init_more_2();
    init_more_3();
    init_misc_1();
    mainloop_entry();
}

void nmi_vector(void) {
    /* Placeholder: Non-maskable interrupt handler */
}

void irq_vector(void) {
    /* Placeholder: IRQ handler */
}

void init_io_1(void) { /* I/O setup part 1 */ }
void init_io_2(void) { /* I/O setup part 2 */ }
void init_io_3(void) { /* I/O setup part 3 */ }
void init_io_4(void) { /* I/O setup part 4 */ }
void init_more(void)  { /* Further initialization */ }
void init_more_2(void){ /* Further initialization cont. */ }
void init_more_3(void){ /* Further initialization cont. */ }
void init_misc_1(void){ /* Misc post init */ }

void port_update(void)    { /* Writes to MMIO base (0xE320) */ }
void io_write_family(void){ /* I/O write family using MMIO */ }

bool adc_accept(uint8_t v) {
    /* Clamp/debounce behavior placeholder; the real code compares against step_table etc. */
    (void)v;
    return true;
}

void filter_ch0(void) {
    /* Manages io_0106/io_0108 with ramp/holdoff behavior */
}

void filter_ch1(void) {
    /* Manages io_0107/io_0109 with ramp/holdoff behavior */
}

void mode_handler_A(void) { /* Uses masks on zp_04/zp_6D and writes via io_write_family */ }
void mode_handler_B(void) { /* ... */ }
void mode_handler_C(void) { /* ... */ }
void mode_handler_D(void) { /* ... */ }
void mode_handler_E(void) { /* ... */ }

void mainloop_entry(void) {
    /* Sketch of the dispatch loop:
     *  - read an input value (ADC/key/etc.)
     *  - bucket into ranges and call one of the handlers
     * For now, we just touch the tables to avoid unused warnings.
     */
    touch(taper_table);
    touch(ramp_table);
    touch(step_table);
}

/* A tiny demo main so this file compiles and links standalone.
 * If you integrate into a larger project, you can remove main() and call reset_vector().
 */
#ifdef BUILD_STANDALONE_DEMO
#include <stdio.h>
int main(void) {
    printf("M3823x firmware skeleton: tables: taper=%zu, ramp=%zu, steps=%zu\n",
           taper_table_len, ramp_table_len, step_table_len);
    reset_vector();
    return 0;
}
#else
int main(void) {
    /* No-op main for compile-ability; call reset_vector() from tests as needed. */
    reset_vector();
    return 0;
}
#endif


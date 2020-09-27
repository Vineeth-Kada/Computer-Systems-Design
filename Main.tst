load Main.hdl,
output-file Main.out,
//compare-to Main.cmp,

output-list X%B1.8.1 Y%B1.8.1 opCode%B3.3.3 sPin%B3.1.3 Z%B1.8.1 EQ%B3.1.3 OF%B3.1.3;

/* ==============================
 *  Operation NOP: opCode [000]
 *  X= 10, Y= 10
 *===============================*/
set X %B00001010, set Y %B00001010, set opCode %B000, set sPin 0,
eval, output;

/* ==============================
 *  Operation AND: opCode [001]
 *  X= 71, Y= 8
 *===============================*/
set X %B01000111, set Y %B00001000, set opCode %B001, set sPin 0,
eval, output;

/* ==============================
 *  Operation OR: opCode [010]
 *  X= 10, Y= 5
 *===============================*/
set X %B00001010, set Y %B00000101, set opCode %B010, set sPin 0,
eval, output;

/* ==============================
 *  Operation XOR: opCode [011]
 *  X= 10, Y= 5
 *===============================*/
set X %B00001010, set Y %B00000101, set opCode %B011, set sPin 0,
eval, output;

/* ========================================
 *  Operation ADD: opCode [100], unsigned
 *  X= 10, Y= 5 - no overflow
 *=========================================*/
set X %B00001010, set Y %B00000101, set opCode %B100, set sPin 0,
eval, output;

/* ========================================
 *  Operation ADD: opCode [100], signed
 *  X= 10, Y= 5 - no overflow
 *=========================================*/
set X %B00001010, set Y %B00000101, set opCode %B100, set sPin 1,
eval, output;

/* ========================================
 *  Operation ADD: opCode [100], unsigned
 *  X= 200, Y= 100 - overflow
 *=========================================*/
set X %B11001000, set Y %B01100100, set opCode %B100, set sPin 0,
eval, output;

/* ========================================
 *  Operation ADD: opCode [100], signed
 *  X= 10, Y= 120 - postive overflow
 *=========================================*/
set X %B00001010, set Y %B01111000, set opCode %B100, set sPin 1,
eval, output;

/* ========================================
 *  Operation ADD: opCode [100], signed
 *  X= -128, Y= -128 - negative overflow
 *=========================================*/
set X %B10000000, set Y %B10000000, set opCode %B100, set sPin 1,
eval, output;

/* ========================================
 *  Operation SUB: opCode [101], unsigned
 *  X= 10, Y= 5 - no overflow
 *=========================================*/
set X %B00001010, set Y %B00000101, set opCode %B101, set sPin 0,
eval, output;

/* ========================================
 *  Operation SUB: opCode [101], signed
 *  X= 10, Y= -5 - no overflow
 *=========================================*/
set X %B00001010, set Y %B11111011, set opCode %B101, set sPin 1,
eval, output;

/* ========================================
 *  Operation SUB: opCode [101], signed
 *  X= 127, Y= -5 - positive overflow
 *=========================================*/
set X %B01111111, set Y %B11111011, set opCode %B101, set sPin 1,
eval, output;

/* ========================================
 *  Operation SUB: opCode [101], signed
 *  X= -128, Y= 127 - negative overflow
 *=========================================*/
set X %B10000000, set Y %B01111111, set opCode %B101, set sPin 1,
eval, output;

/* ========================================
 *  Operation MUL: opCode [110], unsigned
 *  X= 10, Y= 5 - no overflow
 *=========================================*/
set X %B00001010, set Y %B00000101, set opCode %B110, set sPin 0,
eval, output;

/* ========================================
 *  Operation MUL: opCode [110], unsigned
 *  X= 20, Y= 20 - overflow
 *=========================================*/
set X %B00010100, set Y %B00010100, set opCode %B110, set sPin 0,
eval, output;

/* ========================================
 *  Operation MUL: opCode [111], signed
 *  X= 10, Y= -5 - no overflow
 *=========================================*/
set X %B00001010, set Y %B11111011, set opCode %B111, set sPin 1,
eval, output;

/* ========================================
 *  Operation MUL: opCode [111], signed
 *  X= 40, Y= -5 - overflow
 *=========================================*/
set X %B00101000, set Y %B11111011, set opCode %B111, set sPin 1,
eval, output;
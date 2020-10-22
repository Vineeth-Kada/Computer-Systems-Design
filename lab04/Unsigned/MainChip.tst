load MainChip.hdl,
output-file MainChip.out,
compare-to MainChip.cmp,

output-list X%B1.8.1 Y%B1.8.1 Z%B1.8.1 OF%B3.1.3;

// A pair of operands not resulting in overflow
// X = 11, Y = 16, M = 176, OF = 0
set X %B00001011, set Y %B00010000,
eval, output;

// A pair of operands not resulting in overflow
// X = 14, Y = 12, M = 168, OF = 0
set X %B00001110, set Y %B00001100,
eval, output;

// A pair of operands resulting in overflow
// X = 20, Y = 15, M = 300, OF = 1
set X %B00010100, set Y %B00001111,
eval, output;
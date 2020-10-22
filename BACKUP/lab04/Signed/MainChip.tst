load MainChip.hdl,
output-file MainChip.out,
compare-to MainChip.cmp,

output-list x%B1.8.1 y%B1.8.1 M%B1.8.1 OF%B3.1.3;

// A pair of operands not resulting in overflow, both operands are positive
// x = 12, y = 8, M = 96, OF = 0
set x %B00001100, set y %B00001000,
eval, output;

// A pair of operands not resulting in overflow, multiplicand is positive and multiplier is negative
// x = 14, y = -7, M = -98, OF = 0
set x %B00001110, set y %B11111001,
eval, output;

// A pair of operands not resulting in overflow, multiplicand is negative and multiplier is positive
// x = -13, y = 9, M = -117, OF = 0
set x %B11110011, set y %B00001001,
eval, output;

// A pair of operands not resulting in overflow, both operands are negative
// x = -17, y = -3, M = 51, OF = 0
set x %B11101111, set y %B11111101,
eval, output;

// A pair of operands resulting in overflow, both operands are of same sign
// x = 32, y = 15, M = 480, OF = 1
set x %B00100000, set y %B00001111,
eval, output;

// A pair of operands resulting in overflow, both operands are of different signs
// x = -25, y = 20, M = -500, OF = 1
set x %B11100111, set y %B00010100,
eval, output;
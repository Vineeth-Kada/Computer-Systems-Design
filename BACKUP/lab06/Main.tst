load Main.hdl,
output-file Main.out,
compare-to Main.cmp,

output-list X%B1.16.1 Y%B1.16.1 Z%B1.16.1;

// Case 1
// X = 1.0625 * 2^50 (0 10110001 0001000)
// Y = 1.1875 * 2^77 (0 11001100 0011000)
// Z = 1.26171875 * 2^127 (0 11111110 0100001)
set X %B0101100010001000, set Y %B0110011000011000,
eval, output;

// Case 2
// X = - 1.0625 * 2^50 (1 10110001 0001000)
// Y = - 1.1875 * 2^77 (1 11001100 0011000)
// Z = 1.26171875 * 2^127 (0 01111111 0100001)
set X %B1101100010001000, set Y %B1110011000011000,
eval, output;

// Case 3
// X = - 1.258 * 2^-1 (1 01111110 0100001)
// Y = 1.9 * 2^-10 (0 01110101 1110011)
// Z = -2.3902 * 2^-11 (1 01110101 0011000)
set X %B1011111100100001, set Y %B0011101011110011,
eval, output;

// Case 4
// X = - 1.875 * 2^10 (1 10001001 1110000)
// Y = 1.4375 * 2^-11 (0 01110100 0111000)
// Z = -1.34765625 * 2^0 (1 01111111 0101100)
set X %B1100010011110000, set Y %B0011101000111000,
eval, output;

// Case 5 Pm > 2.0
// X = - 1.75 * 2^-1 (1 01111110 1100000)
// Y = 1.5 * 2^-10 (0 01110101 1000000)
// Z = -2.625 * 2^-11 (1 01110101 0101000)
// Pm = 2.625
set X %B1011111101100000, set Y %B0011101011000000,
eval, output;

// Case 6 1.0 < Pm < 2.0
// X = 1.0 * 2^20 (0 10010011 0000000)
// Y = 1.5 * 2^-10 (0 01110101 1000000)
// Z = 1.5 * 2^10 (0 10001001 1000000)
// Pm = 1.5
set X %B0100100110000000, set Y %B0011101011000000,
eval, output;
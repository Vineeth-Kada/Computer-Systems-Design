load UnsignedCLA16.hdl,
output-file UnsignedCLA16.out,
compare-to UnsignedCLA16.cmp,
output-list X%B1.16.1 cPin%B4.1.1 Y%B1.16.1 S%B1.16.1 OF%B3.1.3;

// X = 12345; Y = 45678; X+Y = 58023
set X %B0011000000111001,
set Y %B1011001001101110,
set cPin 0;
eval,
output;

// X = 30000; Y = 40000; X+Y = 70000 > 2^16-1
set X %B0111010100110000,
set Y %B1001110001000000,
set cPin 0;
eval,
output;

// X = 40000; Y = 30000; X-Y = 10000
set X %B1001110001000000,
set Y %B0111010100110000,
set cPin 1;
eval,
output;
load Signed16BitRCAdderSubtractor.hdl,
output-file Signed16BitRCAdderSubtractor.out,
compare-to Signed16BitRCAdderSubtractor.cmp,
output-list X%B1.16.1 cPin%B4.1.1 Y%B1.16.1 S%B1.16.1 OF%B3.1.3;


// 1. A pair of positive integers for addition without resulting in overflow
// X = 20000; Y = 10000; X+Y = 30000, OF=false
set X %B0100111000100000,
set Y %B0010011100010000,
set cPin 0;
eval,
output;


// 2. A pair of positive integers for addition resulting in overflow
// X = 30000; Y = 30000; X+Y = 60000 > 2^15-1, OF=true
set X %B0111010100110000,
set Y %B0111010100110000,
set cPin 0;
eval,
output;


// 3. A pair of negative integers for addition without resulting in overflow
// X = -10000; Y = -10000; X+Y = -20000, OF=false
set X %B1101100011110000,
set Y %B1101100011110000,
set cPin 0;
eval,
output;


// 4. A pair of negative integers for addition resulting in overflow.
// X = -20000; Y = -20000; X+Y = -40000, OF=true
set X %B1011000111100000,
set Y %B1011000111100000,
set cPin 0;
eval,
output;


// 5. A pair of operands of opposite sign for addition. There is no overflow for this condition.
// X = 30000; Y = -20000; X+Y = 10000, OF=false
set X %B0111010100110000,
set Y %B1011000111100000,
set cPin 0;
eval,
output;


// 6. A pair of operands of  opposite sign for subtraction without resulting in overflow.
// X = 10000; Y = -20000; X-Y = 30000, OF=false
set X %B0010011100010000,
set Y %B1011000111100000,
set cPin 1;
eval,
output;


// 7. A pair of operands of opposite sign for subtraction resulting in overflow.
// X = 30000; Y = -20000; X-Y = 50000 > 2^15-1, OF=true
set X %B0111010100110000,
set Y %B1011000111100000,
set cPin 1;
eval,
output;
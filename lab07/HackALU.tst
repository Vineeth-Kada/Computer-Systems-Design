load HackALU.hdl,
output-file HackALU.out,
compare-to HackALU.cmp,

output-list x%B1.16.1 y%B1.16.1 zx%B3.1.3 nx%B3.1.3 zy%B3.1.3 ny%B3.1.3 f%B3.1.3 n0%B3.1.3 zr%B3.1.3 ng%B3.1.3 out%B1.16.1;

//x and y are positive, x > y
//x = 126, y =79

set x %B0000000001111110, set y %B0000000001001111, set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set n0 0,
eval, output;

set x %B0000000001111110, set y %B0000000001001111, set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set n0 1,
eval, output;

set x %B0000000001111110, set y %B0000000001001111, set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set n0 0,
eval, output;

set x %B0000000001111110, set y %B0000000001001111, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set n0 0,
eval, output;

set x %B0000000001111110, set y %B0000000001001111, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set n0 0,
eval, output;

set x %B0000000001111110, set y %B0000000001001111, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set n0 1,
eval, output;

set x %B0000000001111110, set y %B0000000001001111, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set n0 1,
eval, output;

set x %B0000000001111110, set y %B0000000001001111, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set n0 1,
eval, output;

set x %B0000000001111110, set y %B0000000001001111, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set n0 1,
eval, output;

set x %B0000000001111110, set y %B0000000001001111, set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set n0 1,
eval, output;

set x %B0000000001111110, set y %B0000000001001111, set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set n0 1,
eval, output;

set x %B0000000001111110, set y %B0000000001001111, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set n0 0,
eval, output;

set x %B0000000001111110, set y %B0000000001001111, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set n0 0,
eval, output;

set x %B0000000001111110, set y %B0000000001001111, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set n0 0,
eval, output;

set x %B0000000001111110, set y %B0000000001001111, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set n0 1,
eval, output;

set x %B0000000001111110, set y %B0000000001001111, set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set n0 1,
eval, output;

set x %B0000000001111110, set y %B0000000001001111, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set n0 0,
eval, output;

set x %B0000000001111110, set y %B0000000001001111, set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set n0 1,
eval, output;




// x is positive and y is negative, |x| > |y|
// x = 113, y = -44 

set x %B0000000001110001, set y %B1111111111010100, set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set n0 0,
eval, output;

set x %B0000000001110001, set y %B1111111111010100, set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set n0 1,
eval, output;

set x %B0000000001110001, set y %B1111111111010100, set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set n0 0,
eval, output;

set x %B0000000001110001, set y %B1111111111010100, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set n0 0,
eval, output;

set x %B0000000001110001, set y %B1111111111010100, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set n0 0,
eval, output;

set x %B0000000001110001, set y %B1111111111010100, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set n0 1,
eval, output;

set x %B0000000001110001, set y %B1111111111010100, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set n0 1,
eval, output;

set x %B0000000001110001, set y %B1111111111010100, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set n0 1,
eval, output;

set x %B0000000001110001, set y %B1111111111010100, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set n0 1,
eval, output;

set x %B0000000001110001, set y %B1111111111010100, set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set n0 1,
eval, output;

set x %B0000000001110001, set y %B1111111111010100, set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set n0 1,
eval, output;

set x %B0000000001110001, set y %B1111111111010100, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set n0 0,
eval, output;

set x %B0000000001110001, set y %B1111111111010100, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set n0 0,
eval, output;

set x %B0000000001110001, set y %B1111111111010100, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set n0 0,
eval, output;

set x %B0000000001110001, set y %B1111111111010100, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set n0 1,
eval, output;

set x %B0000000001110001, set y %B1111111111010100, set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set n0 1,
eval, output;

set x %B0000000001110001, set y %B1111111111010100, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set n0 0,
eval, output;

set x %B0000000001110001, set y %B1111111111010100, set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set n0 1,
eval, output;












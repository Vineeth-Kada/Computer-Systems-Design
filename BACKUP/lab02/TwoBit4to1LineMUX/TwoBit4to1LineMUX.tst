load TwoBit4to1LineMUX.hdl,
output-file TwoBit4to1LineMUX.out,
compare-to TwoBit4to1LineMUX.cmp,

output-list S1%B2.1.2 S0%B2.1.2 X01%B2.1.2 X00%B2.1.2 X11%B2.1.2 X10%B2.1.2 X21%B2.1.2 X20%B2.1.2 X31%B2.1.2 X30%B2.1.2 Y1%B2.1.2 Y0%B2.1.2;

set S1 0, set S0 0, set X01 0, set X00 0, set X11 1, set X10 0, set X21 0, set X20 1, set X31 1, set X30 1, 
eval, output;

set S1 0, set S0 0, set X01 1, set X00 1, set X11 0, set X10 0, set X21 1, set X20 0, set X31 0, set X30 1, 
eval, output;

set S1 0, set S0 0, set X01 0, set X00 1, set X11 1, set X10 1, set X21 0, set X20 0, set X31 1, set X30 0, 
eval, output;

set S1 0, set S0 0, set X01 1, set X00 0, set X11 0, set X10 1, set X21 1, set X20 1, set X31 0, set X30 0, 
eval, output;

set S1 0, set S0 1, set X01 0, set X00 0, set X11 1, set X10 0, set X21 0, set X20 1, set X31 1, set X30 1, 
eval, output;

set S1 0, set S0 1, set X01 1, set X00 1, set X11 0, set X10 0, set X21 1, set X20 0, set X31 0, set X30 1, 
eval, output;

set S1 0, set S0 1, set X01 0, set X00 1, set X11 1, set X10 1, set X21 0, set X20 0, set X31 1, set X30 0, 
eval, output;

set S1 0, set S0 1, set X01 1, set X00 0, set X11 0, set X10 1, set X21 1, set X20 1, set X31 0, set X30 0, 
eval, output;

set S1 1, set S0 0, set X01 0, set X00 0, set X11 1, set X10 0, set X21 0, set X20 1, set X31 1, set X30 1, 
eval, output;

set S1 1, set S0 0, set X01 1, set X00 1, set X11 0, set X10 0, set X21 1, set X20 0, set X31 0, set X30 1, 
eval, output;

set S1 1, set S0 0, set X01 0, set X00 1, set X11 1, set X10 1, set X21 0, set X20 0, set X31 1, set X30 0, 
eval, output;

set S1 1, set S0 0, set X01 1, set X00 0, set X11 0, set X10 1, set X21 1, set X20 1, set X31 0, set X30 0, 
eval, output;

set S1 1, set S0 1, set X01 0, set X00 0, set X11 1, set X10 0, set X21 0, set X20 1, set X31 1, set X30 1, 
eval, output;

set S1 1, set S0 1, set X01 1, set X00 1, set X11 0, set X10 0, set X21 1, set X20 0, set X31 0, set X30 1, 
eval, output;

set S1 1, set S0 1, set X01 0, set X00 1, set X11 1, set X10 1, set X21 0, set X20 0, set X31 1, set X30 0, 
eval, output;

set S1 1, set S0 1, set X01 1, set X00 0, set X11 0, set X10 1, set X21 1, set X20 1, set X31 0, set X30 0, 
eval, output;

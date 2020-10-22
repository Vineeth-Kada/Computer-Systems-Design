load TwoBit4To1LinePriorityMUX.hdl,
output-file TwoBit4To1LinePriorityMUX.out,
compare-to TwoBit4To1LinePriorityMUX.cmp,

output-list R0%B2.1.2 R1%B2.1.2 R2%B2.1.2 R3%B2.1.2 X01%B2.1.2 X00%B2.1.2 X11%B2.1.2 X10%B2.1.2 X21%B2.1.2 X20%B2.1.2 X31%B2.1.2 X30%B2.1.2 Y1%B2.1.2 Y0%B2.1.2;


/*Only one request input to the priority encoder is active*/


set R0 1, set R1 0, set R2 0, set R3 0, set X01 1, set X00 0, set X11 0, set X10 1, set X21 0, set X20 0, set X31 1, set X30 1, 
eval, output;

set R0 1, set R1 0, set R2 0, set R3 0, set X01 0, set X00 1, set X11 0, set X10 0, set X21 1, set X20 1, set X31 1, set X30 0, 
eval, output;

set R0 1, set R1 0, set R2 0, set R3 0, set X01 1, set X00 1, set X11 1, set X10 0, set X21 0, set X20 1, set X31 0, set X30 0, 
eval, output;

set R0 1, set R1 0, set R2 0, set R3 0, set X01 0, set X00 0, set X11 1, set X10 1, set X21 1, set X20 0, set X31 0, set X30 1, 
eval, output;

set R0 0, set R1 1, set R2 0, set R3 0, set X01 1, set X00 0, set X11 0, set X10 1, set X21 0, set X20 0, set X31 1, set X30 1, 
eval, output;

set R0 0, set R1 1, set R2 0, set R3 0, set X01 0, set X00 1, set X11 0, set X10 0, set X21 1, set X20 1, set X31 1, set X30 0,
eval, output;

set R0 0, set R1 1, set R2 0, set R3 0, set X01 1, set X00 1, set X11 1, set X10 0, set X21 0, set X20 1, set X31 0, set X30 0, 
eval, output;

set R0 0, set R1 1, set R2 0, set R3 0, set X01 0, set X00 0, set X11 1, set X10 1, set X21 1, set X20 0, set X31 0, set X30 1, 
eval, output;

set R0 0, set R1 0, set R2 1, set R3 0, set X01 1, set X00 0, set X11 0, set X10 1, set X21 0, set X20 0, set X31 1, set X30 1,
eval, output;

set R0 0, set R1 0, set R2 1, set R3 0, set X01 0, set X00 1, set X11 0, set X10 0, set X21 1, set X20 1, set X31 1, set X30 0, 
eval, output;

set R0 0, set R1 0, set R2 1, set R3 0, set X01 1, set X00 1, set X11 1, set X10 0, set X21 0, set X20 1, set X31 0, set X30 0, 
eval, output;

set R0 0, set R1 0, set R2 1, set R3 0, set X01 0, set X00 0, set X11 1, set X10 1, set X21 1, set X20 0, set X31 0, set X30 1,
eval, output;

set R0 0, set R1 0, set R2 0, set R3 1, set X01 1, set X00 0, set X11 0, set X10 1, set X21 0, set X20 0, set X31 1, set X30 1, 
eval, output;

set R0 0, set R1 0, set R2 0, set R3 1, set X01 0, set X00 1, set X11 0, set X10 0, set X21 1, set X20 1, set X31 1, set X30 0, 
eval, output;

set R0 0, set R1 0, set R2 0, set R3 1, set X01 1, set X00 1, set X11 1, set X10 0, set X21 0, set X20 1, set X31 0, set X30 0, 
eval, output;

set R0 0, set R1 0, set R2 0, set R3 1, set X01 0, set X00 0, set X11 1, set X10 1, set X21 1, set X20 0, set X31 0, set X30 1, 
eval, output;


/*Atleast 2 request inputs to the priority encoder are active*/


set R0 1, set R1 0, set R2 0, set R3 1, set X01 0, set X00 0, set X11 1, set X10 0, set X21 0, set X20 0, set X31 1, set X30 1, 
eval, output;

set R0 0, set R1 1, set R2 1, set R3 0, set X01 0, set X00 1, set X11 1, set X10 1, set X21 1, set X20 1, set X31 0, set X30 0, 
eval, output;

set R0 0, set R1 0, set R2 1, set R3 1, set X01 1, set X00 0, set X11 0, set X10 0, set X21 1, set X20 0, set X31 1, set X30 0, 
eval, output;

set R0 0, set R1 1, set R2 0, set R3 1, set X01 1, set X00 1, set X11 0, set X10 1, set X21 0, set X20 1, set X31 0, set X30 1, 
eval, output;

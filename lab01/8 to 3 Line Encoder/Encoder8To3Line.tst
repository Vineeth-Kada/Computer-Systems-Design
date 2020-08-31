load Encoder8To3Line.hdl,
output-file Encoder8To3Line.out,
compare-to Encoder8To3Line.cmp,

output-list X0%B2.1.2 X1%B2.1.2 X2%B2.1.2 X3%B2.1.2 X4%B2.1.2 X5%B2.1.2 X6%B2.1.2 X7%B2.1.2 Y2%B2.1.2 Y1%B2.1.2 Y0%B2.1.2;

set X0 1, set X1 0, set X2 0, set X3 0, set X4 0, set X5 0, set X6 0, set X7 0,
eval, output;

set X0 0, set X1 1, set X2 0, set X3 0, set X4 0, set X5 0, set X6 0, set X7 0,
eval, output;

set X0 0, set X1 0, set X2 1, set X3 0, set X4 0, set X5 0, set X6 0, set X7 0,
eval, output;

set X0 0, set X1 0, set X2 0, set X3 1, set X4 0, set X5 0, set X6 0, set X7 0,
eval, output;

set X0 0, set X1 0, set X2 0, set X3 0, set X4 1, set X5 0, set X6 0, set X7 0,
eval, output;

set X0 0, set X1 0, set X2 0, set X3 0, set X4 0, set X5 1, set X6 0, set X7 0,
eval, output;

set X0 0, set X1 0, set X2 0, set X3 0, set X4 0, set X5 0, set X6 1, set X7 0,
eval, output;

set X0 0, set X1 0, set X2 0, set X3 0, set X4 0, set X5 0, set X6 0, set X7 1,
eval, output;
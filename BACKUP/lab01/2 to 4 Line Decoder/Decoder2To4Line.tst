load Decoder2To4Line.hdl,
output-file Decoder2To4Line.out,
compare-to Decoder2To4Line.cmp,

output-list X1%B3.1.3 X0%B3.1.3 Y0%B3.1.3 Y1%B3.1.3 Y2%B3.1.3 Y3%B3.1.3;

set X1 0, set X0 0,
eval, output;

set X1 0, set X0 1,
eval, output;

set X1 1, set X0 0,
eval, output;

set X1 1, set X0 1,
eval, output;
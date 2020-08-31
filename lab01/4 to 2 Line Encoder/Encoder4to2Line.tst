load Encoder4to2Line.hdl,
output-file Encoder4to2Line.out,
compare-to Encoder4to2Line.cmp,
output-list x0%B3.1.3 x1%B3.1.3 x2%B3.1.3 x3%B3.1.3 y1%B3.1.3 y0%B3.1.3;

set x0 0, set x1 0, set x2 0, set x3 1, eval, output;
set x0 0, set x1 0, set x2 1, set x3 0, eval, output;
set x0 0, set x1 1, set x2 0, set x3 0, eval, output;
set x0 1, set x1 0, set x2 0, set x3 0, eval, output;
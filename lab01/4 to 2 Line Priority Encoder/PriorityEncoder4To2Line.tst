load PriorityEncoder4To2Line.hdl,
output-file PriorityEncoder4To2Line.out,
compare-to PriorityEncoder4To2Line.cmp,

output-list X0%B3.1.3 X1%B3.1.3 X2%B3.1.3 X3%B3.1.3 Y1%B3.1.3 Y0%B3.1.3;

set X0 1, set X1 0, set X2 0, set X3 0,
eval, output;

set X0 1, set X1 0, set X2 0, set X3 1,
eval, output;

set X0 1, set X1 0, set X2 1, set X3 0,
eval, output;

set X0 1, set X1 0, set X2 1, set X3 1,
eval, output;

set X0 1, set X1 1, set X2 0, set X3 0,
eval, output;

set X0 1, set X1 1, set X2 0, set X3 1,
eval, output;

set X0 1, set X1 1, set X2 1, set X3 0,
eval, output;

set X0 1, set X1 1, set X2 1, set X3 1,
eval, output;

set X0 0, set X1 1, set X2 0, set X3 0,
eval, output;

set X0 0, set X1 1, set X2 0, set X3 1,
eval, output;

set X0 0, set X1 1, set X2 1, set X3 0,
eval, output;

set X0 0, set X1 1, set X2 1, set X3 1,
eval, output;

set X0 0, set X1 0, set X2 1, set X3 0,
eval, output;

set X0 0, set X1 0, set X2 1, set X3 1,
eval, output;

set X0 0, set X1 0, set X2 0, set X3 1,
eval, output;

/* Below is the invalid test case */
set X0 0, set X1 0, set X2 0, set X3 0,
eval, output;

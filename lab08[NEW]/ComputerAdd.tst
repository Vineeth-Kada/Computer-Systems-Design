load Computer.hdl,
output-file ComputerAdd.out,
compare-to ComputerAdd.cmp,
output-list time%S1.4.1 reset%B2.1.2 ARegister[0]%D1.7.1 DRegister[0]%D1.7.1 pc%D0.4.0 RAM64[19]%D1.7.1 RAM64[16]%D1.7.1 RAM64[17]%D1.7.1 RAM64[18]%D1.7.1;

set RAM64[16] 14, set RAM64[17] 35, set RAM64[18] 41,

ROM32K load Add.hack,
output;
 
repeat 8 {
    tick, tock, output;
}



set reset 1,
set RAM64[16] 8, set RAM64[17] 23, set RAM64[18] 40, set RAM64[19] 0,
tick, tock, output;

set reset 0,

repeat 8 {
    tick, tock, output;
}



set reset 1,
set RAM64[16] 15, set RAM64[17] 232, set RAM64[18] 176, set RAM64[19] 0,
tick, tock, output;

set reset 0,

repeat 8 {
    tick, tock, output;
}
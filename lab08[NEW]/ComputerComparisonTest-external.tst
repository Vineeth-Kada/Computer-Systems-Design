load Computer.hdl,
output-file ComputerComparisonTest-external.out,
//compare-to ComputerComparisonTest-external.cmp,
output-list time%S1.4.1 reset%B2.1.2 RAM64[16]%D1.7.1 RAM64[17]%D1.7.1 RAM64[18]%D1.7.1;

// Load a program written in the Hack machine language.
// The program adds finds the absolute value of a-b 
ROM32K load ComparisonTest.hack,
output;

set RAM64[16] %B0000000000000010,
set RAM64[17] %B0000000000000101,
output;

// First run (at the beginning PC=0)
repeat 11 {
    tick, tock, output;
}

// Reset the PC
set reset 1,
set RAM64[0] 0,
tick, tock, output;


// Second run, to check that the PC was reset correctly.
set reset 0,

repeat 11 {
    tick, tock, output;
}

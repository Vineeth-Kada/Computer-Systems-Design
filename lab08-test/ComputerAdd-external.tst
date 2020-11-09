// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/05/ComputerAdd-external.tst

load Computer.hdl,
output-file ComputerAdd-external.out,
//compare-to ComputerAdd-external.cmp,
output-list time%S1.4.1 reset%B2.1.2 RAM16K[0]%D1.7.1 RAM16K[1]%D1.7.1 RAM16K[2]%D1.7.1;

// Load a program written in the Hack machine language.
// The program adds the two constants 2 and 3 and writes the result in RAM[0]. 

set reset 1,
set RAM64[16] 0000000000000010,
set RAM64[17] 1110110000010000,
set RAM64[18] 0000000000000011,
set RAM64[19] 1110000010010000,
set RAM64[20] 0000000000000000,
set RAM64[21] 1110001100001000,
tick, tock, output;

// First run (at the beginning PC=0)
repeat 6 {
    tick, tock, output;
}

// Reset the PC
set reset 1,
set RAM16K[0] 0,
tick, tock, output;


// Second run, to check that the PC was reset correctly.
set reset 0,

repeat 6 {
    tick, tock, output;
}

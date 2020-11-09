// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/05/ComputerAdd-external.tst

load Computer.hdl,
output-file ComputerAdd-external.out,
//compare-to ComputerAdd-external.cmp,
output-list time%S1.4.1 reset%B2.1.2 RAM64[0]%D1.16.1 RAM64[1]%D1.16.1 RAM64[2]%D1.16.1;

// Load a program written in the Hack machine language.
// The program adds the two constants 2 and 3 and writes the result in RAM[0].


set reset 1,
set RAM16K[16] %B0000000000000010,
set RAM16K[17] %B1110110000010000,
set RAM16K[18] %B0000000000000011,
set RAM16K[19] %B1110000010010000,
set RAM16K[20] %B0000000000000000,
set RAM16K[21] %B1110001100001000,
tick, tock, output;


// First run (at the beginning PC=0)
repeat 6{
    set reset 0,
    tick, tock, output;
}

/*
// Reset the PC
set reset 1,
set RAM16K[0] 0,
tick, tock, output;


// Second run, to check that the PC was reset correctly.
set reset 0,

repeat 6 {
    tick, tock, output;
}
*/

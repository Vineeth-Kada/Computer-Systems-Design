load Computer.hdl,
output-file Comparison.out,
compare-to Comparison.cmp,
output-list time%S1.4.1 reset%B2.1.2 RAM64[16]%D1.7.1 RAM64[17]%D1.7.1 RAM64[18]%D1.7.1;

// Load a program written in the Hack machine language.
// The program adds finds the absolute value of a-b 
ROM32K load Comparison.hack,
set RAM64[16] %B0000010101101101, //1389
set RAM64[17] %B0000010101111000, //1400
set RAM64[18] %B0000000000000000,

// First run (at the beginning PC=0) => Testing when a<b
repeat 12 {
    tick, tock, output;
}

// Reset the PC
set reset 1,
set RAM64[16] %B0000000010101001, //169
set RAM64[17] %B0000000010000010, //130
set RAM64[18] %B0000000000000000,
tick, tock, output;


// Second run, to check that the PC was reset correctly => Testing when a>b
set reset 0,

repeat 12 {
    tick, tock, output;
}

// Reset the PC
set reset 1,
set RAM64[16] %B0011000000111001, //12345
set RAM64[17] %B0011000000111001, //12345
set RAM64[18] %B0000000000000000,
tick, tock, output;


// Third run, also to check that the PC was reset correctly => Testing when a=b
set reset 0,

repeat 12 {
    tick, tock, output;
}

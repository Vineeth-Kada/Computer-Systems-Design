load Computer.hdl,
output-file AssignmentStatement.out,
compare-to AssignmentStatement.cmp,
output-list time%S1.4.1 reset%B2.1.2 ARegister[0]%D1.7.1 DRegister[0]%D1.7.1 pc%D0.4.0 RAM64[19]%D1.7.1 RAM64[16]%D1.7.1 RAM64[17]%D1.7.1 RAM64[18]%D1.7.1;

//This program computes a + b - c and where a, b and c are variables. a is stored in RAM64[16], b is stored in RAM64[17] and c is stored in RAM64[18].
//The result of a + b - c is stored in RAM64[19].
set RAM64[16] 14, set RAM64[17] 35, set RAM64[18] 41,

// Load a program written in the Hack machine language.
ROM32K load Add.hack,
output;
 
// First run (at the beginning PC=0), also value stored in RAM64[19] at the end must be 8 
repeat 8 {
    tick, tock, output;
}



// Reset PC and initialising a, b and c to new values
set reset 1,
set RAM64[16] 8, set RAM64[17] 23, set RAM64[18] 40, set RAM64[19] 0,
tick, tock, output;

// Second run, to check that the PC was reset correctly and also to check that program works for other test cases 
// Also value stored in RAM64[19] at the end must be -9.
set reset 0,

repeat 8 {
    tick, tock, output;
}



// Reset PC and initialising a, b and c to new values
set reset 1,
set RAM64[16] 15, set RAM64[17] 232, set RAM64[18] 176, set RAM64[19] 0,
tick, tock, output;

// Third run, to check that the program works for other test cases, also value stored in RAM64[19] at the end must be 71.
set reset 0,

repeat 8 {
    tick, tock, output;
}

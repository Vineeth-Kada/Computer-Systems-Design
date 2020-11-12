load Computer.hdl,
compare-to Loop.cmp,
output-file Loop.out,

output-list time%S1.7.1 reset%D1.8.1  RAM64[16]%D1.8.1 RAM64[17]%D1.8.1 RAM64[18]%D1.8.1;

ROM32K load Loop.hack,

/***  Sum of first 10 natural numbers  ********************************************************/
// N = 10
set RAM64[16] 10,
tick, tock;

// int i=1
tick, tock; 
tick, tock;

// int sum=0
tick, tock;
tick, tock,output;

/* while(i<=10):
 *      sum = sum+i;
 *      i++;
 * After 10 iterations i should be 11 and sum should be 55*/
repeat 10{
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock, output;
}

/***  Sum of first 30 natural numbers  ********************************************************/
set reset 1,
tick,tock, output;

set reset 0,
// N = 30
set RAM64[16] 30,
tick, tock;

// int i=1
tick, tock; 
tick, tock;

// int sum=0
tick, tock;
tick, tock,output;

/* while(i<=30):
 *      sum = sum+i;
 *      i++;
 * After 30 iterations i should be 31 and sum should be 465*/
repeat 30{
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock, output;
}

/***  Sum of first 100 natural numbers  ********************************************************/
set reset 1,
tick,tock, output;

set reset 0,
// N = 100
set RAM64[16] 100,
tick, tock;

// int i=1
tick, tock; 
tick, tock;

// int sum=0
tick, tock;
tick, tock,output;

/* while(i<=100):
 *      sum = sum+i;
 *      i++;
 * After 100 iterations i should be 101 and sum should be 5050*/
repeat 100{
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock;
    tick, tock, output;
}
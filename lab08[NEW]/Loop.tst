load Computer.hdl,
//compare-to Loop.cmp
output-file Loop.out,

output-list time%S1.7.1 reset%D1.8.1  RAM64[16]%D1.8.1 RAM64[17]%D1.8.1;

ROM32K load Loop.hack,
set reset 0,

// int i=1
tick, tock; 
tick, tock;

// int sum=0
tick, tock;
tick, tock,output;

/* while(i<=100):
 *      sum = sum+i;
 *      i++;
 *
 * After 100 iterations i should be 101 and sum should be 5050 and should change */
repeat 102{
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
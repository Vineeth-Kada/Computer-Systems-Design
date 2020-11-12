load Computer.hdl,
//compare-to Loop.cmp
output-file Loot.out,

output-list time%S1.4.1 RAM64[16]%D1.8.1 RAM64[17]%D1.8.1;

ROM32K load Loop.hack,
set reset 0,

tick, tock; 
tick, tock; // i=1
tick, tock;
tick, tock,output; // sum = 0

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
# CS2310 - Foundations of Computer Systems Design Lab
**Team:** Vineeth, Ravi, Goutam

Code Written for Foundations of Computer Systems Design Assignments under **Prof. Chandra Sekhar**, IITM.
In Lab 8 we implement a Hack CPU! Previous Labs have parts developed for it...
We used [nand2tetris](https://www.nand2tetris.org/) for writing hdl code

**Index:**
* Lab1: Encoder, Decoder, Priority Encoder
* Lab2: Demultiplexer, Comparator, One Bit Error Detection, Multiplexer, Priority MUX
* Lab3: Carry Lookahead based adder(CLA) with and without Higher level terms, Ripple Carry Adder(RCA)
* Lab4: Signed and Unsigned Multiplier
* Lab5: Designed Interger unit.
    * Input: two 8 bit integers - X[8], Y[8], sPin(Signed/Unsigned), opCode
    * Output: Z = X{op}Y, OF = 1(if overflow), EQ = 1 (if X == Y)
* Lab6: Floating point multiplier
* Lab7: [Hack ALU](https://github.com/Vineeth-Kada/CS2310/blob/main/lab07/HackALU.hdl)

    Hack ALU can perform 18 different operations on x,y based on these inputs
    
    IN x[16], y[16], zx, nx, zy, ny, f, n0;
    
    
    OUT out[16], zr, ng;

    PARTS:

        
            xMUX0 = x if zx = 0         yMUX0 = y if zy = 0
                    0 if zx = 1                 0 if zy = 1

                    x       0                    y       0      
                    ┼16     ┼16                  ┼16     ┼16
                ┌───┴───────┴────┐           ┌───┴───────┴────┐
          zx ___│  16-bit 2To1   │     zy ___│   16-bit 2To1  │
                │       MUX      │           │       MUX      │
                └────────┬───────┘           └────────┬───────┘
                         │                            │   
                       xMUX0                        yMUX0      
                         │       nx                   │      ny   
                         │       │                    │       │  
                     ┌───┴───────┴────┐           ┌───┴───────┴────┐
                     │      16-bit    │           │      16-bit    │
                     │  BITWISE XOR   │           │  BITWISE XOR   │
                     └────────┬───────┘           └────────┬───────┘
                              │                            │   
                              p                            q
                              
     

              x       0                    y       0      
              ┼16     ┼16                  ┼16     ┼16
          ┌───┴───────┴────┐           ┌───┴───────┴────┐
    zx ___│  16-bit 2To1   │     zy ___│   16-bit 2To1  │
          │       MUX      │           │       MUX      │
          └────────┬───────┘           └────────┬───────┘
                   │                            │   
                 xMUX0                        yMUX0      
                   │       nx                   │      ny   
                   │       │                    │       │  
               ┌───┴───────┴────┐           ┌───┴───────┴────┐
               │      16-bit    │           │      16-bit    │
               │  BITWISE XOR   │           │  BITWISE XOR   │
               └────────┬───────┘           └────────┬───────┘
                        │                            │   
                        p                            q

        
        
* Lab8: Hack CPU

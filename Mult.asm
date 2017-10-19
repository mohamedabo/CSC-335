// This file is part of the materials accompanying the book 
// "The Elements of Computing Systems" by Nisan and Schocken, 
// MIT Press. Book site: www.idc.ac.il/tecs
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

   @sum    
        M=0     // Initialize sum to 0
        @R1
        D=M
        @count  
        M=D     // Initialize count to the value at RAM[1]
(LOOP)  
        @count
        D=M
        @END
        D;JEQ   // Check if count is 0, if so, goto END
        @R0
        D=M
        @sum
        M=M+D   //  Add RAM[0] to sum
        @count
        M=M-1   // Decrement count by 1
        @LOOP
        0;JMP   // Repeats the loop
(END)   
        @sum
        D=M
        @R2
        M=D     // Write sum to RAM[2]

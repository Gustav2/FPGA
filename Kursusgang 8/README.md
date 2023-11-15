# Kursus 8

* Ex1: The figure below shows a 4-stage shift register made out of D-flip-flops. 

** The Q output from the last 2 stages are used as inputs for an XOR gate. 

** The output of the XOR gate is fed to the 1st flip-flop as an input.
![shift](https://github.com/Gustav2/FPGA/assets/144771985/b96df57c-1b96-4374-8a47-3a6fd553088a)


** As initial value the 1st stage holds an 1  (A=1). The subsequent stages hold zeros.

** a: Determine the content of register stages after each of the the sub-sequent clock pulses and put results in a table.

** b: What happens if all stages are initial zero.

* Ex2: Build an 4-bit serial-in parallel-out register. User SW0 as input and BT0 as shift. Show the result on LED0-LED3.

* Ex3:  An n-bit-memory block is an element with n inputs and n outputs as, well as a writeEnable and readEnable input. Build an 4 bit memory block it letting inputs be switches and output LEDs. Use BT0 as readEnable, and BT1 as writeEnable.

* Ex4: How can the memory block above be extended to include a multitude of 4-bit memory blocks.

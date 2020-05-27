# IDEA_Spartan3E
Implementation of IDEA Algorithm in Spartan 3E

The IDEA-algorithm consists of 8 steps of encryption (also called rounds) with a final output transformation.

direct: The direct implementation of the algorithm does not reuse any of the hardware. It can be realized completely using combinatorial    logic and is the fastest implementation. But the available logical and routing resources in Spartan3E will be not enough to implement the design.

rcs1: Resource Constrained Scheduling is implemented using only one round module and the output transformation. This is possible, because all the round modules have the same architecture. The results of each round computation can be saved in registers and used as inputs for the round module at the next step. After 8 rounds the saved values are then given to the output transformation. A control module is used for controlling this data flow. This is slower than the direct implementation but much more resource-efficient.

rcs2: Each round is further split up into four steps in order to have exactly one modulo multiplier and one adder in every step to further reduce resource requirement.

rcs2plus: This part considers how we can run the clocked round module at a higher throughput.

This project was completed as a part of the VHDL Lab at TUM.

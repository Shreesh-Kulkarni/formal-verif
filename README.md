# riscv-formal-verif
A repository for formally verifying all the RISC-V cores I have designed.

I would be including sample codes for common formal verification tests initially to get a hang of Yosys and Symbiyosys. You can ignore these sample files for now. 

To run the program, you need to have a linux distribution installed preferably Ubuntu 16.04 onwards as YosysHQ docs doesn't support earlier versions. 

For running formal checks, symbiyosys has to be installed and built in your linux distribution. This essentially acts as a frontend tool for your verification checks. 
You can view the docs for installing symbiyosys [Symbiyosys Guide,](https://symbiyosys.readthedocs.io/en/latest/install.html)

For yosys, you can go to the Github repository of Yosys- [Yosys.](https://github.com/YosysHQ/yosys)

I plan on including more docs and other instructions/commands/guides for running formal checks on custom riscv cores. I would be using the riscv-formal framework by Clifford Wolf-(Designed by Yosys itself)- [riscv-formal](https://github.com/YosysHQ/riscv-formal)

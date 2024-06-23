package CS_coverage_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;

    `include "testbench/DB/test/environment/coverage/DB_covergroup.sv"

    `include "testbench/LM/test/environment/coverage/LM_covergroup.sv"
    
    `include "testbench/VGA/test/environment/coverage/VGA_covergroup.sv"


    `include "testbench/CS/test/environment/coverage/CS_coverage.svh"

  endpackage : CS_coverage_pack
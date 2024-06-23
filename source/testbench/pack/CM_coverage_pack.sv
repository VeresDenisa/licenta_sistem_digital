package CM_coverage_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
  
    `include "testbench/CM/test/environment/coverage/CM_input_covergroup.sv"
    `include "testbench/CM/test/environment/coverage/CM_output_covergroup.sv"
    
    `include "testbench/CM/test/environment/coverage/CM_coverage.svh"
  endpackage : CM_coverage_pack
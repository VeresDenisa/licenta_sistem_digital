package CM_test_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
    import CM_sequence_pack::*;
  
    import CM_environment_pack::*;

    `define CLOCK 10
  
    `include "testbench/CM/test/test/CM_test.svh"
  endpackage : CM_test_pack
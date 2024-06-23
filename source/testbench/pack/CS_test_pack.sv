package CS_test_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
    import CS_sequence_pack::*;
  
    import CS_environment_pack::*;

    `define CLOCK 10

    `include "testbench/CS/test/test/CS_test.svh"
  endpackage : CS_test_pack
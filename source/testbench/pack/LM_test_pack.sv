package LM_test_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
    import LM_sequence_pack::*;
  
    import LM_environment_pack::*;

    `define CLOCK 10
  
    `include "testbench/LM/test/test/LM_test.svh"
  endpackage : LM_test_pack
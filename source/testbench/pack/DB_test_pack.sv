package DB_test_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
    import DB_sequence_pack::*;
  
    import DB_environment_pack::*;

    `define CLOCK 10
  
    `include "testbench/DB/test/test/DB_test.svh"
  endpackage : DB_test_pack
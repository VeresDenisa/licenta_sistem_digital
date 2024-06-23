package CD_test_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
    import CD_sequence_pack::*;
  
    import CD_environment_pack::*;

    `define CLOCK 10
  
    `include "testbench/CD/test/test/CD_test.svh"
    `include "testbench/CD/test/test/CD_test_no_config.svh"
  endpackage : CD_test_pack
package LM_coverage_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
  
    `include "testbench/CM/test/environment/coverage/CM_output_covergroup.sv"

    `include "testbench/LM/test/environment/coverage/LM_covergroup.sv"

    `include "testbench/UART/test/environment/coverage/UART_covergroup.sv"

    `include "testbench/LM/test/environment/coverage/LM_coverage.svh"
  endpackage : LM_coverage_pack
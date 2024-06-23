package UART_environment_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
    import UART_sequence_pack::*;
  
    import UART_agent_pack::*;
    import UART_coverage_pack::*;
   
    `include "testbench/environment_config.svh"

    `include "testbench/CONF/test/environment/sequencer/CONF_input_virtual_sequencer.svh"

    `include "testbench/CONF/test/sequence/CONF_input_virtual_sequence.svh"

    `include "testbench/UART/test/environment/UART_environment.svh"
  endpackage : UART_environment_pack
package VGA_environment_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
    import VGA_sequence_pack::*;
  
    import VGA_agent_pack::*;
    import VGA_coverage_pack::*;
   
    `include "testbench/environment_config.svh"

    `include "testbench/CONF/test/environment/sequencer/CONF_input_virtual_sequencer.svh"

    `include "testbench/CONF/test/sequence/CONF_input_virtual_sequence.svh"
    
    `include "testbench/VGA/test/environment/VGA_environment.svh"
  endpackage : VGA_environment_pack
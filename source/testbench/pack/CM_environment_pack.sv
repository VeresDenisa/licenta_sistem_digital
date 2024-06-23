package CM_environment_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
    import CM_sequence_pack::*;
  
    import CM_agent_pack::*;
    import CM_coverage_pack::*;
   
    `include "testbench/environment_config.svh"

    `include "testbench/CONF/test/environment/sequencer/CONF_output_virtual_sequencer.svh"

    `include "testbench/CONF/test/sequence/CONF_output_virtual_sequence.svh"
    
    `include "testbench/CM/test/environment/CM_environment.svh"
  endpackage : CM_environment_pack
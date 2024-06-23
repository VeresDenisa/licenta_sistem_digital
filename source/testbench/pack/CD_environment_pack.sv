package CD_environment_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
    import CD_sequence_pack::*;
  
    import CD_agent_pack::*;
    import CD_coverage_pack::*;
   
    `include "testbench/environment_config.svh"

    `include "testbench/CONF/test/environment/sequencer/CONF_input_virtual_sequencer.svh"

    `include "testbench/CONF/test/sequence/CONF_input_virtual_sequence.svh"
    
    `include "testbench/CD/test/environment/CD_environment.svh"
  endpackage : CD_environment_pack
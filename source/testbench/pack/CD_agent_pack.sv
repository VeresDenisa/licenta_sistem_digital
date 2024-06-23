package CD_agent_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
    
    import item_pack::*;
  
    `include "testbench/agent_config.svh"
    
    `include "testbench/CONF/test/environment/agent/CONF_input_driver.svh"
    `include "testbench/CONF/test/environment/agent/CONF_input_monitor.svh"
    `include "testbench/CONF/test/environment/agent/CONF_input_sequencer.svh"
    `include "testbench/CONF/test/environment/agent/CONF_input_agent.svh"

    `include "testbench/CD/test/environment/agent/CD_monitor.svh"
    `include "testbench/CD/test/environment/agent/CD_agent.svh"
  endpackage : CD_agent_pack










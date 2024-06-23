package CM_agent_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
    
    import item_pack::*;
  
    `include "testbench/agent_config.svh"

    `include "testbench/CM/test/environment/agent/CM_input_driver.svh"
    `include "testbench/CM/test/environment/agent/CM_input_monitor.svh"
    `include "testbench/CM/test/environment/agent/CM_input_agent.svh"

    `include "testbench/CM/test/environment/agent/CM_output_driver.svh"
    `include "testbench/CM/test/environment/agent/CM_output_monitor.svh"
    `include "testbench/CM/test/environment/agent/CM_output_agent.svh"

    `include "testbench/CONF/test/environment/agent/CONF_output_driver.svh"
    `include "testbench/CONF/test/environment/agent/CONF_output_monitor.svh"
    `include "testbench/CONF/test/environment/agent/CONF_output_sequencer.svh"
    `include "testbench/CONF/test/environment/agent/CONF_output_agent.svh"
  endpackage : CM_agent_pack










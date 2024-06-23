package VGA_agent_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
    
    import item_pack::*;
  
    `include "testbench/agent_config.svh"

    `include "testbench/CONF/test/environment/agent/CONF_input_driver.svh"
    `include "testbench/CONF/test/environment/agent/CONF_input_monitor.svh"
    `include "testbench/CONF/test/environment/agent/CONF_input_sequencer.svh"
    `include "testbench/CONF/test/environment/agent/CONF_input_agent.svh"

    `include "testbench/VGA/test/environment/agent/VGA_input_driver.svh"
    `include "testbench/VGA/test/environment/agent/VGA_input_monitor.svh"
    `include "testbench/VGA/test/environment/agent/VGA_input_agent.svh"

    `include "testbench/VGA/test/environment/agent/VGA_output_monitor.svh"
    `include "testbench/VGA/test/environment/agent/VGA_output_agent.svh"
  endpackage : VGA_agent_pack










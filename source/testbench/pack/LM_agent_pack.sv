package LM_agent_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
    
    import item_pack::*;
  
    `include "testbench/agent_config.svh"

    `include "testbench/CM/test/environment/agent/CM_output_driver.svh"
    `include "testbench/CM/test/environment/agent/CM_output_monitor.svh"
    `include "testbench/CM/test/environment/agent/CM_output_agent.svh"
    
    `include "testbench/LM/test/environment/agent/LM_monitor.svh"
    `include "testbench/LM/test/environment/agent/LM_agent.svh"

    `include "testbench/UART/test/environment/agent/UART_output_driver.svh"
    `include "testbench/UART/test/environment/agent/UART_output_monitor.svh"
    `include "testbench/UART/test/environment/agent/UART_output_agent.svh"
  endpackage : LM_agent_pack










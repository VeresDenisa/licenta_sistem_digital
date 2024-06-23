package CS_agent_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
    
    import item_pack::*;

    `include "testbench/agent_config.svh"    
    
    `include "testbench/DB/test/environment/agent/DB_driver.svh"
    `include "testbench/DB/test/environment/agent/DB_monitor.svh"
    `include "testbench/DB/test/environment/agent/DB_agent.svh"
    
    `include "testbench/LM/test/environment/agent/LM_monitor.svh"
    `include "testbench/LM/test/environment/agent/LM_agent.svh"

    `include "testbench/UART/test/environment/agent/UART_input_driver.svh"
    `include "testbench/UART/test/environment/agent/UART_input_monitor.svh"
    `include "testbench/UART/test/environment/agent/UART_input_agent.svh"

    `include "testbench/VGA/test/environment/agent/VGA_output_monitor.svh"
    `include "testbench/VGA/test/environment/agent/VGA_output_agent.svh"
  endpackage : CS_agent_pack










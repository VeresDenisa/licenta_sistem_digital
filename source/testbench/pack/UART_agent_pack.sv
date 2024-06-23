package UART_agent_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
    
    import item_pack::*;
  
    `include "testbench/agent_config.svh"
    
    `include "testbench/CONF/test/environment/agent/CONF_input_driver.svh"
    `include "testbench/CONF/test/environment/agent/CONF_input_monitor.svh"
    `include "testbench/CONF/test/environment/agent/CONF_input_sequencer.svh"
    `include "testbench/CONF/test/environment/agent/CONF_input_agent.svh"

    `include "testbench/UART/test/environment/agent/UART_input_driver.svh"
    `include "testbench/UART/test/environment/agent/UART_input_monitor.svh"
    `include "testbench/UART/test/environment/agent/UART_input_agent.svh"

    `include "testbench/UART/test/environment/agent/UART_output_driver.svh"
    `include "testbench/UART/test/environment/agent/UART_output_monitor.svh"
    `include "testbench/UART/test/environment/agent/UART_output_agent.svh"
  endpackage : UART_agent_pack










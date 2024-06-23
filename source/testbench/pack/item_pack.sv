package item_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    `include "testbench/CD/test/item/CD_item.svh"

    `include "testbench/CM/test/item/CM_input_item.svh"
    `include "testbench/CM/test/item/CM_output_item.svh"

    `include "testbench/CONF/test/item/CONF_item.svh"

    `include "testbench/DB/test/item/DB_item.svh"

    `include "testbench/LM/test/item/LM_item.svh"

    `include "testbench/UART/test/item/UART_input_frame.svh"
    `include "testbench/UART/test/item/UART_input_item.svh"
    `include "testbench/UART/test/item/UART_output_item.svh"
    
    `include "testbench/VGA/test/item/VGA_input_item.svh"
    `include "testbench/VGA/test/item/VGA_output_item.svh"
  endpackage : item_pack
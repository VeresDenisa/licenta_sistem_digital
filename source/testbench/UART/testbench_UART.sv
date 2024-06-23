import uvm_pkg::*;
`include "uvm_macros.svh"
 
import UART_test_pack::*;
`include "assertion_UART.sv"

`define CLOCK 10

module testbench_UART;  
    bit clk;
    bit clkinVGA;
    bit rst_n;
    
    initial begin
        clk = 1'b0;
        forever #(`CLOCK*8) clk = ~clk;
    end

    initial begin
        clkinVGA = 1'b0;
        forever #(`CLOCK/2) clkinVGA = ~clkinVGA;
    end

    initial begin
        rst_n = 1'b1;
        #`CLOCK rst_n = 1'b0;
        #`CLOCK rst_n = 1'b1;
    end
    
    UART_input_VIF  UART_input_i(clk);
    UART_output_VIF UART_output_i(clk);
    CONF_input_VIF  CONF_input_i(clkinVGA);
    
    UART UART_DUT (
        .clk(clk),
        .rst_n(rst_n),
        .clkinVGA(clkinVGA),
        .in(UART_input_i.in),
        .c_addr(CONF_input_i.c_addr),
        .c_data(CONF_input_i.c_data),
        .c_valid(CONF_input_i.c_valid),
        .c_ready(CONF_input_i.c_ready),
        .error(UART_output_i.error),
        .valid_error(UART_output_i.valid_error),
        .out(UART_output_i.out),
        .valid_out(UART_output_i.valid_out)
        );

    bind testbench_UART.UART_DUT assertion_UART ass_UART (
        .clk(clk),
        .rst_n(rst_n),
        .clkinVGA(clkinVGA),
        .in(UART_input_i.in),
        .c_addr(CONF_input_i.c_addr),
        .c_data(CONF_input_i.c_data),
        .c_valid(CONF_input_i.c_valid),
        .c_ready(CONF_input_i.c_ready),
        .error(UART_output_i.error),
        .valid_error(UART_output_i.valid_error),
        .out(UART_output_i.out),
        .valid_out(UART_output_i.valid_out)
        );

    initial begin
        uvm_config_db#(virtual UART_input_VIF) ::set(null, "uvm_test_top.env.UART_input_agent_h*",  "UART_input_VIF",  UART_input_i);
        uvm_config_db#(virtual UART_output_VIF)::set(null, "uvm_test_top.env.UART_output_agent_h*", "UART_output_VIF", UART_output_i);
        uvm_config_db#(virtual CONF_input_VIF) ::set(null, "uvm_test_top.env.CONF_agent_h*",        "CONF_input_VIF",  CONF_input_i);
    end
    
    initial begin
        run_test();
    end
    
    initial begin 
        $dumpfile("dump.vcd"); $dumpvars;
    end
endmodule : testbench_UART
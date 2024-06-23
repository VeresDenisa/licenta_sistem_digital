import uvm_pkg::*;
`include "uvm_macros.svh"
 
import VGA_test_pack::*;
`include "assertion_VGA.sv"

`define CLOCK 10

module testbench_VGA;  
    bit clk;
    bit rst_n;
    
    initial begin
        clk = 1'b0;
        forever #(`CLOCK/2) clk = ~clk;
    end

    initial begin
        rst_n = 1'b1;
        #`CLOCK rst_n = 1'b0;
        #`CLOCK rst_n = 1'b1;
    end
    
    VGA_input_VIF  VGA_input_i(clk);
    VGA_output_VIF VGA_output_i(clk);
    CONF_input_VIF CONF_input_i(clk);
    
    VGA VGA_DUT (
        .clk(clk),
        .rst_n(rst_n),
        .data_in(VGA_input_i.data_in),
        .c_addr(CONF_input_i.c_addr),
        .c_data(CONF_input_i.c_data),
        .c_valid(CONF_input_i.c_valid),
        .c_ready(CONF_input_i.c_ready),
        .HSync(VGA_output_i.HSync),
        .VSync(VGA_output_i.VSync),
        .RED(VGA_output_i.RED),
        .GREEN(VGA_output_i.GREEN),
        .BLUE(VGA_output_i.BLUE)
        );


    bind testbench_VGA.VGA_DUT assertion_VGA ass_VGA (
        .clk(clk),
        .rst_n(rst_n),
        .data_in(VGA_input_i.data_in),
        .c_addr(CONF_input_i.c_addr),
        .c_data(CONF_input_i.c_data),
        .c_valid(CONF_input_i.c_valid),
        .c_ready(CONF_input_i.c_ready),
        .HSync(VGA_output_i.HSync),
        .VSync(VGA_output_i.VSync),
        .RED(VGA_output_i.RED),
        .GREEN(VGA_output_i.GREEN),
        .BLUE(VGA_output_i.BLUE)
        );

    initial begin
        uvm_config_db#(virtual VGA_input_VIF) ::set(null, "uvm_test_top.env.VGA_input_agent_h*",  "VGA_input_VIF",  VGA_input_i);
        uvm_config_db#(virtual VGA_output_VIF)::set(null, "uvm_test_top.env.VGA_output_agent_h*", "VGA_output_VIF", VGA_output_i);
        uvm_config_db#(virtual CONF_input_VIF)::set(null, "uvm_test_top.env.CONF_agent_h*",       "CONF_input_VIF", CONF_input_i);
    end
    
    initial begin
        run_test();
    end
    
    initial begin 
        $dumpfile("dump.vcd"); $dumpvars;
    end
endmodule : testbench_VGA
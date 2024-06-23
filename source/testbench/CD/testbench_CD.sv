import uvm_pkg::*;
`include "uvm_macros.svh"
 
import CD_test_pack::*;
`include "assertion_CD.sv"

`define CLOCK 10

module testbench_CD;  
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
    
    CD_VIF         CD_i(clk);
    CONF_input_VIF CONF_input_i(clkinVGA);
    
    CD CD_DUT (
        .clk(clk),
        .rst_n(rst_n),
        .clkinVGA(clkinVGA),
        .c_ready(CONF_input_i.c_ready),
        .c_addr(CONF_input_i.c_addr),
        .c_data(CONF_input_i.c_data),
        .c_valid(CONF_input_i.c_valid),
        .clk_VGA(CD_i.clk_VGA),
        .clk_UART(CD_i.clk_UART),
        .clk_LM(CD_i.clk_LM),
        .clk_DB(CD_i.clk_DB)
        );

    bind testbench_CD.CD_DUT assertion_CD ass_CD (
        .clk(clk),
        .rst_n(rst_n),
        .clkinVGA(clkinVGA),
        .c_ready(CONF_input_i.c_ready),
        .c_addr(CONF_input_i.c_addr),
        .c_data(CONF_input_i.c_data),
        .c_valid(CONF_input_i.c_valid),
        .clk_VGA(CD_i.clk_VGA),
        .clk_UART(CD_i.clk_UART),
        .clk_LM(CD_i.clk_LM),
        .clk_DB(CD_i.clk_DB)
        );

    initial begin
        uvm_config_db#(virtual CD_VIF)        ::set(null, "uvm_test_top.env.CD_agent_h*",   "CD_VIF",         CD_i);
        uvm_config_db#(virtual CONF_input_VIF)::set(null, "uvm_test_top.env.CONF_agent_h*", "CONF_input_VIF", CONF_input_i);
    end
    
    initial begin
        run_test();
    end
    
    initial begin 
        $dumpfile("dump.vcd"); $dumpvars;
    end
endmodule : testbench_CD
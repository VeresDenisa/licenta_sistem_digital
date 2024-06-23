import uvm_pkg::*;
`include "uvm_macros.svh"
 
import CS_test_pack::*;

`define CLOCK 10

module testbench_CS;  
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
    
    UART_input_VIF UART_input_i(clk);
    VGA_output_VIF VGA_output_i(clk);
    DB_VIF DB_i(clk);
    LM_VIF LM_i(clk);
    
    CS CS_DUT (
        .clk(clk),
        .rst_n(rst_n),

        .btnHS(DB_i.HS),
        .btnVS(DB_i.VS),
        .btnUART(DB_i.DF_UART),
        .btnVGA(DB_i.DF_VGA),

        .in(UART_input_i.in),

        .LEDS(LM_i.leds),

        .HSYNC(VGA_output_i.HSync),
        .VSYNC(VGA_output_i.VSync),
        .RED(VGA_output_i.RED),
        .GREEN(VGA_output_i.GREEN),
        .BLUE(VGA_output_i.BLUE)
        );

    initial begin
        uvm_config_db#(virtual UART_input_VIF)::set(null, "uvm_test_top.env.UART_input_agent_h*", "UART_input_VIF", UART_input_i);
        uvm_config_db#(virtual VGA_output_VIF)::set(null, "uvm_test_top.env.VGA_output_agent_h*", "VGA_output_VIF", VGA_output_i);
        uvm_config_db#(virtual DB_VIF)::set(null, "uvm_test_top.env.DB_agent_h*", "DB_VIF", DB_i);
        uvm_config_db#(virtual LM_VIF)::set(null, "uvm_test_top.env.LM_agent_h*", "LM_VIF", LM_i);
    end
    
    initial begin
        run_test();
    end
    
    initial begin 
        $dumpfile("dump.vcd"); $dumpvars;
    end
endmodule : testbench_CS
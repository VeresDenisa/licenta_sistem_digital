import uvm_pkg::*;
`include "uvm_macros.svh"
 
import CM_test_pack::*;

`define CLOCK 10

module testbench_CM;  
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
    
    CM_input_VIF    CM_input_i(clk);
    CM_output_VIF   CM_output_i(clk);
    CONF_output_VIF CONF_output_i(clk);
    
    CM CM_DUT (
        .clk(clk),
        .rst_n(rst_n),
        .Empty(CM_input_i.Empty),
        .c_ready(CONF_output_i.c_ready),
        .RXD_Data(CM_input_i.RXD_Data),
        .Vertical_Split(CM_input_i.Vertical_Split),
        .Horizontal_Split(CM_input_i.Horizontal_Split),
        .VGA_debug(CM_input_i.VGA_debug),
        .HSync(CM_input_i.HSync),
        .VSync(CM_input_i.VSync),
        .c_addr(CONF_output_i.c_addr),
        .c_data(CONF_output_i.c_data),
        .c_valid(CONF_output_i.c_valid),
        .Config_Status(CM_output_i.Config_Status),
        .Config_Notification(CM_output_i.Config_Notification),
        .Config_Notification_Valid(CM_output_i.Config_Notification_Valid),
        .Config_Error(CM_output_i.Config_Error),
        .Error_Valid(CM_output_i.Error_Valid),
        .VGA_Notification(CM_output_i.VGA_Notification),
        .VGA_Notification_Valid(CM_output_i.VGA_Notification_Valid),
        .Data_VGA(CM_output_i.Data_VGA)
        );
    
    initial begin
        uvm_config_db#(virtual CM_input_VIF)   ::set(null, "uvm_test_top.env.CM_input_agent_h*",    "CM_input_VIF",    CM_input_i);
        uvm_config_db#(virtual CM_output_VIF)  ::set(null, "uvm_test_top.env.CM_output_agent_h*",   "CM_output_VIF",   CM_output_i);
        uvm_config_db#(virtual CONF_output_VIF)::set(null, "uvm_test_top.env.CONF_agent_h*", "CONF_output_VIF", CONF_output_i);
    end
    
    initial begin
        run_test();
    end
    
    initial begin 
        $dumpfile("dump.vcd"); $dumpvars;
    end
endmodule : testbench_CM
/*
---CLOCK DIVIDER---

The module is formed by:
   - CLOCK DIVIDER CONFIGURATION MODULE: sets the limits for the counters
   -4 counters:
       -CLK VGA - clock for VGA and CM
       -CLK UART - clock for UART
       -CLK LM - clock for LM (1Hz)
       -CLK DB - clock for DB (20Hz)
*/ 



module CD
  #(`include "../PARAM/CD_params.v")
(
input clk,
input rst_n,

input clkinVGA,

input [WIDTH_CONFIG_ADDR-1:0]c_addr,
input [WIDTH_CONFIG_DATA-1:0]c_data, 
input  c_valid, 
output c_ready, 

output clk_VGA,
output clk_UART,
output clk_LM,
output clk_DB
);

`include "../PARAM/CLK_values.v"

wire c_VGA_ready;
wire c_UART_ready;
wire [WIDTH_UART_CLK_LIMIT-1:0]baudrate;
wire [WIDTH_VGA_CLK_LIMIT-1:0] resolution;

CD_counter #(.WIDTH(WIDTH_VGA_CLK_LIMIT)) CNT_VGA(.clk(clk), .rst_n(c_VGA_ready&rst_n), .limit(resolution), .clkout(clk_VGA));	
CD_counter #(.WIDTH(WIDTH_UART_CLK_LIMIT)) CNT_UART(.clk(clk), .rst_n(c_UART_ready&rst_n), .limit(baudrate), .clkout(clk_UART));	
CD_counter #(.WIDTH(WIDTH_LED_MANAGER_CLK_LIMIT)) CNT_LM(.clk(clk), .rst_n(rst_n), .limit(CLK_LED_MANAGER), .clkout(clk_LM));	
CD_counter #(.WIDTH(WIDTH_DEBOUNCER_CLK_LIMIT)) CNT_DB(.clk(clk), .rst_n(rst_n), .limit(CLK_DEBOUNCER), .clkout(clk_DB));	

CD_config CLOCK_DIVIDER_CONFIG(.clk(clkinVGA), .rst_n(rst_n),
					.c_valid(c_valid), .c_addr(c_addr), .c_data(c_data),
					.c_VGA_ready(c_VGA_ready), .c_UART_ready(c_UART_ready),
					.baudrate(baudrate), .resolution(resolution));		
			
assign c_ready = c_VGA_ready & c_UART_ready;
		
endmodule
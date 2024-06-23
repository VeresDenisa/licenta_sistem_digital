/*
---LED MANAGER---

This module receives errors/data/actualization from other modules and represents 
them on the board's LEDS.
*/



module LM
#(`include "LM_params.v")
( 
input clk,
input rst_n,

input UART_data_debug_switch,

input [WIDTH_UART_DATA-1:0]    UART_data,
input                          UART_data_valid,

input [WIDTH_VGA_ERROR-1:0]    CM_errors,
input                          CM_errors_valid,

input [WIDTH_UART_ERROR-1:0]   UART_errors,
input                          UART_errors_valid,

input [WIDTH_CONFIGURATION-1:0]config_notification,

output [WIDTH_LEDS-1:0]        leds
);

wire [WIDTH_UART_DATA-1:0] leds_UART_info;
wire [WIDTH_UART_ERROR-1:0]leds_UART_error;
wire [WIDTH_VGA_ERROR-1:0] leds_CM_error;
 
LM_decoder #(.WIDTH(WIDTH_UART_DATA)) UART_info(.clk(clk), .rst_n(rst_n), 
  .rd_data(UART_data), .fifo_empty(UART_data_valid), 
  .leds(leds_UART_info));
  
LM_decoder #(.WIDTH(WIDTH_UART_ERROR)) UART_error(.clk(clk), .rst_n(rst_n), 
  .rd_data(UART_errors), .fifo_empty(UART_errors_valid), 
  .leds(leds_UART_error));
  
LM_decoder #(.WIDTH(WIDTH_VGA_ERROR)) CM_error(.clk(clk), .rst_n(rst_n), 
  .rd_data(CM_errors), .fifo_empty(CM_errors_valid), 
  .leds(leds_CM_error));
  
assign leds = (~UART_data_debug_switch) ? {~rst_n, ~UART_data_debug_switch, leds_UART_error, leds_CM_error} : {leds_UART_info};

endmodule

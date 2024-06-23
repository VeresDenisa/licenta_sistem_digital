/*//--------------------------------------------------------------------------------------------------
---UART---

The module is formed by:
   - UART_CONFIGURATION: handles the configuration of the UART module parameters (STOPBITS and PARITYBIT)
   - UART_OVERSAMPLING: handles the oversampling of the asynchronous received data.
   - UART_STATE: checks the UART protocol and sends out errors and data.
*///--------------------------------------------------------------------------------------------------




module UART
#(`include "../PARAM/UART_params.v")
( 
input clk,
input rst_n,

input clkinVGA,

input in,

input [WIDTH_CONFIG_ADDR-1:0]c_addr, // 01xx - UART, 10xx - VGA
input [WIDTH_CONFIG_DATA-1:0]c_data, // configuratia
input                        c_valid, // 1 - date valide, 0 - date invalide
output                       c_ready, // 1 - magistrala libera, 0 - magistrala ocupata

output [WIDTH_ERROR-1:0]     error,
output                       valid_error,

output [WIDTH_DATABITS-1:0]  out,
output                       valid_out
);

`include "../PARAM/CS_params.v"

wire paritybit;
wire stopbit;

wire data;
wire valid_data;

UART_config UART_CONFIG(.clk(clkinVGA), .rst_n(rst_n),
					.c_valid(c_valid), .c_addr(c_addr),
					.c_data(c_data), .c_ready(c_ready),
					.parity_bit_config(paritybit), .stop_bit_config(stopbit));	

UART_state UART_STATE(.clk(clk), .rst_n(rst_n&c_ready),
					.data(data), .valid_data(valid_data),
					.error(error), .valid_error(valid_error),
					.out(out), .valid_out(valid_out),
					.parity_bit_config(paritybit), .stop_bit_config(stopbit));	
					
UART_sampler SAMPLER(.clk(clk), .rst_n(rst_n), .in(in),
	        .stop(valid_out|valid_error), .out(data), .valid(valid_data));
endmodule
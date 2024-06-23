//--------------------------------------------------------------------------------------------------
//---UART CONFIGURATION MODULE---
//
// The module is connected to a configuration bus, which contains an address, data, ready and valid.
// UART adresses:
//	   - PARITY ADDRESS: 0101
//   	- STOP ADDRESS: 0110
// UART configuration variants:
//    - PARITY: 00-NONE (default), 10-EVEN, 11-ODD
//    - STOP: 0-1 BIT (default), 1-2 BITS
//--------------------------------------------------------------------------------------------------



module UART_config 
  #(`include "UART_params.v")
(
input clk,
input rst_n,

input  [WIDTH_CONFIG_ADDR-1:0]c_addr, 
input  [WIDTH_CONFIG_DATA-1:0]c_data, 
input                         c_valid,                       
output                        c_ready,                       

output parity_bit_config, // 0 - no parity, 1 - parity
output stop_bit_config    // 0 - 1 bit, 1 - 2 bits
);

`include "CS_params.v"

reg [WIDTH_PARITY-1:0]parity_bit_reg, parity_bit_next;
reg                   stop_bit_reg, stop_bit_next;
reg                   c_ready_reg, c_ready_next;

always @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		parity_bit_reg <= PARITYBIT_NONE;
		stop_bit_reg   <= STOPBITS_1;
		c_ready_reg    <= 1'b1;
	end	else begin
		parity_bit_reg <= parity_bit_next;
		stop_bit_reg   <= stop_bit_next;
		c_ready_reg    <= c_ready_next;
	end
end

always @(*) begin
	parity_bit_next = parity_bit_reg;
	stop_bit_next   = stop_bit_reg;
	c_ready_next    = c_ready_reg;
	
	c_ready_next = 1'b1;
	if(c_valid) begin
		if(c_addr == UART_PARITY_ADDR) begin
			parity_bit_next = c_data[1:0];
		  c_ready_next = 1'b0;
		end	else if(c_addr == UART_STOP_ADDR) begin
			stop_bit_next = c_data[0];
		  c_ready_next = 1'b0;
		end
	end
end

assign parity_bit_config = parity_bit_reg[1];
assign stop_bit_config   = stop_bit_reg;
assign c_ready           = c_ready_reg;

endmodule

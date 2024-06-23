
/*
---LED MANAGER DECODER---

This module receives errors/data/actualization from other modules and represents 
them on the board's LEDS.
*/



module LM_decoder
  #(`include "../PARAM/LM_params.v", 
  parameter WIDTH = WIDTH_LEDS)
(
input clk,
input rst_n,

input [WIDTH-1:0] rd_data,
input             fifo_empty,

output [WIDTH-1:0]leds
);

reg [WIDTH-1:0]leds_reg, leds_next;

always @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
	  leds_reg <= 'd0;
	end	else begin
	  leds_reg <= leds_next;
	end
end

always @(*) begin
  leds_next = leds_reg;
  
  if(fifo_empty) begin
    leds_next = 'd0;
  end else begin
    leds_next = rd_data;
  end
end

assign leds = leds_reg;
endmodule
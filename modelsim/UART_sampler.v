//----------------------------------------------------------------------------------------------
//-----UART SAMPLER MODULE-----
//
// The module is tasked with oversampling UART received data.
// The module is formed from a 4-bit counter which takes 16 samples from the received data.
// If the majority of the samples are the same then the output is validated.
//----------------------------------------------------------------------------------------------


 
module UART_sampler
#(`include "UART_params.v")
(
input clk,
input rst_n,

input in,
input stop,

output out,
output valid
);

reg [WIDTH_SAMPLING_DATA-1:0]nr_0_reg, nr_0_next;
reg [WIDTH_SAMPLING_DATA-1:0]nr_1_reg, nr_1_next;
reg [WIDTH_SAMPLING_DATA-1:0]val_reg, val_next;

reg out_reg, out_next;
reg valid_reg, valid_next;
reg flag_reg, flag_next;

always @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		nr_0_reg  <= 'b0;
		nr_1_reg  <= 'b0;
		val_reg   <= 'b0;
		out_reg   <= 1'b0;
		valid_reg <= 1'b0;
		flag_reg  <= 1'b0;
	end	else begin
		nr_0_reg  <= nr_0_next;
		nr_1_reg  <= nr_1_next;
		val_reg   <= val_next;
		out_reg   <= out_next;
		valid_reg <= valid_next;
		flag_reg  <= flag_next;
	end
end

always @(*) begin
	nr_0_next  = nr_0_reg;
	nr_1_next  = nr_1_reg;
	val_next   = val_reg;
	out_next   = out_reg;
	valid_next = valid_reg;
	flag_next  = flag_reg;
	
	valid_next = 1'b0;
	if(flag_reg) begin
	  if(stop) begin
	    flag_next = 1'b0;
	  end else begin
	    val_next = val_reg + 1;
	    if(val_reg == 15) begin
	      nr_1_next = 1'b0;
	      nr_0_next = 1'b0; 
	      valid_next = 1'b1;
	      if(nr_0_reg >= nr_1_reg) out_next = 1'b0;
	      else out_next = 1'b1;
	    end
	    else begin
	      if(val_reg>=SAMPLE_LIMIT_LOW && val_reg<=SAMPLE_LIMIT_HIGH) begin
	        if(in) nr_1_next = nr_1_reg + 1;
	        else nr_0_next = nr_0_reg + 1;
	      end
	    end
	  end
	end	else begin // if the start bit was found
	  if(!in) flag_next = 1'b1;
	  else flag_next = 1'b0;
	end
end

assign out   = out_reg;
assign valid = valid_reg;

endmodule
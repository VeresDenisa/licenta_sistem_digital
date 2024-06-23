

module CM_Counter
	#(`include "../PARAM/CM_Width_Parameters.v") 
	(input clk,
	input rst_n,
	input[BACKPORCH_WIDTH-1:0] BackPorch,
	input[FRONTPORCH_WIDTH-1:0] FrontPorch,
	input Sync,
	output  Counter_Valid,
	output  [FRONTPORCH_WIDTH-1:0] CounterP);

	reg							Counter_Valid_reg, Counter_Valid_nxt;	
	reg	[FRONTPORCH_WIDTH-1:0]  	Count_reg, Count_nxt;
	reg [FRONTPORCH_WIDTH-1:0]    Count_intern_reg, Count_intern_nxt;
	
	
	always@(posedge clk or negedge rst_n)
	begin
		if(~rst_n)
		begin
			Counter_Valid_reg	<= 1'b0;
			Count_reg		 	<= 'b0;
			Count_intern_reg 	<= 'b0;
		end
		else begin
			Counter_Valid_reg	<= Counter_Valid_nxt;
			Count_reg			<= Count_nxt;
			Count_intern_reg 	<= Count_intern_nxt;
			
		end
	end
	
	always@*
	begin
		Count_nxt = Count_reg;
		Count_intern_nxt = Count_intern_reg;
		Counter_Valid_nxt = Counter_Valid_reg;
		
		if(!Sync)
		begin
			Count_nxt = 'b0;
			Count_intern_nxt = 'b0;
		end
		else begin
			Count_intern_nxt = Count_intern_reg + 1'b1;
			if((Count_intern_reg < FrontPorch) & (Count_intern_reg > BackPorch))
			begin
				Count_nxt = Count_reg + 1'b1;
				Counter_Valid_nxt = 1'b1;
			end
			else begin
				Counter_Valid_nxt = 1'b0;
				Count_nxt = 'b0;
			end
		end
		
	end
	
	assign Counter_Valid = Counter_Valid_reg;
	assign CounterP		 = Count_reg;
endmodule
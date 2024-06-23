 
/* 
The sole role for this module is to decide when the Pixel Counter (CountP) reaches the display region (based
on parameters from the Config unit) and only then to transmit the color data which is the input for the 
VGA. 
*/

module VGA_Assign_color
	#(`include "VGA_Width_Parameters.v")
	(input clk,
	input rst_n,
	input  [DATA_WIDTH-1:0]     	Data,
	input  [REZ_MAX_WIDTH-1:0]  	Count_h,
	input  [REZ_MAX_WIDTH-1:0]  	Count_v,
	input  [HL_MARGIN_WIDTH-1:0] 	H_left_margin,
	input  [HR_MARGIN_WIDTH-1:0] 	H_right_margin,
	input  [VL_MARGIN_WIDTH-1:0] 	V_left_margin,
	input  [VR_MARGIN_WIDTH-1:0] 	V_right_margin,
	output [COLOR_WIDTH-1:0] 	RED,
	output [COLOR_WIDTH-1:0] 	GREEN,
	output [COLOR_WIDTH-1:0] 	BLUE);
	
	reg   Active_reg, Active_nxt;

	always@(posedge clk or negedge rst_n)
	begin
		if(~rst_n)
		begin
			Active_reg   <= 0;
		end
		else begin
			Active_reg   <= Active_nxt;
		end
	end
	
	always@*
	begin
		if(Count_h>=H_left_margin && Count_h<=H_right_margin && Count_v>=V_left_margin && Count_v<=V_right_margin)
			Active_nxt = 1;
		else
			Active_nxt = 0;	
	end
		
	 //Assign data if the counters are in the display region, else assign black
	assign RED   = Active_reg?Data[3:0] :4'b0000;
    assign GREEN = Active_reg?Data[7:4] :4'b0000;
    assign BLUE  = Active_reg?Data[11:8]:4'b0000;
	
endmodule
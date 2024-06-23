 
/* 
 Module Name:   Config  

 	This module provides parameters for the other modules that forms the VGA module. Each configuration 
has it's own constants.
When the configuration bus has a new configuration for the VGA, the registers containing information for 
a specific resolution are changed according to https:web.mit.edu/6.111/www/s2004/NEWKIT/vga.shtml, 60Hz ones. 
 
	The parameters can be found in the Parameters.v file, also there are more details about them. 
	The Valid, Addr and Data inputs are the same as the c_valid, c_addr and c_data inputs for the VGA.
	Load_config is a special output, it has a rol in the Couunters reset and also for the output of the VGA
	c_ready and is active only where the VGA receive a new valid documentation. 
*/

`define R6X4  2'b00
`define R8X6  2'b01
`define R10X7 2'b10
`define ACTIVE 1'b1

module VGA_Config
	#(`include "../PARAM/VGA_Width_Parameters.v",
	  `include "../PARAM/VGA_Parameters.v",
	  `include "../PARAM/VGA_Addr_Parameters.v")
	(input clk,
	input rst_n,
	input Valid,
	input [CONFIG_WIDTH-1:0] Addr,
	input [CONFIG_WIDTH-1:0] Data,
	output Load_config,
	output [PULSE_WIDTH-1:0]   		H_sync_pulse,
	output [PULSE_WIDTH-1:0]   		V_sync_pulse,
	output [REZ_MAX_WIDTH-1:0]  	H_count_max,
	output [REZ_MAX_WIDTH-1:0]  	V_count_max,
	output [HL_MARGIN_WIDTH-1:0] 	H_left_margin,
	output [HR_MARGIN_WIDTH-1:0] 	H_right_margin,
	output [VL_MARGIN_WIDTH-1:0] 	V_left_margin,
	output [VR_MARGIN_WIDTH-1:0] 	V_right_margin);
		


	reg 							Load_reg, Load_nxt;
	reg		[HL_MARGIN_WIDTH-1:0]		H_Left_Margin_reg, H_Left_Margin_nxt;
	reg 	[VL_MARGIN_WIDTH-1:0]		V_Left_Margin_reg, V_Left_Margin_nxt;
	reg		[HR_MARGIN_WIDTH-1:0] 		H_Right_Margin_reg, H_Right_Margin_nxt;
	reg		[VR_MARGIN_WIDTH-1:0] 		V_Right_Margin_reg, V_Right_Margin_nxt;
	reg     [PULSE_WIDTH-1:0]  		H_Sync_Pulse_reg, H_Sync_Pulse_nxt;
	reg     [PULSE_WIDTH-1:0]  		V_Sync_Pulse_reg, V_Sync_Pulse_nxt;
	reg     [REZ_MAX_WIDTH-1:0] 	H_Count_Max_reg, H_Count_Max_nxt;
	reg     [REZ_MAX_WIDTH-1:0]  	V_Count_Max_reg, V_Count_Max_nxt;
	
	always@(posedge clk or negedge rst_n)
	begin
		if(~rst_n)
		begin
			Load_reg    		<= 1;
			H_Left_Margin_reg   <= H_Left_Margin_RD;
			V_Left_Margin_reg   <= V_Left_Margin_RD;
			H_Right_Margin_reg  <= H_Right_Margin_RD;
			V_Right_Margin_reg	<= V_Right_Margin_RD;
			H_Sync_Pulse_reg  	<= H_Sync_Pulse_RD;
			V_Sync_Pulse_reg  	<= V_Sync_Pulse_RD;
			H_Count_Max_reg 	<= H_Count_Max_RD;
			V_Count_Max_reg 	<= V_Count_Max_RD;
		end
		else
		begin
			Load_reg    		<= Load_nxt;
			H_Left_Margin_reg   <= H_Left_Margin_nxt;
			V_Left_Margin_reg   <= V_Left_Margin_nxt;
			H_Right_Margin_reg  <= H_Right_Margin_nxt;
			V_Right_Margin_reg	<= V_Right_Margin_nxt;
			H_Sync_Pulse_reg  	<= H_Sync_Pulse_nxt;
			V_Sync_Pulse_reg  	<= V_Sync_Pulse_nxt;
			H_Count_Max_reg 	<= H_Count_Max_nxt;
			V_Count_Max_reg 	<= V_Count_Max_nxt;
		end
	end
	
	always @*
	begin
		if(Addr == ADDR_VGA_CONFIG && Valid == `ACTIVE)
		begin	
			case (Data)	
				`R6X4:
				begin
					//bring proper parameters and set de Load
					H_Left_Margin_nxt   = H_Left_Margin_RD;
					V_Left_Margin_nxt   = V_Left_Margin_RD;
					H_Right_Margin_nxt  = H_Right_Margin_RD;
					V_Right_Margin_nxt	= V_Right_Margin_RD;
					H_Sync_Pulse_nxt  	= H_Sync_Pulse_RD;
					V_Sync_Pulse_nxt  	= V_Sync_Pulse_RD;
					H_Count_Max_nxt 	= H_Count_Max_RD;
					V_Count_Max_nxt 	= V_Count_Max_RD;
					Load_nxt    		= 1;
				end
				
				`R8X6:
				begin
					//bring proper parameters and set de Load 
					H_Left_Margin_nxt 	= H_Left_Margin_R8x6;
					V_Left_Margin_nxt	= V_Left_Margin_R8x6;
					H_Right_Margin_nxt	= H_Right_Margin_R8x6;
					V_Right_Margin_nxt 	= V_Right_Margin_R8x6;
					H_Sync_Pulse_nxt 	= H_Sync_Pulse_R8x6; 
					V_Sync_Pulse_nxt 	= V_Sync_Pulse_R8x6; 
					H_Count_Max_nxt 	= H_Count_Max_R8x6;
					V_Count_Max_nxt 	= V_Count_Max_R8x6;
					Load_nxt			= 1;
				end
		
				`R10X7:
				begin
					//bring proper parameters and set de Load
					H_Left_Margin_nxt 	= H_Left_Margin_R10x7;
					V_Left_Margin_nxt	= V_Left_Margin_R10x7;
					H_Right_Margin_nxt	= H_Right_Margin_R10x7;
					V_Right_Margin_nxt 	= V_Right_Margin_R10x7;
					H_Sync_Pulse_nxt 	= H_Sync_Pulse_R10x7; 
					V_Sync_Pulse_nxt 	= V_Sync_Pulse_R10x7; 
					H_Count_Max_nxt 	= H_Count_Max_R10x7;
					V_Count_Max_nxt 	= V_Count_Max_R10x7;
					Load_nxt			= 1;
				end	
			endcase
		end
		else
		begin
			H_Left_Margin_nxt   = H_Left_Margin_reg;
			V_Left_Margin_nxt   = V_Left_Margin_reg;
			H_Right_Margin_nxt  = H_Right_Margin_reg;
			V_Right_Margin_nxt	= V_Right_Margin_reg;
			H_Sync_Pulse_nxt  	= H_Sync_Pulse_reg;
			V_Sync_Pulse_nxt  	= V_Sync_Pulse_reg;
			H_Count_Max_nxt 	= H_Count_Max_reg;
			V_Count_Max_nxt 	= V_Count_Max_reg; 
			Load_nxt    		= 0;
		end
		
		if(Load_reg == 1)
			Load_nxt = 0;
	end
	
	
	assign Load_config   	= Load_reg;
	assign H_count_max   	= H_Count_Max_reg;
	assign H_sync_pulse  	= H_Sync_Pulse_reg;
	assign V_count_max   	= V_Count_Max_reg;
	assign V_sync_pulse  	= V_Sync_Pulse_reg;
	assign H_left_margin 	= H_Left_Margin_reg;
	assign H_right_margin   = H_Right_Margin_reg;
	assign V_left_margin 	= V_Left_Margin_reg;
	assign V_right_margin  	= V_Right_Margin_reg;

	
	endmodule

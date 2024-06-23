  
/*
	Module Name: VGA 
 	This is a configurable module, a controller for the the VGA.

	VGA will respond to the configuration bus only at c_valid active, c_addr = 10, c_data can be:
	00(640x480-default);
	01 (800x600);
	10(1024x768).
*/

module VGA
	#(`include "VGA_Width_Parameters.v")
	(input clk,
	input rst_n,
	input c_valid,
	input [CONFIG_WIDTH-1:0] c_addr,
	input [CONFIG_WIDTH-1:0] c_data,
	input [DATA_WIDTH-1:0]  data_in,
	output 	c_ready,
	output  HSync,
	output  VSync,
	output [COLOR_WIDTH-1:0] RED,
	output [COLOR_WIDTH-1:0] GREEN,
	output [COLOR_WIDTH-1:0] BLUE);
	
	
	
	wire Load_config;
	
	wire [HL_MARGIN_WIDTH-1:0] 	H_left_margin;
	wire [HR_MARGIN_WIDTH-1:0] 	H_right_margin;
	wire [VL_MARGIN_WIDTH-1:0] 	V_left_margin;
	wire [VR_MARGIN_WIDTH-1:0] 	V_right_margin;
	
	wire [REZ_MAX_WIDTH-1:0] H_count_max;
	wire [PULSE_WIDTH-1:0]   H_sync_pulse;
	wire [REZ_MAX_WIDTH-1:0] V_count_max;
	wire [PULSE_WIDTH-1:0]   V_sync_pulse;

	wire  [REZ_MAX_WIDTH-1:0]  	Count_h;
	wire  [REZ_MAX_WIDTH-1:0]  	Count_v;
	
	VGA_Config config1(	.clk(clk), 
					.rst_n(rst_n),
					.Valid(c_valid),
					.Addr(c_addr),
					.Data(c_data),
					.Load_config(Load_config),
					.H_left_margin(H_left_margin),
					.H_right_margin(H_right_margin),
					.V_left_margin(V_left_margin),
					.V_right_margin(V_right_margin),
					.H_count_max(H_count_max),
					.H_sync_pulse(H_sync_pulse),
					.V_count_max(V_count_max),
					.V_sync_pulse(V_sync_pulse));
					
	
	VGA_Counter CounterH(.clk(clk),
					.rst_n(rst_n&~Load_config),
					.Sync_pulse(H_sync_pulse),
					.Count_max(H_count_max), 
					.Counter_sync(HSync),
					.CounterP(Count_h));
					
	VGA_Counter CounterV(.clk(HSync),
					.rst_n(rst_n&~Load_config),
					.Sync_pulse(V_sync_pulse),
					.Count_max(V_count_max), 
					.Counter_sync(VSync),
					.CounterP(Count_v));
					
	VGA_Assign_color assgncolor(.clk(clk),
							.rst_n(rst_n),
							.Data(data_in),
							.Count_h(Count_h),
							.Count_v(Count_v),
							.H_left_margin(H_left_margin),
							.H_right_margin(H_right_margin),
							.V_left_margin(V_left_margin),
							.V_right_margin(V_right_margin),
							.RED(RED),
							.GREEN(GREEN),
							.BLUE(BLUE));
					
	
    assign c_ready = ~Load_config;
	
endmodule
  

module VGA_tb
	#(`include "VGA_Width_Parameters.v");
	
	 

	parameter RST_DURATION 	 = 3;
	parameter WAIT 		     = 100;
	parameter WAIT_CONFIG 	 = 600;
	
	reg clk, rst_n, c_valid;
	reg [CONFIG_WIDTH-1:0] c_addr, c_data;
	reg [DATA_WIDTH-1:0] data_in;
	
	wire  c_ready;
	wire  HSync;
	wire  VSync;
	wire [COLOR_WIDTH-1:0]  RED;
	wire [COLOR_WIDTH-1:0]  GREEN;
	wire [COLOR_WIDTH-1:0]  BLUE;

	
	VGA vga(.clk(clk),
					.rst_n(rst_n),
					.c_valid(c_valid), 
					.c_addr(c_addr), 
					.c_data(c_data),
					.data_in(data_in),
					.c_ready(c_ready),
					.RED(RED), 
					.GREEN(GREEN), 
					.BLUE(BLUE), 
					.HSync(HSync), 
					.VSync(VSync));

	defparam		VGA_tb.vga.config1.H_Left_Margin_RD	= 'b1;//1;
	defparam		VGA_tb.vga.config1.V_Left_Margin_RD	= 'b10;//2;
	defparam		VGA_tb.vga.config1.H_Right_Margin_RD= 'b0111;//7;
	defparam		VGA_tb.vga.config1.V_Right_Margin_RD= 'b1000;//8;
	defparam		VGA_tb.vga.config1.H_Sync_Pulse_RD	= 'b1;//1;
	defparam		VGA_tb.vga.config1.V_Sync_Pulse_RD	= 'b0;//0;
	defparam		VGA_tb.vga.config1.H_Count_Max_RD	= 'b1010;//10;
	defparam		VGA_tb.vga.config1.V_Count_Max_RD	= 'b1100;//12;
	
	initial 
	begin
		//making the Clock signal
		clk = 1'b1;
		forever #2 clk = ~clk;
	end
				
	initial
	begin
		//1 clock cicle reset
		rst_n = 1'b1;
		#4; 
		rst_n = 1'b0;
		#4; 
		rst_n = 1'b1;
	end
	
	
	initial
	begin
		//Set the data
		c_valid = 0;
		c_addr  = 4'b1000;
		c_data  = 2'b00;
		data_in = 12'b101011111010;

		
		#WAIT_CONFIG
		c_valid = 1;
		c_addr  = 4'b1011;
		c_data  = 2'b10;
		data_in = 12'b111011110000;
	end
	


endmodule
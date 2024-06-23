 
//The testbench for the CM module.
module CM_tb
#(`include "../PARAM/CM_Width_Parameters.v");


	parameter RST_DURATION 	 = 4;
	parameter CLOCK_CYCLE    = 4;
	parameter WAIT 		     = 20;
	parameter WAIT2 		 = 50;
	parameter HSYNC_F			 = 4000;
	parameter VSYNC_F			 = 7000; 
	
	
	reg clk;
	reg rst_n;
	reg Empty;
	reg c_ready;
	reg [UART_DATA_WIDTH-1:0] RXD_Data;
	reg Vertical_Split;
	reg Horizontal_Split;
	reg VGA_debug;
	reg HSync;
	reg VSync;
	wire [c_addr_WIDTH-1:0] c_addr;
	wire [c_data_WIDTH-1:0] c_data;
	wire c_valid;
	wire [CONFIG_STATUS_WIDTH-1:0] Config_Status;
	wire [CONFIG_NOTIFICATION_WIDTH-1:0] Config_Notification;
	wire Config_Notification_Valid;
	wire [CONFIG_ERROR_WIDTH-1:0] Config_Error;
	wire Error_Valid;
	wire [VGA_NOTIFICATION_WIDTH-1:0] VGA_Notification;
	wire 							  VGA_Notification_Valid;
	wire [DATA_WIDTH-1:0]   Data_VGA;
	
	CM colorCM  (.clk(clk),
							.rst_n(rst_n),
							.Empty(Empty),
							.c_ready(c_ready),
							.RXD_Data(RXD_Data),
							.Vertical_Split(Vertical_Split),
							.Horizontal_Split(Horizontal_Split),
							.VGA_debug(VGA_debug),
							.HSync(HSync),
							.VSync(VSync),
							.c_addr(c_addr),
							.c_data(c_data),
							.c_valid(c_valid),
							.Config_Status(Config_Status),
							.Config_Notification(Config_Notification),
							.Config_Notification_Valid(Config_Notification_Valid),
							.Config_Error(Config_Error),
							.Error_Valid(Error_Valid),
							.VGA_Notification(VGA_Notification),
							.VGA_Notification_Valid(VGA_Notification_Valid),
							.Data_VGA(Data_VGA));
					

	
	initial 
	begin
		clk = 1'b1;
		forever #2 clk = ~clk;
	end
	
	initial 
	begin
		HSync = 1'b0;
		forever #HSYNC_F HSync = ~HSync;
	end
	
	initial 
	begin
		VSync = 1'b0;
		forever #VSYNC_F VSync = ~VSync;
	end
				
	initial
	begin
		rst_n = 1'b1;
		#4; 
		rst_n = 1'b0;
		#4; 
		rst_n = 1'b1;
	end
	
	
	initial
	begin
		Vertical_Split=0;
		Horizontal_Split=0;
		VGA_debug=0;
		//HSync=0;
		//VSync=0;
		Empty=1;
		c_ready=0;
		RXD_Data=8'b00000000;
		
		//color left up
		#WAIT
		Empty=0;
		RXD_Data=8'b00001010;
		//HSync=1;
		//VSync=1;
		
		#CLOCK_CYCLE
		Empty=1;
		
		#WAIT
		Empty=0;
		RXD_Data=8'b01011010;
		
		#CLOCK_CYCLE
		Empty=1;
		
		#WAIT
		c_ready=1;
	
		//color right up
		#WAIT2
		c_ready=0;
		Empty=0;
		RXD_Data=8'b00011010;
		
		#CLOCK_CYCLE
		Empty=1;
		c_ready=1;
		
		
		#WAIT
		Empty=0;
		RXD_Data=8'b01011111;
		
		#CLOCK_CYCLE
		Empty=1;
		
		///color right down
		#WAIT2
		c_ready=0;
		Empty=0;
		RXD_Data=8'b00111010;
		
		#CLOCK_CYCLE
		Empty=1;
		c_ready=1;
		
		
		#WAIT
		Empty=0;
		RXD_Data=8'b01010000;
		
		#CLOCK_CYCLE
		Empty=1;
		
		//color left down
		#WAIT2
		c_ready=0;
		Empty=0;
		RXD_Data=8'b00101010;
		
		#CLOCK_CYCLE
		Empty=1;
		c_ready=1;
		
		
		#WAIT
		Empty=0;
		RXD_Data=8'b00000000;
		
		#CLOCK_CYCLE
		Empty=1;
		
		#WAIT2
		Vertical_Split=1;
		Horizontal_Split=1;
		
	end
	
	
	
endmodule
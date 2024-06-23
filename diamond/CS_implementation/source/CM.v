 
module CM
#(`include "CM_Width_Parameters.v")
   (input clk,
	input rst_n,
	input Empty,
	input c_ready,
	input [UART_DATA_WIDTH-1:0] RXD_Data,
	input Vertical_Split,
	input Horizontal_Split,
	input VGA_debug,
	input HSync,
	input VSync,
	output [c_addr_WIDTH-1:0] c_addr,
	output [c_data_WIDTH-1:0] c_data,
	output c_valid,
	output [CONFIG_STATUS_WIDTH-1:0] Config_Status,
	output [CONFIG_NOTIFICATION_WIDTH-1:0] Config_Notification,
	output Config_Notification_Valid,
	output [CONFIG_ERROR_WIDTH-1:0] Config_Error,
	output Error_Valid,
	output [VGA_NOTIFICATION_WIDTH-1:0] VGA_Notification,
	output 								VGA_Notification_Valid,
	output [DATA_WIDTH-1:0]   Data_VGA);
	

	wire [BACKPORCH_WIDTH-1:0]  H_BackPorch;
	wire [FRONTPORCH_WIDTH-1:0] H_FrontPorch;
	wire [BACKPORCH_WIDTH-1:0]  V_BackPorch;
	wire [FRONTPORCH_WIDTH-1:0] V_FrontPorch;
	wire						Counter_X_Valid;
	wire [COUNTER_WIDTH-1:0] 	Counter_X;
	wire 					 	Counter_Y_Valid;
	wire [COUNTER_WIDTH-1:0]	Counter_Y;
	wire 					    c_ready_Assign;
	
	CM_Config_Manager configCM(.clk(clk),
							.rst_n(rst_n),
							.Empty(Empty),
							.c_ready(c_ready & c_ready_Assign),
							.RXD_Data(RXD_Data),
							.c_addr(c_addr),
							.c_data(c_data),
							.c_valid(c_valid),
							.Config_Status(Config_Status),
							.Config_Notification(Config_Notification),
							.Config_Notification_Valid(Config_Notification_Valid),
							.Config_Error(Config_Error),
							.Error_Valid(Error_Valid));
							
	CM_Assign_Data assignCM(.clk(clk),
						.rst_n(rst_n),
						.c_addr(c_addr),
						.c_data(c_data),
						.c_valid(c_valid),
						.Vertical_Split(Vertical_Split),
						.Horizontal_Split(Horizontal_Split),
						.VGA_debug(VGA_debug),
						.Counter_X_Valid(Counter_X_Valid),
						.Counter_X(Counter_X),
						.Counter_Y_Valid(Counter_Y_Valid),
						.Counter_Y(Counter_Y),
						.c_ready(c_ready_Assign),
						.VGA_Notification(VGA_Notification),
						.VGA_Notification_Valid(VGA_Notification_Valid),
						.Data_VGA(Data_VGA),
						.H_BackPorch(H_BackPorch),
						.H_FrontPorch(H_FrontPorch),
						.V_BackPorch(V_BackPorch),
						.V_FrontPorch(V_FrontPorch));
					
							
	CM_Counter counterH(.clk(clk),
				 .rst_n(rst_n),
				 .BackPorch(H_BackPorch),
				 .FrontPorch(H_FrontPorch), 
				 .Sync(HSync),
				 .Counter_Valid(Counter_X_Valid),
				 .CounterP(Counter_X));
				 
	CM_Counter counterV(.clk(clk),
				 .rst_n(rst_n),
				 .BackPorch(V_BackPorch),
				 .FrontPorch(V_FrontPorch), 
				 .Sync(VSync),
				 .Counter_Valid(Counter_Y_Valid),
				 .CounterP(Counter_Y));
				 
	
endmodule


module CM_Config_Manager
	#(`include "../PARAM/CM_Width_Parameters.v",
	  `include "../PARAM/CM_Addr_Parameters.v",
	  `include "../PARAM/CM_Parameters.v")
	(input clk, 
	input rst_n,
	input Empty,
	input c_ready,
	input [UART_DATA_WIDTH-1:0] RXD_Data,
	output [c_addr_WIDTH-1:0] c_addr,
	output [c_data_WIDTH-1:0] c_data,
	output c_valid,
	output [CONFIG_STATUS_WIDTH-1:0] Config_Status,
	output [CONFIG_NOTIFICATION_WIDTH-1:0] Config_Notification,
	output Config_Notification_Valid,
	output [CONFIG_ERROR_WIDTH-1:0] Config_Error,
	output Error_Valid);
	
	reg [STATE_WIDTH-1:0] State_reg, State_nxt;
	reg Err_reg, Err_nxt;
	
	reg [WORD_WIDTH-1:0] RXD_Data_reg, RXD_Data_nxt;
	reg [c_addr_WIDTH-1:0] c_addr_reg, c_addr_nxt;
	reg [c_data_WIDTH-1:0] c_data_reg, c_data_nxt;
	reg c_valid_reg, c_valid_nxt;
	
	reg [CONFIG_STATUS_WIDTH-1:0] Config_Status_reg, Config_Status_nxt;
	reg [CONFIG_NOTIFICATION_WIDTH-1:0] Config_Notification_reg, Config_Notification_nxt;
	reg Config_Notification_Valid_reg, Config_Notification_Valid_nxt;
	reg [CONFIG_ERROR_WIDTH-1:0] Config_Error_reg, Config_Error_nxt;
	reg Error_Valid_reg, Error_Valid_nxt;
	
	always@(posedge clk or negedge rst_n)
	begin
		if(~rst_n)
		begin
			State_reg						<= IDLE;
			Err_reg 						<= 0;			
			RXD_Data_reg 					<= 0;
			c_addr_reg   					<= 0;
			c_data_reg   					<= 0;
			c_valid_reg 					<= 0;			
			Config_Status_reg    			<= DEFAULT_CONFIG;
			Config_Notification_reg 		<= 0;
			Config_Notification_Valid_reg 	<= 0;
			Config_Error_reg 				<= 0;
			Error_Valid_reg 				<= 0;
		end
		else
		begin
			State_reg						<= State_nxt;
			Err_reg 						<= Err_nxt;			
			RXD_Data_reg 					<= RXD_Data_nxt;
			c_addr_reg   					<= c_addr_nxt;
			c_data_reg   					<= c_data_nxt;
			c_valid_reg 					<= c_valid_nxt;			
			Config_Status_reg				<= Config_Status_nxt;
			Config_Notification_reg 		<= Config_Notification_nxt;
			Config_Notification_Valid_reg 	<= Config_Notification_Valid_nxt;
			Config_Error_reg 				<= Config_Error_nxt;
			Error_Valid_reg 				<= Error_Valid_nxt;
		end
	end
	
	always@*
	begin
		Err_nxt 						= 0;
		RXD_Data_nxt 					= RXD_Data_reg;
		c_addr_nxt   					= c_addr_reg;
		c_data_nxt   					= c_data_reg;
		c_valid_nxt 					= 0;
		Config_Status_nxt 				= Config_Status_reg;
		Config_Notification_nxt 		= Config_Notification_reg;
		Config_Notification_Valid_nxt 	= 0;
		Config_Error_nxt 				= Config_Error_reg;
		Error_Valid_nxt 				= 0;	
		
		case(State_reg)
			IDLE:
			begin
				if(Empty)
				begin
					State_nxt=IDLE;
				end
				else begin
					State_nxt=READ;
					RXD_Data_nxt={RXD_Data,8'b0}; 
				end
			end
			READ:
			begin
				if(Empty)
				begin
					State_nxt = READ;	
				end
				else begin
					State_nxt = PROCESS;	
					RXD_Data_nxt={RXD_Data_reg[FIRST_HALF_WORD_START:FIRST_HALF_WORD_STOP], RXD_Data};
				end
			end
			
			PROCESS:
			begin
				//Sends everything that involves Valid Data
				if(RXD_Data_reg[WORD_WIDTH-1]) // If there is a configuration
				begin
					case(RXD_Data_reg[ADDR_MODULE_START:ADDR_REG_STOP])
						ADDR_UART_BOUDRATE:
						begin
							c_addr_nxt = ADDR_UART_BOUDRATE;
							case(RXD_Data_reg[DATA_BOUDRATE_START:DATA_STOP])
								BOUDRATE2400,BOUDRATE4800,BOUDRATE9600,BOUDRATE19200,BOUDRATE57600,BOUDRATE112000: begin
									c_data_nxt[CONFIG_BOUDRATE_WIDTH-1:0] = RXD_Data_reg[DATA_BOUDRATE_START:DATA_STOP];
									
									Config_Status_nxt[CONFIG_STATUS_WIDTH-1:NOTIFICATION_PARITY_START+1]= RXD_Data_reg[DATA_BOUDRATE_START:DATA_STOP];
									
									Config_Notification_Valid_nxt = 1;
									Config_Notification_nxt = CORRECT_BAUDRATE_CONFIGURATION;
								end
								default: begin
									Config_Error_nxt = FAILED_BAUDRATE_CONFIGURATION;
									Err_nxt = 1;
								end
							endcase
						end						
						ADDR_UART_PARITY:
						begin
							c_addr_nxt = ADDR_UART_PARITY;
							case(RXD_Data_reg[DATA_PARITY_START:DATA_STOP])
								PARITYOFF, PARITYODD, PARITYEVEN: begin
									c_data_nxt[CONFIG_PARITY_WIDTH-1:0] = RXD_Data_reg[DATA_PARITY_START:DATA_STOP];
								
									Config_Status_nxt[NOTIFICATION_PARITY_START-1:NOTIFICATION_STOP_POSITION+1]= RXD_Data_reg[DATA_PARITY_START:DATA_STOP];
									
									Config_Notification_Valid_nxt = 1;
									Config_Notification_nxt = CORRECT_PARITYBIT_CONFIGURATION;
								end
								default: begin
									Config_Error_nxt = FAILED_PARITYBIT_CONFIGURATION;
									Err_nxt = 1;
								end
							endcase
						end
						ADDR_UART_STOP: begin
							c_addr_nxt = ADDR_UART_STOP;
							c_data_nxt[0]=RXD_Data_reg[DATA_STOP];
							Config_Status_nxt[NOTIFICATION_STOP_POSITION]= RXD_Data_reg[DATA_STOP];
							Config_Notification_nxt = CORRECT_STOPBIT_CONFIGURATION;
							Config_Notification_Valid_nxt = 1;
						end
						ADDR_VGA_CONFIG: begin
							c_addr_nxt = ADDR_VGA_CONFIG;
							case(RXD_Data_reg[DATA_REZOLUTION_START:DATA_STOP])
								R6X4, R8X6, R10X7: begin
									c_data_nxt[CONFIG_REZOLUTION_WIDTH-1:0] = RXD_Data_reg[DATA_REZOLUTION_START:DATA_STOP];
								
									Config_Status_nxt[NOTIFICATION_STOP_POSITION-1:0] = RXD_Data_reg[DATA_REZOLUTION_START:DATA_STOP];
									
									Config_Notification_Valid_nxt = 1;
									Config_Notification_nxt = CORRECT_RESOLUTION_CONFIGURATION;																
								end
								default: begin
									Config_Error_nxt = FAILED_RESOLUTION_CONFIGURATION;
									Err_nxt = 1;
								end
							endcase
						end
						
						ADDR_VGA_QUADRAN:
						begin
							c_addr_nxt = ADDR_VGA_QUADRAN;
							case(RXD_Data_reg[DATA_QUADRAN_START:DATA_STOP])
								STATE0SPLIT, STATE2HORIZONTAL_SPLIT, STATE2VERTICAL_SPLIT: begin
									c_data_nxt[CONFIG_QUADRAN_WIDTH:0] = RXD_Data_reg[DATA_QUADRAN_START:DATA_STOP];
								end
								default: begin
									Config_Error_nxt = FAILED_QUADRAN_CONFIGURATION;
									Err_nxt = 1;
								end
							endcase
						end
						default: begin
							Err_nxt = 1;
							Config_Error_nxt = FAILED_CONFIGURATION_ADDRESS;
						end
					endcase
				end
				else begin
					//It is a color
					if(RXD_Data_reg[WORD_WIDTH-2])
					begin
						Err_nxt = 1;
						Config_Error_nxt = FAILED_CONFIGURATION_ADDRESS; 		
					end
					else begin
						c_addr_nxt = ADDR_VGA_COLOR;
						c_data_nxt = RXD_Data_reg[WORD_WIDTH-3:0]; 
					end
				end
				State_nxt=WAIT;
			end
			WAIT: begin
				if(Err_reg)
					State_nxt=ERR;
				else
					State_nxt=DELIVER_DATA;
			end
			DELIVER_DATA: begin
				//If c_ready is not active, we stall the Valid impuls
				if(c_ready === 1'b1)
				begin
					c_valid_nxt = 1;
					Config_Notification_Valid_nxt = 1;
					State_nxt=IDLE;
				end
				else begin
					State_nxt = DELIVER_DATA;
				end
			end
			ERR: begin
				State_nxt=IDLE;
				Error_Valid_nxt = 1;
			end
		endcase
	end
	
	assign c_addr  						= c_addr_reg;
	assign c_data  						= c_data_reg;
	assign c_valid 						= c_valid_reg;
	assign Config_Status				= Config_Status_reg;
	assign Config_Notification 			= Config_Notification_reg;
	assign Config_Notification_Valid	= Config_Notification_Valid_reg;
	assign Config_Error 				= Config_Error_reg;
	assign Error_Valid 					= Error_Valid_reg;
endmodule
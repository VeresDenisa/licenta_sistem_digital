//Parameters are taken from https://web.mit.edu/6.111/www/s2004/NEWKIT/vga.shtml, for the 60Hz
//____________+------------------------------------------+
//pulse_width |back porch   | active zone   | front porch|
	
	
	//Parameters for Back porch-1
	  parameter [BACKPORCH_WIDTH-1:0] V_BackPorch_RD      =  'b11110,   //30
	  parameter [BACKPORCH_WIDTH-1:0] V_BackPorch_R8x6    =  'b10110,   //22
    parameter [BACKPORCH_WIDTH-1:0] V_BackPorch_R10x7   =  'b11100,   //28
	
	  parameter [BACKPORCH_WIDTH-1:0] H_BackPorch_RD      =  'b00101111,   // 47
    parameter [BACKPORCH_WIDTH-1:0] H_BackPorch_R8x6    =  'b01010111,   // 87 
    parameter [BACKPORCH_WIDTH-1:0] H_BackPorch_R10x7   =  'b10011111,   //159

	
	//Parameters for where Front porch starts-1
	parameter [FRONTPORCH_WIDTH-1:0] V_FrontPorch_RD     =  10'b0111011111,    //479
	parameter [FRONTPORCH_WIDTH-1:0] V_FrontPorch_R8x6   =  10'b1001010111,	   // 599
    parameter [FRONTPORCH_WIDTH-1:0] V_FrontPorch_R10x7  =  10'b1011111111,    // 767

	parameter [FRONTPORCH_WIDTH-1:0] H_FrontPorch_RD     =  10'b1001111111,   //639
    parameter [FRONTPORCH_WIDTH-1:0] H_FrontPorch_R8x6   =  10'b1100011111,   //799
    parameter [FRONTPORCH_WIDTH-1:0] H_FrontPorch_R10x7  =  10'b1111111111,   //1023

	//////////////////////////////////
	//parameters for Config_manager only
	//Default configuration boudrate[7:5],parity[4:3],stop[2],rezolution[1:0] = 9600, no parity, one stop bit,  640x480 = 010, 00, 0, 00
	parameter DEFAULT_CONFIG = 8'b01000000,
	parameter NOTIFICATION_PARITY_START = 4,
	parameter NOTIFICATION_STOP_POSITION = 2, 
	
	//Boudrate process
	parameter BOUDRATE2400   = 3'b000, 
	parameter BOUDRATE4800   = 3'b001, 
    parameter BOUDRATE9600   = 3'b010, 
    parameter BOUDRATE19200  = 3'b011, 
    parameter BOUDRATE57600  = 3'b100, 
    parameter BOUDRATE112000 = 3'b101,

	//Parity process
	parameter PARITYOFF  = 2'b00,
	parameter PARITYODD  = 2'b11,            
    parameter PARITYEVEN = 2'b10, 
	
	//Rezolution process
	parameter R6X4  = 2'b00,
	parameter R8X6  = 2'b01,
	parameter R10X7 = 2'b10,
   
	//ColorManager
	parameter FAILED_CONFIGURATION_ADDRESS = 4'b0011,

	parameter FAILED_BAUDRATE_CONFIGURATION = 4'b0100,
	parameter FAILED_PARITYBIT_CONFIGURATION = 4'b0101,
	parameter FAILED_QUADRAN_CONFIGURATION = 4'b0110,
	parameter FAILED_RESOLUTION_CONFIGURATION = 4'b0111,

	parameter CORRECT_BAUDRATE_CONFIGURATION = 4'b1100,
	parameter CORRECT_PARITYBIT_CONFIGURATION = 4'b1101,
	parameter CORRECT_STOPBIT_CONFIGURATION = 4'b1110,
	parameter CORRECT_RESOLUTION_CONFIGURATION = 4'b1111,
	
	//Parameters for ADDR_CONFIG case
	
	parameter CONFIG_BOUDRATE = 2'b00,
	parameter CONFIG_PARITY = 2'b01,
	parameter CONFIG_STOP_BIT = 2'b10,
	
	parameter CONFIG_REZOLUTON = 2'b11,
	parameter CONFIG_QUADRAN= 2'b10,
	
	//Start and stop for RXD
	parameter ADDR_MODULE_START=14,
	parameter ADDR_MODULE_STOP=13,
	parameter ADDR_REG_START=12,
	parameter ADDR_REG_STOP=11,
	parameter DATA_BOUDRATE_START=10,
	parameter DATA_STOP=8,
	parameter DATA_PARITY_START=9,
	parameter DATA_REZOLUTION_START=9,
	parameter DATA_QUADRAN_START=9,

	//parameters for the state machine  
	parameter IDLE 			= 3'b000,
	parameter READ 			= 3'b001,
	parameter PROCESS 	    = 3'b011,
	parameter DELIVER_DATA  = 3'b100,
	parameter WAIT			= 3'b101,
	parameter ERR 		    = 3'b111,
	
	//parameters for the c_data use
	parameter FIRST_HALF_WORD_START  = 15,
	parameter FIRST_HALF_WORD_STOP 	 = 8,
	parameter SECOND_HALF_WORD_START = 7,
	parameter SECOND_HALF_WORD_STOP  = 0,
	
	//////////////////////////////////
	//parameters for assign_data only	
	//Split States
	parameter STATE0SPLIT 			 = 2'b00,
	parameter STATE2VERTICAL_SPLIT	 = 2'b01,
	parameter STATE2HORIZONTAL_SPLIT = 2'b10,
	parameter STATE4SPLIT 	    	 = 2'b11,
	
	//Configiguration States
	parameter QLEFTUP 	 = 2'b00,
	parameter QRIGHTUP 	 = 2'b01,
	parameter QLEFTDOWN	 = 2'b10,
	parameter QRIGHTDOWN = 2'b11,
	
	//Colors for the debug mode
	parameter  Left_UP_debug 		= 12'b111101111001,
	parameter  Left_DOWN_debug 	= 12'b011111111001,
	parameter  Right_UP_debug 		= 12'b111101100000,
	parameter  Right_DOWN_debug 	=12'b011111110000,
	
	//Quadran Change Notifications
	parameter STATE0SPLIT_CHANGE 		= 4'b1000,
	parameter STATE2VERTICAL_CHANGE 	= 4'b1001,
	parameter STATE2HORIZONTAL_CHANGE 	= 4'b1010,
	parameter STATE4SPLIT_CHANGE 		= 4'b1011
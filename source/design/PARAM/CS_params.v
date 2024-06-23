parameter UART_BAUDRATE_ADDR = 4'b0100;
parameter UART_PARITY_ADDR = 4'b0101;
parameter UART_STOP_ADDR = 4'b0110;
parameter VGA_RESOLUTION_ADDR = 4'b1000;

parameter PARITYBIT_NONE = 2'b00;
parameter PARITYBIT_ODD = 2'b11;
parameter PARITYBIT_EVEN = 2'b10;

parameter STOPBITS_1 = 1'b0;
parameter STOPBITS_2 = 1'b1;
 
parameter BAUDRATE_2400 = 3'b000;
parameter BAUDRATE_4800 = 3'b001;
parameter BAUDRATE_9600 = 3'b010;
parameter BAUDRATE_19200 = 3'b011;
parameter BAUDRATE_57600 = 3'b100;
parameter BAUDRATE_112000 = 3'b101;

parameter VGA_640x480 = 2'b00;
parameter VGA_800x600 = 2'b01;
parameter VGA_1024x768 = 2'b10;
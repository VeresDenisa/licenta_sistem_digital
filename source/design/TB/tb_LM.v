

module tb_LM; 

reg clk;
reg rst_n;
reg UART_data_debug_switch;
reg clkVGA;
reg clkUART;
reg [7:0]UART_data;
reg UART_data_valid;
reg [3:0]CM_errors;
reg CM_errors_valid;
reg [1:0]UART_errors;
reg UART_errors_valid; 
reg [7:0]config_notification;
wire [7:0]leds;
	
	LM LEDM(.clk(clk), .rst_n(rst_n),
					.UART_data_debug_switch(UART_data_debug_switch), 
					.clkVGA(clkVGA),	.clkUART(clkUART), 
					.UART_data(UART_data),	.UART_data_valid(UART_data_valid), 
					.CM_errors(CM_errors),	.CM_errors_valid(CM_errors_valid), 
					.UART_errors(UART_errors),	.UART_errors_valid(UART_errors_valid), 
					.config_notification(config_notification), 
					.leds(leds)
					);	
		
	initial begin
	  UART_data_debug_switch = 0;
	  UART_data = 0;
	  UART_data_valid = 0;
	  CM_errors = 0;
	  CM_errors_valid = 0;
	  UART_errors = 0;
	  UART_errors_valid = 0;
	  config_notification = 0;
	    
	  #250;
	  UART_data_debug_switch = 1;
		write_config(8'b10000001);
		  		
		write_CM_error(4'b1101);
		write_UART_error(4'b1101);
	  #2000;
	  UART_data_debug_switch = 0;
		write_CM_error(4'b1101);
		write_config(8'b10000001);
		write_CM_error(4'b1101);
		write_CM_error(4'b1101);
		write_UART_data(8'b11011101);
		write_UART_data(8'b11010001);
		
	  #2000;
	  UART_data_debug_switch = 1;
		write_UART_data(8'b10101010);
		
		write_config(8'b10000001);
		  		
		write_CM_error(4'b1101);
		write_UART_error(4'b1101);
		
		write_CM_error(4'b1101);
		write_CM_error(4'b1101);
		write_CM_error(4'b1101);
		write_config(8'b10001101);
		write_UART_data(8'b11011101);
		write_UART_data(8'b11010001);
		write_config(8'b11111000);
		write_UART_data(8'b10101010);
	end
	
	task write_config;
	  input [7:0] data;
	  begin
	    config_notification = data;
		  #6;
	  end
	endtask
	
	task write_CM_error;
	  input [3:0] err_data;
	  begin
	    CM_errors_valid = 1;
	    CM_errors = err_data;
	    #6;
	    CM_errors_valid = 0;
	    #6;
	  end
	endtask
	
	task write_UART_data;
	  input [7:0] err_data;
	  begin
	    UART_data_valid = 1;
	    UART_data = err_data;
	    #14;
	    UART_data_valid = 0;
	    #14;
	  end
	endtask
	
	task write_UART_error;
	  input [1:0] err_data;
	  begin
	    UART_errors_valid = 1;
	    UART_errors = err_data;
	    #14;
	    UART_errors_valid = 0;
	    #14;
	  end
	endtask
	
	initial begin
		rst_n = 1'b1;
		#250;
		rst_n = 1'b0;
		#250;
		rst_n = 1'b1;
	end

	initial begin
    clk = 1'b1;
    forever begin
      #50000000;
      clk = !clk;
    end  
  end
  
	initial begin
    clkVGA = 1'b1;
    forever begin
      #2;
      clkVGA = !clkVGA;
    end  
  end
  
	initial begin
    clkUART = 1'b1;
    forever begin
      #325;
      clkUART = !clkUART;
    end  
  end
endmodule
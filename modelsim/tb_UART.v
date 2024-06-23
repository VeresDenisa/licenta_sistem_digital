

module tb_UART;
	reg clk, rst_n;
	reg in;
	reg clkinVGA;
	reg c_valid;
	reg [3:0]c_addr;
	reg [7:0]c_data;
	wire c_ready;
  wire [1:0]error;
  wire valid_error;
  wire [7:0]out;
  wire valid_out;
	 
	UART UART_INSTANCE(.clk(clk), .rst_n(rst_n),
					.in(in), .clkinVGA(clkinVGA),
					.c_valid(c_valid), .c_addr(c_addr),
					.c_data(c_data), .c_ready(c_ready),
					.error(error), .valid_error(valid_error),
					.out(out), .valid_out(valid_out)
					);	
	
	integer i;
	integer max = 1183;
	
	initial begin
		in = 1;
		c_addr = 0;
		c_data = 0;
		c_valid = 0;
		i = 0;
	
		#($urandom_range(1,max));
		write_data(16'b1111101110100111);
		#($urandom_range(1,max));
		write_data(16'b1111111010101010);
		#($urandom_range(1,max));
		write_data(16'b1111010101001111);
		#($urandom_range(1,max));
		write_data(16'b1111111111111110);
		#($urandom_range(1,max));
		write_data(16'b1111111100000000);
		
		//modify_config(4'b0101, 2'b11);
		
		#($urandom_range(1,max));
		write_data(16'b1111101110100111);
		#($urandom_range(1,max));
		write_data(16'b1111111010101010);
		
		//modify_config(4'b0110, 1'b1);
		
		#($urandom_range(1,max));
		write_data(16'b1111010101001111);
		#($urandom_range(1,max));
		write_data(16'b1111111111111110);
		#($urandom_range(1,max));
		write_data(16'b1111111000000000);
		
		
	end
	
	task write_data;
	  input [15:0] data;
	  begin
	    for(i = 0; i < 16; i = i + 1) begin
	      in = data[i];
		    #1184;
		  end
	  end
	endtask
	
	task modify_config;
	  input [3:0]addr;
	  input [1:0]data;
	  begin
	    c_addr = addr;
	    c_valid = 1'b1;
	    case(addr)
	      4'b0101: c_data[1:0] = data;
	      4'b0110: c_data[0] = data[0];
	    endcase
	    #4;
	    c_valid = 1'b0;
 	  end
	endtask
	
	initial begin
		rst_n = 1'b1;
		#7;
		rst_n = 1'b0;
		#7;
		rst_n = 1'b1;
	end

	initial begin
    clk = 1'b1;
    forever begin
      #37;
      clk = !clk;
    end  
  end
  
	initial begin
    clkinVGA = 1'b1;
    forever begin
      #2;
      clkinVGA = !clkinVGA;
    end  
  end
  
  initial
	 #500000 $finish;
endmodule
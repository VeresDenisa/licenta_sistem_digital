

module tb_CD;
	reg clk, rst_n;
	reg clkinVGA;
	reg c_valid;
	reg [3:0]c_addr;
	reg [7:0]c_data;
	wire c_ready;
	wire clk_VGA;
  wire clk_UART;
  wire clk_LM;
  wire clk_DB;
	 
	CD CLOCK_DIVIDER_INSTANCE(.clk(clk), .rst_n(rst_n), .clkinVGA(clkinVGA),
					.c_valid(c_valid), .c_addr(c_addr), .c_data(c_data), .c_ready(c_ready), 
					.clk_VGA(clk_VGA), .clk_UART(clk_UART), .clk_LM(clk_LM), .clk_DB(clk_DB));	
					
	integer min = 2000;
	integer max = 20000;
	
	initial begin
	  c_data = 0;
	  c_addr = 0;
	  c_valid = 0;
	  
	  #($urandom_range(7,max));
	  modify_config(4'b0100, 3'b100);
	  
	  #($urandom_range(min,max));
	  modify_config(4'b0100, 3'b010);
	  
	  #($urandom_range(min,max));
	  modify_config(4'b1000, 3'b010);
	  
	  #($urandom_range(min,max));
	  modify_config(4'b0100, 3'b000);
	  
	  #($urandom_range(min,max));
	  modify_config(4'b1000, 3'b000);
	end
	
	task modify_config;
	  input [3:0]addr;
	  input [2:0]data;
	  begin
	    c_addr = addr;
	    c_valid = 1'b1;
	    case(addr)
	      4'b0100: c_data[2:0] = data;
	      4'b1000: c_data[1:0] = data[1:0];
	    endcase
	    #312;
	    c_valid = 1'b0;
 	  end
	endtask
	
	initial begin
		rst_n = 1'b1;
		#8;
		rst_n = 1'b0;
		#8;
		rst_n = 1'b1;
	end

	initial begin
    clkinVGA = 1'b1;
    forever begin
      #156;
      clkinVGA = !clkinVGA;
    end  
  end

	initial begin
    clk = 1'b1;
    forever begin
      #2;
      clk = !clk;
    end  
  end
  
  initial
	 #100000 $finish;
endmodule




module tb_DB;
reg clk;
reg rst_n;

reg btnHS;
reg btnVS;
reg btnDF_UART;
reg btnDF_VGA;

wire HS;
wire VS;
wire DF_UART;
wire DF_VGA; 
	
	DB DB_INSTANCE(.clk(clk), .rst_n(rst_n),
					.btnHS(btnHS), .HS(HS), 
					.btnVS(btnVS), .VS(VS), 
					.btnDF_UART(btnDF_UART), .DF_UART(DF_UART), 
					.btnDF_VGA(btnDF_VGA), .DF_VGA(DF_VGA)
					);	
		
	integer i = 0;
	
	initial begin
		btnHS = 0;
		btnVS = 0;
		btnDF_UART = 0;
		btnDF_VGA = 0;
				
		#($urandom_range(7,24));btnDF_UART = 1;
		write_data(32'b11111111111111111111111010101010);
	end
	
	task write_data;
	  input [31:0] data;
	  begin
	    for(i = 0; i < 32; i = i + 1) begin
	      btnHS = data[i];
		    #4;
		  end
	  end
	endtask
	
	initial begin
    clk = 1'b1;
    forever begin
      #2;
      clk = !clk;
    end  
  end
   
   
	initial begin
		rst_n = 1'b1;
		#8;
		rst_n = 1'b0;
		#8;
		rst_n = 1'b1;
	end
   
  initial
	 #500 $finish;
endmodule
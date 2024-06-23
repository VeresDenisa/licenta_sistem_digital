

module tb_CS;
	reg clk, rst_n;
	reg in;
	reg btnHS;
	reg btnVS;
	reg btnUART;
	reg btnVGA;
	
	wire [3:0]RED, GREEN, BLUE;
	wire HSYNC, VSYNC;
	wire [7:0]leds;
	
	 
	CS cs(.clk(clk), .rst_n(rst_n),
				.in(in), 
				.btnHS(btnHS), .btnVS(btnVS), 
				.btnUART(btnUART), .btnVGA(btnVGA), 
				.HSYNC(HSYNC), .VSYNC(VSYNC), 
				.LEDS(LEDS),
				.RED(RED), .GREEN(GREEN), .BLUE(BLUE)
				);	
		
	integer i = 0;
	integer mini = 10000;
	integer maxi = 100000;
					
	initial begin
		in = 1;
		btnHS = 0;
		btnVS = 0;
		btnUART = 0;
		btnVGA = 0;
	
	//debug_testbench();
	
	// configure UART to 4800 baudrate
	
		write_data(12'b101010000111);
		#($urandom_range(mini,maxi));
		#150000;
	
	// send uart error
	
		write_data_4800(12'b100000000001); 
		#($urandom_range(mini,maxi));
	
	// send config error
	
		write_data_4800(12'b101001000011); 
		#($urandom_range(mini,maxi));
	
	// debug swithces
	
		btnVGA = 1;
		btnUART = 1;
	
	// send two colors
	
		write_data_4800(12'b101000101011); 
		#($urandom_range(mini,maxi));
		write_data_4800(12'b101010101011); 
		#($urandom_range(mini,maxi));
		write_data_4800(12'b101000001111); 
		#($urandom_range(mini,maxi));
		write_data_4800(12'b101110011111); 
		#($urandom_range(mini,maxi));
		
	
	end
	
	
	
	task write_data_4800;
	  input [11:0] info;
	  begin
	    for(i = 0; i < 12; i = i + 1) begin
	      in = info[12 - i - 1];
		  #187520;
		end
	 end
	endtask
	
	task write_data;
	  input [11:0] info;
	  begin
	    for(i = 0; i < 12; i = i + 1) begin
	      in = info[12 - i - 1];
		  #93760;
		end
	 end
	endtask
	
	initial begin
		rst_n = 1'b1;
		#200;
		rst_n = 1'b0;
		#1000;
		rst_n = 1'b1;
	end

	initial begin
    clk = 1'b1;
    forever begin
      #1;
      clk = !clk;
    end
  end
  
  task debug_testbench;
    begin
    btnUART = 1;
    #($urandom_range(1000,2000));
		//change_switches(4'b0010);
		write_data(12'b000000000111);
		#($urandom_range(mini,maxi));
    write_data(12'b011111111111);
		#($urandom_range(mini,maxi));
    write_data(12'b010100101111);
		#($urandom_range(mini,maxi));
    write_data(12'b001011010111);
		#($urandom_range(mini,maxi));
    write_data(12'b001010101111);
		#($urandom_range(mini,maxi));
    write_data(12'b010101010111);
		#($urandom_range(mini,maxi));
    write_data(12'b000001111111);
		#($urandom_range(mini,maxi));
    write_data(12'b011110000111);
   	#($urandom_range(mini,maxi));
    write_data(12'b011111111110);
    in = 1;
    #93760;
		#($urandom_range(mini,maxi));
    write_data(12'b011111111101);
		#($urandom_range(mini,maxi));
    write_data(12'b011111111011);
		#($urandom_range(mini,maxi));
    write_data(12'b011111111111);
    
		#($urandom_range(mini,maxi));
		write_data(12'b000000000111);
		#($urandom_range(mini,maxi));
    write_data(12'b011111111111);
		#($urandom_range(mini,maxi));
    write_data(12'b010100101111);
		#($urandom_range(mini,maxi));
    write_data(12'b001011010111);
		#($urandom_range(mini,maxi));
    write_data(12'b001010101111);
		#($urandom_range(mini,maxi));
    write_data(12'b010101010111);
		#($urandom_range(mini,maxi));
    write_data(12'b000001111111);
		#($urandom_range(mini,maxi));
    write_data(12'b011110000111);
    
		#($urandom_range(mini,maxi));
    write_data(12'b011111111110);
    in = 1;
    #93760;
		#($urandom_range(mini,maxi));
    write_data(12'b011111111101);
		#($urandom_range(mini,maxi));
    write_data(12'b011111111011);
		#($urandom_range(mini,maxi));
    write_data(12'b011111111111);
    end
  endtask
  
  endmodule

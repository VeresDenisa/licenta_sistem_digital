

module tb_Sync_Reg;
  
  reg w_clk;
  reg r_clk;
  reg rst_n;
  reg [7:0]w_data;
  wire [7:0]r_data;
  reg w_en;
  wire r_empty;
   
Sync_Reg #(.SIZE(8)) sync_reg(.w_clk(w_clk), .r_clk(r_clk), .rst_n(rst_n), .w_data(w_data), .r_data(r_data), .w_en(w_en), .r_empty(r_empty));

initial begin 
  w_data = 0;
  w_en = 0;
		#11718;
		
		#11718;
		w_data = 8'b10111011;
		w_en = 1;
		#11718;
		w_en = 0;
end

	initial begin
		rst_n = 1'b1;
		#20000;
		rst_n = 1'b0;
	end

  initial begin
    w_clk = 1'b1;
    forever begin
      #5859;
      w_clk = !w_clk;
    end  
  end
  
  initial begin
    r_clk = 1'b1;
    forever begin
      #3;
      r_clk = !r_clk;
    end  
  end
  
  initial
	 #100000 $finish;
endmodule


module Sync_Reg
#(parameter SIZE = 4)
(
  input w_clk,
  input r_clk,
  input rst_n,
  
  input [SIZE-1:0] w_data,
  output [SIZE-1:0]r_data,
  
  input w_en,
  output r_empty   
  );

reg [SIZE-1:0]r_data_reg, r_data_next;
reg [SIZE-1:0]w_data_reg, w_data_next;

reg           r_empty_reg, r_empty_next;
reg           w_empty_reg, w_empty_next;

always @(posedge w_clk or negedge rst_n) begin
  if(~rst_n) begin
    w_empty_reg <= 1'b1;
    w_data_reg  <= 'd0;
  end else begin
    w_data_reg  <= w_data_next;
    w_empty_reg <= w_empty_next;
  end
end

always @(posedge r_clk or negedge rst_n) begin
  if(~rst_n) begin
    r_empty_reg <= 1'b1;
    r_data_reg  <= 'd0;
  end else begin
    r_data_reg  <= r_data_next;
    r_empty_reg <= r_empty_next;
  end
end

always @(*) begin
  r_empty_next = r_empty_reg;
  w_empty_next = w_empty_reg;
  r_data_next  = r_data_reg;
  w_data_next  = w_data_reg;
  
  if(w_en) begin
    w_data_next  = w_data;
    w_empty_next = 1'b0;
  end 
  else begin
    if(~w_empty_reg) begin
      r_data_next  = w_data_reg;
      r_empty_next = 1'b0;
      w_empty_next = 1'b1;
    end
  end
end

assign r_data  = r_data_reg;
assign r_empty = r_empty_reg;

endmodule
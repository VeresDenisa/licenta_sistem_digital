

module DB_debouncer #(parameter LIMIT = 4)(
  input clk,
  input rst_n,
  input button,
  output signal
);

  reg [$clog2(LIMIT):0] ctr_nxt, ctr_ff;
  reg sync_nxt, sync_ff;
  reg button_nxt, button_ff;
 
  always @(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
      ctr_ff    <= 'd0;
      sync_ff   <= 1'b0;
      button_ff <= 1'b0;
    end else begin
      ctr_ff    <= ctr_nxt;
      sync_ff   <= sync_nxt; 
      button_ff <= button_nxt;
    end
  end
 
  always @(*) begin
    sync_nxt   = sync_ff;
    ctr_nxt    = ctr_ff;
    button_nxt = button;
 
    if(button == button_ff) begin
      if(ctr_ff < LIMIT - 1)
        ctr_nxt = ctr_ff + 1;
    end else begin
      ctr_nxt = 'd0;
    end

    if(ctr_ff >= LIMIT - 1) sync_nxt = button_ff;
  end
  
  assign signal = sync_ff;
  
endmodule
`define ASSInfo(msg = "") \
    $info($sformatf("%s: %m: %s", "PASS ASSERTION", msg))

module assertion_CD #(`include "design/PARAM/CD_params.v") (
    input clk,
    input rst_n,
    
    input clkinVGA,
    
    input [3:0]  c_addr,
    input [13:0] c_data, 
    input c_valid, 
    input c_ready, 
    
    input clk_VGA,
    input clk_UART,
    input clk_LM,
    input clk_DB
    );


endmodule : assertion_CD
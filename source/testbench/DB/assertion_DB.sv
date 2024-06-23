`define ASSInfo(msg = "") \
    $info($sformatf("%s: %m: %s", "PASS ASSERTION", msg))

module assertion_DB #(parameter LIMIT = 4) (
    input clk,
    input rst_n,
    
    input btnHS,
    input btnVS,
    input btnDF_UART,
    input btnDF_VGA,
     
    input HS,
    input VS,
    input DF_UART,
    input DF_VGA
    );

    property ENABLE_btnHS;
        @(posedge clk) disable iff (!rst_n)
        btnHS [*LIMIT] |=> ##1 HS;
    endproperty : ENABLE_btnHS

    property DISABLE_btnHS;
        @(posedge clk) disable iff (!rst_n)
        ~btnHS [*LIMIT] |=> ##1 ~HS;
    endproperty : DISABLE_btnHS

    property ENABLE_btnVS;
        @(posedge clk) disable iff (!rst_n)
        btnVS [*LIMIT] |=> ##1 VS;
    endproperty : ENABLE_btnVS

    property DISABLE_btnVS;
        @(posedge clk) disable iff (!rst_n)
        ~btnVS [*LIMIT] |=> ##1 ~VS;
    endproperty : DISABLE_btnVS

    property ENABLE_btnDF_UART;
        @(posedge clk) disable iff (!rst_n)
        btnDF_UART [*LIMIT] |=> ##1 DF_UART;
    endproperty : ENABLE_btnDF_UART

    property DISABLE_btnDF_UART;
        @(posedge clk) disable iff (!rst_n)
        ~btnDF_UART [*LIMIT] |=> ##1 ~DF_UART;
    endproperty : DISABLE_btnDF_UART

    property ENABLE_btnDF_VGA;
        @(posedge clk) disable iff (!rst_n)
        btnDF_VGA [*LIMIT] |=> ##1 DF_VGA;
    endproperty : ENABLE_btnDF_VGA

    property DISABLE_btnDF_VGA;
        @(posedge clk) disable iff (!rst_n)
        ~btnDF_VGA [*LIMIT] |=> ##1 ~DF_VGA;
    endproperty : DISABLE_btnDF_VGA

    ASSERTION_1_ENABLE_btnHS: assert property (ENABLE_btnHS) `ASSInfo("ASSERTION 1: ENABLE_btnHS!");
        else $error("ERROR ASSERTION 1: ENABLE_btnHS!");

    ASSERTION_2_DISABLE_btnHS: assert property (DISABLE_btnHS) `ASSInfo("ASSERTION 2: DISABLE_btnHS!");
        else $error("ERROR ASSERTION 2: DISABLE_btnHS!");

    ASSERTION_3_ENABLE_btnVS: assert property (ENABLE_btnVS) `ASSInfo("ASSERTION 3: ENABLE_btnVS!");
        else $error("ERROR ASSERTION 3: ENABLE_btnVS!");

    ASSERTION_4_DISABLE_btnVS: assert property (DISABLE_btnVS) `ASSInfo("ASSERTION 4: DISABLE_btnVS!");
        else $error("ERROR ASSERTION 4: DISABLE_btnVS!");

    ASSERTION_5_ENABLE_btnDF_UART: assert property (ENABLE_btnDF_UART) `ASSInfo("ASSERTION 5: ENABLE_btnDF_UART!");
        else $error("ERROR ASSERTION 5: ENABLE_btnDF_UART!");

    ASSERTION_6_DISABLE_btnDF_UART: assert property (DISABLE_btnDF_UART) `ASSInfo("ASSERTION 6: DISABLE_btnDF_UART!");
        else $error("ERROR ASSERTION 6: DISABLE_btnDF_UART!");

    ASSERTION_7_ENABLE_btnDF_VGA: assert property (ENABLE_btnDF_VGA) `ASSInfo("ASSERTION 7: ENABLE_btnDF_VGA!");
        else $error("ERROR ASSERTION 7: ENABLE_btnDF_VGA!");
        
    ASSERTION_8_DISABLE_btnDF_VGA: assert property (DISABLE_btnDF_VGA) `ASSInfo("ASSERTION 8: DISABLE_btnDF_VGA!");
        else $error("ERROR ASSERTION 8: DISABLE_btnDF_VGA!");

endmodule : assertion_DB
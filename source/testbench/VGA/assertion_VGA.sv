`define ASSInfo(msg = "") \
    $info($sformatf("%s: %m: %s", "PASS ASSERTION", msg))

module assertion_VGA (
    input clk,
	input rst_n,

	input c_valid,
	input [2-1:0] c_addr,
	input [2-1:0] c_data,
	input c_ready,

	input [12-1:0] data_in,

	input HSync,
	input VSync,

	input [4-1:0] RED,
	input [4-1:0] GREEN,
	input [4-1:0] BLUE
    );

    property POS_HS;
        @(posedge clk) disable iff (!rst_n)
        $fell(HSync) ##0 ~HSync [*96] |=> $rose(HSync);
    endproperty : POS_HS

    property NEG_HS;
        @(posedge clk) disable iff (!rst_n)
        $rose(HSync) ##0 HSync [*705] |=> $fell(HSync);
    endproperty : NEG_HS

    property INACTIVE_DATA;
        @(posedge clk) disable iff (!rst_n)
        $rose(HSync) | $fell(HSync) |=> ( RED | GREEN | BLUE ) == 'b0;
    endproperty : INACTIVE_DATA

    property POS_VS;
        @(posedge clk) disable iff (!rst_n)
        $fell(VSync) ##0 ~VSync [*1602] |=> $rose(VSync);
    endproperty : POS_VS

    property NEG_VS;
        @(posedge clk) disable iff (!rst_n)
        $rose(VSync) ##0 VSync [*418923] |=> $fell(VSync);
    endproperty : NEG_VS


    ASSERTION_1_POS_HS: assert property (POS_HS) `ASSInfo("ASSERTION 1: POS_HS!");
        else $error("ERROR ASSERTION 1: POS_HS!");

    ASSERTION_2_NEG_HS: assert property (NEG_HS) `ASSInfo("ASSERTION 2: NEG_HS!");
        else $error("ERROR ASSERTION 2: NEG_HS!");

    ASSERTION_3_INACTIVE_DATA: assert property (INACTIVE_DATA) `ASSInfo("ASSERTION 3: INACTIVE_DATA!");
        else $error("ERROR ASSERTION 3: INACTIVE_DATA!");

    ASSERTION_4_POS_VS: assert property (POS_VS) `ASSInfo("ASSERTION 4: POS_VS!");
        else $error("ERROR ASSERTION 4: POS_VS!");

    ASSERTION_5_NEG_VS: assert property (NEG_VS) `ASSInfo("ASSERTION 5: NEG_VS!");
        else $error("ERROR ASSERTION 5: NEG_VS!");

endmodule : assertion_VGA
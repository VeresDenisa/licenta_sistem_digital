// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sun Jun 23 22:57:38 2024
//
// Verilog Description of module CS
//

module CS (clk, rst_n, btnHS, btnVS, btnUART, btnVGA, in, out, 
           HSYNC, VSYNC, LEDS, RED, GREEN, BLUE) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(3[8:10])
    input clk;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    input rst_n;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(7[7:12])
    input btnHS;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(9[7:12])
    input btnVS;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(10[7:12])
    input btnUART;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(11[7:14])
    input btnVGA;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(12[7:13])
    input in;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(14[7:9])
    output out;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(15[8:11])
    output HSYNC;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(17[8:13])
    output VSYNC;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(18[8:13])
    output [7:0]LEDS;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(20[24:28])
    output [3:0]RED;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(22[13:16])
    output [3:0]GREEN;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(23[13:18])
    output [3:0]BLUE;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(24[13:17])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire HSYNC_c /* synthesis SET_AS_NETWORK=HSYNC_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(17[8:13])
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(36[6:13])
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(37[6:14])
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(38[6:12])
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(39[6:12])
    
    wire GND_net, VCC_net, rst_n_c, btnHS_c, btnVS_c, btnUART_c, 
        btnVGA_c, in_c, VSYNC_c, LEDS_c_7, LEDS_c_6, LEDS_c_5, LEDS_c_4, 
        LEDS_c_3, LEDS_c_2, LEDS_c_1, LEDS_c_0, RED_c_3, RED_c_2, 
        RED_c_1, RED_c_0, GREEN_c_3, GREEN_c_2, GREEN_c_1, GREEN_c_0, 
        BLUE_c_3, BLUE_c_2, BLUE_c_1, BLUE_c_0, button_signal_HS, 
        button_signal_VS, button_signal_DEBUG_UART, button_signal_DEBUG_VGA, 
        c_valid;
    wire [2:0]c_ready;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(43[11:18])
    wire [13:0]c_data;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(44[12:18])
    wire [3:0]c_addr;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(45[11:17])
    wire [1:0]UART_error;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(59[11:21])
    
    wire UART_valid_error;
    wire [7:0]UART_out;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(62[11:19])
    
    wire UART_valid_out;
    wire [7:0]UART_out_CM_data;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(72[11:27])
    
    wire UART_out_CM_data_empty;
    wire [3:0]Config_Notification;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(81[12:31])
    
    wire Config_Notification_Valid;
    wire [3:0]Config_Error;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(83[12:24])
    
    wire Error_Valid;
    wire [3:0]VGA_Notification;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(85[12:28])
    
    wire VGA_Notification_Valid;
    wire [11:0]Data_VGA;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(87[13:21])
    
    wire UART_info_empty;
    wire [7:0]UART_out_data;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(112[11:24])
    
    wire UART_error_empty;
    wire [1:0]UART_error_data;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(115[11:26])
    
    wire VGA_error_empty;
    wire [3:0]VGA_error_data;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(118[11:25])
    wire [3:0]VGA_error_data_3__N_13;
    wire [3:0]VGA_error_data_3__N_6;
    
    wire n9183, c_VGA_ready, c_UART_ready, clk_UART_enable_4, clk_c_enable_154, 
        paritybit, data, valid_data, n9181, n147, n8939, c_ready_Assign, 
        c_addr_3__N_470, Load_config;
    wire [8:0]H_left_margin;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga.v(31[30:43])
    wire [5:0]V_left_margin;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga.v(33[30:43])
    wire [11:0]H_count_max;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga.v(36[27:38])
    wire [7:0]H_sync_pulse;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga.v(37[27:39])
    wire [11:0]V_count_max;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga.v(38[27:38])
    wire [7:0]V_sync_pulse;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga.v(39[27:39])
    wire [11:0]Count_h;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga.v(41[30:37])
    wire [11:0]Count_v;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga.v(42[30:37])
    
    wire n146, w_empty_reg, n4231, n145, n9180, n2268, n9179, 
        n144;
    wire [7:0]leds_UART_info;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm.v(32[28:42])
    
    wire n128, rst_n_N_52, n9178, n9177, n8593, n4737, n9176, 
        counter_31__N_85;
    wire [23:0]counter_adj_1197;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(19[19:26])
    
    wire rst_n_N_144, n9175;
    wire [24:0]counter_23__N_178;
    
    wire clkout_N_203, n8589, n9174, counter_31__N_85_adj_1140, n109, 
        n107, counter_31__N_85_adj_1141, n1801, clk_c_enable_198, n4229;
    wire [23:0]baudrate_next_23__N_262;
    
    wire n8439, n5259, n8567, n9169, n116, n9168, n2266, button_ff, 
        n2262, button_ff_adj_1142, button_ff_adj_1143, n4218, n143, 
        n142, parity_check_reg;
    wire [1:0]stop_iteration_step_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(63[33:56])
    
    wire n115, rst_n_N_350, c_data_1_derived_1, n12, clk_c_enable_222, 
        clk_c_enable_187, n5308, n8564, n112, valid_error_next_N_411, 
        n141, flag_reg, n4227, n2, n140, n2529, n8285, n1364, 
        n110, n108, c_valid_N_785, H_BackPorch_nxt_7__N_782, n4204;
    wire [9:0]V_FrontPorch_nxt_9__N_804;
    
    wire n8448, n6, n7671, n109_adj_1144, n133, n107_adj_1145, n4, 
        Current_Qudran_Config_nxt_1__N_886, c_ready_nxt_N_906, n9163, 
        n14, n136, n111, n1373, n114, n139, rst_n_N_1047, clk_c_enable_224, 
        n138, n7670, n7669, n7668, Active_nxt_N_1068, n102, n137, 
        n105, button_ff_adj_1146, n129, c_ready_next_N_346, n118, 
        n124, n4203, n4202, n9195, n7667, clk_LM_enable_2, n4198, 
        H_Left_Margin_nxt_8__N_959, H_Count_Max_nxt_11__N_1022, n9390, 
        V_Count_Max_nxt_11__N_1040, n151, n150, n149, n148, n122, 
        n9154, n103, n113, n117, n121, n123, n130, n132, n134, 
        n135, n131, n25, n119, n106, n8746, n125, n9153, n120, 
        n472, n473, n474, n476, n104, n513, n9150, n4196, clk_c_enable_176, 
        n1367, n10, n9148, n9147, n8, n1947, clk_UART_enable_3, 
        n5755, n9144, n8407, n9143, n4_adj_1147, n5, n6_adj_1148, 
        n8_adj_1149, n10_adj_1150, n4_adj_1151, n6_adj_1152, n8_adj_1153, 
        n10_adj_1154, n12_adj_1155, n14_adj_1156, n9112, n4194, clk_VGA_enable_1, 
        n8607, n8410, clk_c_enable_93, n8702, clk_UART_enable_1, n8012, 
        n8604, n9135, n7735, n7734, n8008, n8553, n9131, n7733, 
        n7732, n7731, clk_c_enable_19, n7730, n7729, n7728, n7727, 
        n9125, n7726, n7725, n4239, n9124, n4237, n7724, n9391, 
        n9197, n9113, clk_c_enable_168, n3408, n9196, n9119, n4235, 
        n9118, n9189, n9188, n4233, n9186, clk_c_enable_81, n9185, 
        n9184, clk_c_enable_87, n9115;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i1_4_lut (.A(n473), .B(n472), .C(n9197), .D(data), .Z(n513)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;
    defparam i1_4_lut.init = 16'ha0ec;
    LUT4 i4284_2_lut_3_lut_4_lut (.A(n476), .B(n9113), .C(UART_out[5]), 
         .D(n474), .Z(n4229)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i4284_2_lut_3_lut_4_lut.init = 16'hf070;
    CCU2D sub_1047_add_2_9 (.A0(Count_h[7]), .B0(H_left_margin[7]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[8]), .B1(H_left_margin[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7670), .COUT(n7671));
    defparam sub_1047_add_2_9.INIT0 = 16'h5999;
    defparam sub_1047_add_2_9.INIT1 = 16'h5999;
    defparam sub_1047_add_2_9.INJECT1_0 = "NO";
    defparam sub_1047_add_2_9.INJECT1_1 = "NO";
    LUT4 i4287_2_lut_3_lut_4_lut (.A(n476), .B(n9113), .C(UART_out[2]), 
         .D(n474), .Z(n4235)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i4287_2_lut_3_lut_4_lut.init = 16'hf070;
    OB BLUE_pad_3 (.I(BLUE_c_3), .O(BLUE[3]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(24[13:17])
    OB GREEN_pad_0 (.I(GREEN_c_0), .O(GREEN[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(23[13:18])
    CCU2D sub_1047_add_2_7 (.A0(Count_h[5]), .B0(H_left_margin[5]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[6]), .B1(H_left_margin[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7669), .COUT(n7670));
    defparam sub_1047_add_2_7.INIT0 = 16'h5999;
    defparam sub_1047_add_2_7.INIT1 = 16'h5999;
    defparam sub_1047_add_2_7.INJECT1_0 = "NO";
    defparam sub_1047_add_2_7.INJECT1_1 = "NO";
    OB GREEN_pad_1 (.I(GREEN_c_1), .O(GREEN[1]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(23[13:18])
    OB GREEN_pad_2 (.I(GREEN_c_2), .O(GREEN[2]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(23[13:18])
    OB GREEN_pad_3 (.I(GREEN_c_3), .O(GREEN[3]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(23[13:18])
    OB RED_pad_0 (.I(RED_c_0), .O(RED[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(22[13:16])
    OB RED_pad_1 (.I(RED_c_1), .O(RED[1]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(22[13:16])
    OB RED_pad_2 (.I(RED_c_2), .O(RED[2]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(22[13:16])
    OB RED_pad_3 (.I(RED_c_3), .O(RED[3]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(22[13:16])
    OB LEDS_pad_0 (.I(LEDS_c_0), .O(LEDS[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(20[24:28])
    OB LEDS_pad_1 (.I(LEDS_c_1), .O(LEDS[1]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(20[24:28])
    OB LEDS_pad_2 (.I(LEDS_c_2), .O(LEDS[2]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(20[24:28])
    LUT4 i4288_2_lut_3_lut_4_lut (.A(n476), .B(n9113), .C(UART_out[1]), 
         .D(n474), .Z(n4237)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i4288_2_lut_3_lut_4_lut.init = 16'hf070;
    OB LEDS_pad_3 (.I(LEDS_c_3), .O(LEDS[3]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(20[24:28])
    LUT4 i4289_2_lut_3_lut_4_lut (.A(n476), .B(n9113), .C(UART_out[0]), 
         .D(n474), .Z(n4239)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i4289_2_lut_3_lut_4_lut.init = 16'hf070;
    OB LEDS_pad_4 (.I(LEDS_c_4), .O(LEDS[4]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(20[24:28])
    OB LEDS_pad_5 (.I(LEDS_c_5), .O(LEDS[5]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(20[24:28])
    OB LEDS_pad_6 (.I(LEDS_c_6), .O(LEDS[6]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(20[24:28])
    OB LEDS_pad_7 (.I(LEDS_c_7), .O(LEDS[7]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(20[24:28])
    OB VSYNC_pad (.I(VSYNC_c), .O(VSYNC));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(18[8:13])
    LUT4 i1_4_lut_adj_58 (.A(n476), .B(n9118), .C(n9135), .D(n473), 
         .Z(n107)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam i1_4_lut_adj_58.init = 16'hc088;
    OB HSYNC_pad (.I(HSYNC_c), .O(HSYNC));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(17[8:13])
    LUT4 i4283_2_lut_3_lut_4_lut (.A(n476), .B(n9113), .C(UART_out[6]), 
         .D(n474), .Z(n4227)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i4283_2_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i4286_2_lut_3_lut_4_lut (.A(n476), .B(n9113), .C(UART_out[3]), 
         .D(n474), .Z(n4233)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i4286_2_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i4285_2_lut_3_lut_4_lut (.A(n476), .B(n9113), .C(UART_out[4]), 
         .D(n474), .Z(n4231)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i4285_2_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i1_2_lut_3_lut_4_lut (.A(clk_VGA), .B(counter_31__N_85), .C(n9147), 
         .D(c_valid), .Z(clk_c_enable_19)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_rep_159_3_lut (.A(clk_VGA), .B(counter_31__N_85), .C(c_valid), 
         .Z(n9112)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam i1_2_lut_rep_159_3_lut.init = 16'h4040;
    OB out_pad (.I(VCC_net), .O(out));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(15[8:11])
    LUT4 i2_3_lut_4_lut (.A(clk_VGA), .B(counter_31__N_85), .C(VGA_Notification_Valid), 
         .D(button_signal_DEBUG_UART), .Z(n8439)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam i2_3_lut_4_lut.init = 16'h0040;
    LUT4 i7548_4_lut (.A(n9185), .B(n9184), .C(n9188), .D(n8593), .Z(n8746)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7548_4_lut.init = 16'hefee;
    LUT4 i7504_4_lut (.A(n9179), .B(n9178), .C(n9181), .D(n8553), .Z(n8702)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7504_4_lut.init = 16'hefee;
    CCU2D sub_1029_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7735), .S0(n1801));
    defparam sub_1029_add_2_cout.INIT0 = 16'h0000;
    defparam sub_1029_add_2_cout.INIT1 = 16'h0000;
    defparam sub_1029_add_2_cout.INJECT1_0 = "NO";
    defparam sub_1029_add_2_cout.INJECT1_1 = "NO";
    LUT4 LessThan_847_i4_4_lut (.A(Count_v[0]), .B(Count_v[1]), .C(V_left_margin[1]), 
         .D(V_left_margin[0]), .Z(n4_adj_1147)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C (D))+!B (C+(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_847_i4_4_lut.init = 16'h8ecf;
    LUT4 i7547_2_lut_rep_161 (.A(clk_DB), .B(counter_31__N_85_adj_1141), 
         .Z(clk_c_enable_198)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam i7547_2_lut_rep_161.init = 16'h4444;
    CCU2D sub_1029_add_2_24 (.A0(counter_adj_1197[22]), .B0(counter_23__N_178[10]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1197[23]), .B1(counter_23__N_178[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7734), .COUT(n7735));
    defparam sub_1029_add_2_24.INIT0 = 16'h5999;
    defparam sub_1029_add_2_24.INIT1 = 16'h5999;
    defparam sub_1029_add_2_24.INJECT1_0 = "NO";
    defparam sub_1029_add_2_24.INJECT1_1 = "NO";
    CCU2D sub_1029_add_2_22 (.A0(counter_adj_1197[20]), .B0(counter_23__N_178[10]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1197[21]), .B1(counter_23__N_178[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7733), .COUT(n7734));
    defparam sub_1029_add_2_22.INIT0 = 16'h5999;
    defparam sub_1029_add_2_22.INIT1 = 16'h5999;
    defparam sub_1029_add_2_22.INJECT1_0 = "NO";
    defparam sub_1029_add_2_22.INJECT1_1 = "NO";
    LUT4 i7484_4_lut (.A(n9175), .B(n9177), .C(n9176), .D(n5), .Z(n8589)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam i7484_4_lut.init = 16'haaab;
    CCU2D sub_1029_add_2_20 (.A0(counter_adj_1197[18]), .B0(counter_23__N_178[10]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1197[19]), .B1(counter_23__N_178[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7732), .COUT(n7733));
    defparam sub_1029_add_2_20.INIT0 = 16'h5999;
    defparam sub_1029_add_2_20.INIT1 = 16'h5999;
    defparam sub_1029_add_2_20.INJECT1_0 = "NO";
    defparam sub_1029_add_2_20.INJECT1_1 = "NO";
    LUT4 LessThan_847_i5_2_lut (.A(V_left_margin[2]), .B(Count_v[2]), .Z(n5)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_847_i5_2_lut.init = 16'h6666;
    CCU2D sub_1047_add_2_5 (.A0(Count_h[3]), .B0(H_left_margin[3]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[4]), .B1(H_left_margin[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7668), .COUT(n7669));
    defparam sub_1047_add_2_5.INIT0 = 16'h5999;
    defparam sub_1047_add_2_5.INIT1 = 16'h5999;
    defparam sub_1047_add_2_5.INJECT1_0 = "NO";
    defparam sub_1047_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1047_add_2_3 (.A0(Count_h[1]), .B0(H_left_margin[1]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[2]), .B1(H_left_margin[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7667), .COUT(n7668));
    defparam sub_1047_add_2_3.INIT0 = 16'h5999;
    defparam sub_1047_add_2_3.INIT1 = 16'h5999;
    defparam sub_1047_add_2_3.INJECT1_0 = "NO";
    defparam sub_1047_add_2_3.INJECT1_1 = "NO";
    LUT4 i3176_3_lut_4_lut (.A(clk_DB), .B(counter_31__N_85_adj_1141), .C(button_ff_adj_1146), 
         .D(btnHS_c), .Z(n4194)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam i3176_3_lut_4_lut.init = 16'h0440;
    LUT4 VGA_error_data_3__I_2_i4_4_lut (.A(Error_Valid), .B(VGA_Notification[3]), 
         .C(VGA_Notification_Valid), .D(n9174), .Z(VGA_error_data_3__N_6[3])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(132[11:157])
    defparam VGA_error_data_3__I_2_i4_4_lut.init = 16'hc5c0;
    LUT4 VGA_error_data_3__I_2_i2_3_lut (.A(VGA_error_data_3__N_13[1]), .B(VGA_Notification[1]), 
         .C(VGA_Notification_Valid), .Z(VGA_error_data_3__N_6[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(132[11:157])
    defparam VGA_error_data_3__I_2_i2_3_lut.init = 16'hcaca;
    CCU2D sub_1029_add_2_18 (.A0(counter_adj_1197[16]), .B0(counter_23__N_178[10]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1197[17]), .B1(counter_23__N_178[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7731), .COUT(n7732));
    defparam sub_1029_add_2_18.INIT0 = 16'h5999;
    defparam sub_1029_add_2_18.INIT1 = 16'h5999;
    defparam sub_1029_add_2_18.INJECT1_0 = "NO";
    defparam sub_1029_add_2_18.INJECT1_1 = "NO";
    LUT4 mux_8_i2_4_lut (.A(Config_Notification[1]), .B(Config_Error[1]), 
         .C(Error_Valid), .D(Config_Notification_Valid), .Z(VGA_error_data_3__N_13[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(132[59:157])
    defparam mux_8_i2_4_lut.init = 16'hcac0;
    LUT4 i3184_3_lut_4_lut (.A(clk_DB), .B(counter_31__N_85_adj_1141), .C(button_ff_adj_1143), 
         .D(btnVGA_c), .Z(n4202)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam i3184_3_lut_4_lut.init = 16'h0440;
    VLO i1 (.Z(GND_net));
    LUT4 i3185_3_lut_4_lut (.A(clk_DB), .B(counter_31__N_85_adj_1141), .C(button_ff_adj_1142), 
         .D(btnUART_c), .Z(n4203)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam i3185_3_lut_4_lut.init = 16'h0440;
    LUT4 i3186_3_lut_4_lut (.A(clk_DB), .B(counter_31__N_85_adj_1141), .C(button_ff), 
         .D(btnVS_c), .Z(n4204)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam i3186_3_lut_4_lut.init = 16'h0440;
    TSALL TSALL_INST (.TSALL(GND_net));
    CCU2D sub_1029_add_2_16 (.A0(counter_adj_1197[14]), .B0(counter_23__N_178[10]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1197[15]), .B1(counter_23__N_178[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7730), .COUT(n7731));
    defparam sub_1029_add_2_16.INIT0 = 16'h5999;
    defparam sub_1029_add_2_16.INIT1 = 16'h5999;
    defparam sub_1029_add_2_16.INJECT1_0 = "NO";
    defparam sub_1029_add_2_16.INJECT1_1 = "NO";
    LUT4 i3695_4_lut (.A(valid_data), .B(n9113), .C(n472), .D(n109), 
         .Z(clk_c_enable_222)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i3695_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_59 (.A(data), .B(n8008), .C(n472), .D(n9150), 
         .Z(n4218)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_59.init = 16'h5450;
    DB db (.button_ff(button_ff), .clk_DB(clk_DB), .btnVS_c(btnVS_c), 
       .clk_c(clk_c), .clk_c_enable_198(clk_c_enable_198), .n4204(n4204), 
       .button_signal_VS(button_signal_VS), .button_ff_adj_4(button_ff_adj_1146), 
       .btnHS_c(btnHS_c), .n4194(n4194), .button_signal_HS(button_signal_HS), 
       .button_ff_adj_5(button_ff_adj_1143), .btnVGA_c(btnVGA_c), .n4202(n4202), 
       .button_signal_DEBUG_VGA(button_signal_DEBUG_VGA), .button_ff_adj_6(button_ff_adj_1142), 
       .btnUART_c(btnUART_c), .n4203(n4203), .button_signal_DEBUG_UART(button_signal_DEBUG_UART)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(51[4] 56[2])
    LUT4 i7666_then_1_lut (.A(data), .Z(n9196)) /* synthesis lut_function=(!(A)) */ ;
    defparam i7666_then_1_lut.init = 16'h5555;
    LUT4 LessThan_838_i4_4_lut (.A(Count_h[0]), .B(Count_h[1]), .C(H_sync_pulse[1]), 
         .D(H_sync_pulse[0]), .Z(n4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_838_i4_4_lut.init = 16'h0c8e;
    OB BLUE_pad_2 (.I(BLUE_c_2), .O(BLUE[2]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(24[13:17])
    LUT4 LessThan_841_i4_4_lut (.A(Count_v[0]), .B(Count_v[1]), .C(V_sync_pulse[1]), 
         .D(V_sync_pulse[0]), .Z(n4_adj_1151)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_841_i4_4_lut.init = 16'h0c8e;
    CCU2D sub_1029_add_2_14 (.A0(counter_adj_1197[12]), .B0(counter_23__N_178[10]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1197[13]), .B1(counter_23__N_178[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7729), .COUT(n7730));
    defparam sub_1029_add_2_14.INIT0 = 16'h5999;
    defparam sub_1029_add_2_14.INIT1 = 16'h5999;
    defparam sub_1029_add_2_14.INJECT1_0 = "NO";
    defparam sub_1029_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_1029_add_2_12 (.A0(counter_adj_1197[10]), .B0(counter_23__N_178[10]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1197[11]), .B1(counter_23__N_178[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7728), .COUT(n7729));
    defparam sub_1029_add_2_12.INIT0 = 16'h5999;
    defparam sub_1029_add_2_12.INIT1 = 16'h5999;
    defparam sub_1029_add_2_12.INJECT1_0 = "NO";
    defparam sub_1029_add_2_12.INJECT1_1 = "NO";
    LUT4 i7500_2_lut_rep_164 (.A(clk_LM), .B(counter_31__N_85_adj_1140), 
         .Z(clk_c_enable_81)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam i7500_2_lut_rep_164.init = 16'h4444;
    CCU2D sub_1029_add_2_10 (.A0(counter_adj_1197[8]), .B0(counter_23__N_178[8]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1197[9]), .B1(counter_23__N_178[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7727), .COUT(n7728));
    defparam sub_1029_add_2_10.INIT0 = 16'h5999;
    defparam sub_1029_add_2_10.INIT1 = 16'h5999;
    defparam sub_1029_add_2_10.INJECT1_0 = "NO";
    defparam sub_1029_add_2_10.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_60 (.A(valid_error_next_N_411), .B(data), .C(n476), 
         .D(n2), .Z(n8285)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart.v(40[6:10])
    defparam i1_4_lut_adj_60.init = 16'heeea;
    LUT4 i7415_4_lut_4_lut (.A(n9180), .B(n8564), .C(n12), .D(n4), .Z(n14)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7415_4_lut_4_lut.init = 16'hf4b0;
    CCU2D sub_1029_add_2_8 (.A0(counter_adj_1197[6]), .B0(counter_23__N_178[6]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1197[7]), .B1(counter_23__N_178[7]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7726), .COUT(n7727));
    defparam sub_1029_add_2_8.INIT0 = 16'h5999;
    defparam sub_1029_add_2_8.INIT1 = 16'h5999;
    defparam sub_1029_add_2_8.INJECT1_0 = "NO";
    defparam sub_1029_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_1029_add_2_6 (.A0(counter_adj_1197[4]), .B0(counter_23__N_178[4]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1197[5]), .B1(counter_23__N_178[5]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7725), .COUT(n7726));
    defparam sub_1029_add_2_6.INIT0 = 16'h5999;
    defparam sub_1029_add_2_6.INIT1 = 16'h5999;
    defparam sub_1029_add_2_6.INJECT1_0 = "NO";
    defparam sub_1029_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_1029_add_2_4 (.A0(counter_adj_1197[2]), .B0(counter_23__N_178[2]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1197[3]), .B1(counter_23__N_178[3]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7724), .COUT(n7725));
    defparam sub_1029_add_2_4.INIT0 = 16'h5999;
    defparam sub_1029_add_2_4.INIT1 = 16'h5999;
    defparam sub_1029_add_2_4.INJECT1_0 = "NO";
    defparam sub_1029_add_2_4.INJECT1_1 = "NO";
    PFUMX LessThan_841_i16 (.BLUT(n8_adj_1153), .ALUT(n14_adj_1156), .C0(n8607), 
          .Z(n1367));
    LUT4 m1_lut (.Z(n9391)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i1338_2_lut_3_lut (.A(clk_LM), .B(counter_31__N_85_adj_1140), .C(VGA_error_empty), 
         .Z(n2266)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam i1338_2_lut_3_lut.init = 16'h4040;
    LUT4 i1333_2_lut_3_lut (.A(clk_LM), .B(counter_31__N_85_adj_1140), .C(UART_error_empty), 
         .Z(n2262)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam i1333_2_lut_3_lut.init = 16'h4040;
    LUT4 i1339_2_lut_3_lut (.A(clk_LM), .B(counter_31__N_85_adj_1140), .C(UART_info_empty), 
         .Z(n2268)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam i1339_2_lut_3_lut.init = 16'h4040;
    CCU2D sub_1029_add_2_2 (.A0(counter_adj_1197[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter_adj_1197[1]), .B1(counter_23__N_178[1]), 
          .C1(GND_net), .D1(GND_net), .COUT(n7724));
    defparam sub_1029_add_2_2.INIT0 = 16'h5000;
    defparam sub_1029_add_2_2.INIT1 = 16'h5999;
    defparam sub_1029_add_2_2.INJECT1_0 = "NO";
    defparam sub_1029_add_2_2.INJECT1_1 = "NO";
    LUT4 i7417_4_lut_4_lut (.A(n9186), .B(n8604), .C(n12_adj_1155), .D(n4_adj_1151), 
         .Z(n14_adj_1156)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7417_4_lut_4_lut.init = 16'hf4b0;
    PFUMX LessThan_838_i16 (.BLUT(n8), .ALUT(n14), .C0(n8567), .Z(n1364));
    LUT4 m0_lut (.Z(n9390)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    CCU2D sub_1047_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[0]), .B1(H_left_margin[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n7667));
    defparam sub_1047_add_2_1.INIT0 = 16'h0000;
    defparam sub_1047_add_2_1.INIT1 = 16'h5999;
    defparam sub_1047_add_2_1.INJECT1_0 = "NO";
    defparam sub_1047_add_2_1.INJECT1_1 = "NO";
    PFUMX LessThan_847_i12 (.BLUT(n8_adj_1149), .ALUT(n10_adj_1150), .C0(n8589), 
          .Z(n1373));
    LUT4 i1_2_lut_rep_201 (.A(flag_reg), .B(UART_valid_out), .Z(n9154)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_201.init = 16'h2222;
    LUT4 i1_2_lut_rep_178_3_lut_4_lut (.A(flag_reg), .B(UART_valid_out), 
         .C(n9168), .D(n9169), .Z(n9131)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_rep_178_3_lut_4_lut.init = 16'h2000;
    LUT4 i7564_2_lut_rep_183_3_lut (.A(flag_reg), .B(UART_valid_out), .C(UART_valid_error), 
         .Z(clk_UART_enable_1)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i7564_2_lut_rep_183_3_lut.init = 16'hfdfd;
    LUT4 i2_2_lut_3_lut_4_lut (.A(clk_UART), .B(n9119), .C(n9131), .D(UART_valid_error), 
         .Z(n5755)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0040;
    \Sync_Reg(SIZE=8)_U7  FIFO_UART_CM (.clk_UART(clk_UART), .clk_c(clk_c), 
            .UART_out({UART_out}), .UART_out_CM_data_empty(UART_out_CM_data_empty), 
            .clk_LM(clk_LM), .n9390(n9390), .counter_31__N_85(counter_31__N_85_adj_1140), 
            .\counter_23__N_178[10] (counter_23__N_178[10]), .n1801(n1801), 
            .UART_out_CM_data({UART_out_CM_data}), .UART_valid_out(UART_valid_out), 
            .button_signal_DEBUG_UART(button_signal_DEBUG_UART)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(75[22] 78[63])
    LUT4 i3_4_lut (.A(n1373), .B(Count_v[7]), .C(Count_v[6]), .D(n8407), 
         .Z(Active_nxt_N_1068)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_160_3_lut_4_lut (.A(clk_UART), .B(n9119), .C(data), 
         .D(valid_data), .Z(n9113)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_rep_160_3_lut_4_lut.init = 16'h0400;
    OB BLUE_pad_1 (.I(BLUE_c_1), .O(BLUE[1]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(24[13:17])
    OB BLUE_pad_0 (.I(BLUE_c_0), .O(BLUE[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(24[13:17])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(7[7:12])
    IB btnHS_pad (.I(btnHS), .O(btnHS_c));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(9[7:12])
    IB btnVS_pad (.I(btnVS), .O(btnVS_c));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(10[7:12])
    IB btnUART_pad (.I(btnUART), .O(btnUART_c));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(11[7:14])
    IB btnVGA_pad (.I(btnVGA), .O(btnVGA_c));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(12[7:13])
    IB in_pad (.I(in), .O(in_c));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(14[7:9])
    LUT4 i3_3_lut_4_lut (.A(clk_UART), .B(n9119), .C(n473), .D(n4737), 
         .Z(n8012)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i3_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_61 (.A(clk_UART), .B(n9119), .C(n9143), 
         .D(valid_data), .Z(clk_c_enable_224)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_61.init = 16'h4000;
    LUT4 i4169_2_lut_rep_166 (.A(n1801), .B(counter_23__N_178[10]), .Z(n9119)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i4169_2_lut_rep_166.init = 16'h2222;
    LUT4 i4359_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n116), 
         .Z(n142)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4359_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4358_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n117), 
         .Z(n143)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4358_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4357_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n118), 
         .Z(n144)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4357_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4365_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n110), 
         .Z(n136)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4365_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4356_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n119), 
         .Z(n145)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4356_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4364_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n111), 
         .Z(n137)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4364_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i1_2_lut_rep_163_3_lut_4_lut (.A(n1801), .B(counter_23__N_178[10]), 
         .C(valid_data), .D(clk_UART), .Z(clk_c_enable_87)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_rep_163_3_lut_4_lut.init = 16'h0020;
    LUT4 i4355_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n120), 
         .Z(n146)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4355_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_62 (.A(n1801), .B(counter_23__N_178[10]), 
         .C(UART_valid_error), .D(clk_UART), .Z(clk_c_enable_187)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_62.init = 16'h0020;
    LUT4 i4354_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n121), 
         .Z(n147)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4354_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4363_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n112), 
         .Z(n138)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4363_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4353_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n122), 
         .Z(n148)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4353_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i1_2_lut_rep_190_3_lut (.A(data), .B(n476), .C(n474), .Z(n9143)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart.v(40[6:10])
    defparam i1_2_lut_rep_190_3_lut.init = 16'hf4f4;
    LUT4 i1_2_lut_3_lut_4_lut_adj_63 (.A(data), .B(n476), .C(valid_data), 
         .D(n474), .Z(clk_UART_enable_4)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart.v(40[6:10])
    defparam i1_2_lut_3_lut_4_lut_adj_63.init = 16'hf040;
    LUT4 i146_3_lut_4_lut (.A(data), .B(n476), .C(n5308), .D(n474), 
         .Z(n2529)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart.v(40[6:10])
    defparam i146_3_lut_4_lut.init = 16'h4f44;
    \Sync_Reg(SIZE=2)  FIFO_UART_error (.clk_c(clk_c), .clk_c_enable_187(clk_c_enable_187), 
            .UART_error({UART_error}), .UART_error_data({UART_error_data}), 
            .clk_c_enable_176(clk_c_enable_176), .w_empty_reg(w_empty_reg), 
            .clk_UART(clk_UART), .UART_error_empty(UART_error_empty), .clk_LM(clk_LM), 
            .clk_LM_enable_2(clk_LM_enable_2), .n9390(n9390), .UART_valid_error(UART_valid_error), 
            .n9154(n9154), .n9168(n9168), .n9169(n9169), .clk_UART_enable_3(clk_UART_enable_3)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(125[22] 128[56])
    LUT4 i4352_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n123), 
         .Z(n149)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4352_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i7285_2_lut_rep_162_3_lut_4_lut (.A(n1801), .B(counter_23__N_178[10]), 
         .C(UART_valid_error), .D(clk_UART), .Z(n9115)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i7285_2_lut_rep_162_3_lut_4_lut.init = 16'hfffd;
    CCU2D sub_1047_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7671), .S0(n1947));
    defparam sub_1047_add_2_cout.INIT0 = 16'h0000;
    defparam sub_1047_add_2_cout.INIT1 = 16'h0000;
    defparam sub_1047_add_2_cout.INJECT1_0 = "NO";
    defparam sub_1047_add_2_cout.INJECT1_1 = "NO";
    LUT4 i4366_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n109_adj_1144), 
         .Z(n135)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4366_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4367_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n108), 
         .Z(n134)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4367_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4368_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n107_adj_1145), 
         .Z(n133)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4368_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4369_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n106), 
         .Z(n132)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4369_2_lut_3_lut.init = 16'hd0d0;
    UART uart (.data(data), .parity_check_reg(parity_check_reg), .n2278({paritybit}), 
         .n9135(n9135), .n476(n476), .clk_c(clk_c), .clk_c_enable_87(clk_c_enable_87), 
         .rst_n_N_350(rst_n_N_350), .n8285(n8285), .UART_valid_error(UART_valid_error), 
         .clk_UART(clk_UART), .UART_out({UART_out}), .clk_c_enable_224(clk_c_enable_224), 
         .n4227(n4227), .n472(n472), .n473(n473), .n5308(n5308), .n474(n474), 
         .stop_iteration_step_reg({stop_iteration_step_reg}), .clk_UART_enable_1(clk_UART_enable_1), 
         .\counter_23__N_178[10] (counter_23__N_178[10]), .n1801(n1801), 
         .n9150(n9150), .clk_UART_enable_4(clk_UART_enable_4), .valid_data(valid_data), 
         .valid_error_next_N_411(valid_error_next_N_411), .n513(n513), .n2529(n2529), 
         .UART_valid_out(UART_valid_out), .n4239(n4239), .w_empty_reg(w_empty_reg), 
         .clk_LM_enable_2(clk_LM_enable_2), .counter_31__N_85(counter_31__N_85_adj_1140), 
         .clk_LM(clk_LM), .clk_c_enable_176(clk_c_enable_176), .n4237(n4237), 
         .UART_error({UART_error}), .clk_c_enable_222(clk_c_enable_222), 
         .n4218(n4218), .n4235(n4235), .n4233(n4233), .n4737(n4737), 
         .n2(n2), .n4231(n4231), .n4229(n4229), .clk_c_enable_19(clk_c_enable_19), 
         .\c_data[1] (c_data[1]), .\c_ready[1] (c_ready[1]), .clk_VGA(clk_VGA), 
         .c_valid_N_785(c_valid_N_785), .c_ready_next_N_346(c_ready_next_N_346), 
         .\c_addr[0] (c_addr[0]), .n9163(n9163), .c_valid(c_valid), .\c_addr[1] (c_addr[1]), 
         .n5259(n5259), .n8448(n8448), .n8008(n8008), .clk_VGA_enable_1(clk_VGA_enable_1), 
         .\c_data[0] (c_data[0]), .in_c(in_c), .flag_reg(flag_reg), .n9144(n9144), 
         .clk_UART_enable_3(clk_UART_enable_3), .clk_c_enable_154(clk_c_enable_154), 
         .n5755(n5755), .n9118(n9118), .clk_c_enable_168(clk_c_enable_168), 
         .n25(n25), .n9168(n9168), .n9169(n9169), .n8939(n8939)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(65[6] 70[2])
    LUT4 i3_4_lut_adj_64 (.A(Count_v[11]), .B(Count_v[9]), .C(Count_v[10]), 
         .D(Count_v[8]), .Z(n8407)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_64.init = 16'hfffe;
    LUT4 i4218_2_lut_rep_221 (.A(Config_Notification[3]), .B(Config_Notification_Valid), 
         .Z(n9174)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(132[93:156])
    defparam i4218_2_lut_rep_221.init = 16'h8888;
    LUT4 i7666_else_1_lut (.A(data), .B(stop_iteration_step_reg[1]), .C(paritybit), 
         .D(parity_check_reg), .Z(n9195)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B+((D)+!C)))) */ ;
    defparam i7666_else_1_lut.init = 16'h5565;
    LUT4 mux_8_i3_3_lut_4_lut (.A(Config_Notification[3]), .B(Config_Notification_Valid), 
         .C(Error_Valid), .D(Config_Error[2]), .Z(VGA_error_data_3__N_13[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(132[93:156])
    defparam mux_8_i3_3_lut_4_lut.init = 16'hf808;
    LUT4 LessThan_847_i11_2_lut_rep_222 (.A(V_left_margin[5]), .B(Count_v[5]), 
         .Z(n9175)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_847_i11_2_lut_rep_222.init = 16'h6666;
    LUT4 LessThan_847_i10_3_lut_3_lut (.A(V_left_margin[5]), .B(Count_v[5]), 
         .C(n4_adj_1147), .Z(n10_adj_1150)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_847_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_847_i7_2_lut_rep_223 (.A(V_left_margin[3]), .B(Count_v[3]), 
         .Z(n9176)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_847_i7_2_lut_rep_223.init = 16'h6666;
    LUT4 LessThan_847_i6_3_lut_3_lut (.A(V_left_margin[3]), .B(Count_v[3]), 
         .C(Count_v[2]), .Z(n6_adj_1148)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_847_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_847_i9_2_lut_rep_224 (.A(V_left_margin[4]), .B(Count_v[4]), 
         .Z(n9177)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_847_i9_2_lut_rep_224.init = 16'h6666;
    LUT4 LessThan_847_i8_3_lut_3_lut (.A(V_left_margin[4]), .B(Count_v[4]), 
         .C(n6_adj_1148), .Z(n8_adj_1149)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_847_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i4370_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n105), 
         .Z(n131)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4370_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4371_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n104), 
         .Z(n130)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4371_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i3_4_lut_adj_65 (.A(n9154), .B(n9115), .C(n9168), .D(n25), 
         .Z(clk_c_enable_154)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i3_4_lut_adj_65.init = 16'h2220;
    LUT4 LessThan_838_i11_2_lut_rep_225 (.A(H_sync_pulse[5]), .B(Count_h[5]), 
         .Z(n9178)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_838_i11_2_lut_rep_225.init = 16'h6666;
    LUT4 i4372_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n103), 
         .Z(n129)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4372_2_lut_3_lut.init = 16'hd0d0;
    LUT4 LessThan_838_i13_2_lut_rep_226 (.A(H_sync_pulse[6]), .B(Count_h[6]), 
         .Z(n9179)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_838_i13_2_lut_rep_226.init = 16'h6666;
    LUT4 i7343_2_lut_3_lut_4_lut (.A(H_sync_pulse[6]), .B(Count_h[6]), .C(Count_h[5]), 
         .D(H_sync_pulse[5]), .Z(n8564)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7343_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_838_i10_3_lut_3_lut (.A(H_sync_pulse[6]), .B(Count_h[6]), 
         .C(Count_h[5]), .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_838_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_838_i15_2_lut_rep_227 (.A(H_sync_pulse[7]), .B(Count_h[7]), 
         .Z(n9180)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_838_i15_2_lut_rep_227.init = 16'h6666;
    LUT4 LessThan_838_i12_3_lut_3_lut (.A(H_sync_pulse[7]), .B(Count_h[7]), 
         .C(n10), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_838_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 VGA_error_data_3__I_2_i1_3_lut (.A(VGA_error_data_3__N_13[0]), .B(VGA_Notification[0]), 
         .C(VGA_Notification_Valid), .Z(VGA_error_data_3__N_6[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(132[11:157])
    defparam VGA_error_data_3__I_2_i1_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut (.A(Count_h[9]), .B(Count_h[10]), .C(Count_h[11]), .Z(n8410)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 mux_8_i1_4_lut (.A(Config_Notification[0]), .B(Config_Error[0]), 
         .C(Error_Valid), .D(Config_Notification_Valid), .Z(VGA_error_data_3__N_13[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(132[59:157])
    defparam mux_8_i1_4_lut.init = 16'hcac0;
    LUT4 i7505_2_lut_3_lut (.A(H_sync_pulse[7]), .B(Count_h[7]), .C(n8702), 
         .Z(n8567)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7505_2_lut_3_lut.init = 16'hf6f6;
    VGA vga (.n9153(n9153), .H_left_margin({H_left_margin}), .clk_c(clk_c), 
        .V_left_margin({V_left_margin}), .H_sync_pulse({H_sync_pulse}), 
        .V_sync_pulse({V_sync_pulse}), .\c_data[1] (c_data[1]), .H_Left_Margin_nxt_8__N_959(H_Left_Margin_nxt_8__N_959), 
        .Load_config(Load_config), .\c_data[1]_derived_1 (c_data_1_derived_1), 
        .V_Count_Max_nxt_11__N_1040(V_Count_Max_nxt_11__N_1040), .H_Count_Max_nxt_11__N_1022(H_Count_Max_nxt_11__N_1022), 
        .\c_data[0] (c_data[0]), .H_BackPorch_nxt_7__N_782(H_BackPorch_nxt_7__N_782), 
        .n3408(n3408), .n9125(n9125), .c_ready_nxt_N_906(c_ready_nxt_N_906), 
        .c_valid(c_valid), .\c_addr[3] (c_addr[3]), .\c_addr[2] (c_addr[2]), 
        .\H_count_max[8] (H_count_max[8]), .\V_count_max[3] (V_count_max[3]), 
        .button_signal_DEBUG_VGA(button_signal_DEBUG_VGA), .clk_c_enable_93(clk_c_enable_93), 
        .\c_data[2] (c_data[2]), .\baudrate_next_23__N_262[6] (baudrate_next_23__N_262[6]), 
        .\c_ready[1] (c_ready[1]), .c_ready_Assign(c_ready_Assign), .c_addr_3__N_470(c_addr_3__N_470), 
        .c_UART_ready(c_UART_ready), .c_VGA_ready(c_VGA_ready), .n9183(n9183), 
        .n9189(n9189), .Data_VGA({Data_VGA}), .BLUE_c_2(BLUE_c_2), .RED_c_1(RED_c_1), 
        .BLUE_c_1(BLUE_c_1), .BLUE_c_0(BLUE_c_0), .RED_c_2(RED_c_2), .RED_c_3(RED_c_3), 
        .n1947(n1947), .Active_nxt_N_1068(Active_nxt_N_1068), .n8410(n8410), 
        .Count_h({Count_h}), .GND_net(GND_net), .Count_v({Count_v}), .BLUE_c_3(BLUE_c_3), 
        .GREEN_c_0(GREEN_c_0), .GREEN_c_1(GREEN_c_1), .GREEN_c_2(GREEN_c_2), 
        .GREEN_c_3(GREEN_c_3), .RED_c_0(RED_c_0), .VSYNC_c(VSYNC_c), .HSYNC_c(HSYNC_c), 
        .rst_n_N_1047(rst_n_N_1047), .n4196(n4196), .n1367(n1367), .n8407(n8407), 
        .n4198(n4198), .n1364(n1364)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(102[5] 107[31])
    LUT4 i4373_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n102), 
         .Z(n128)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4373_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4351_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n124), 
         .Z(n150)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4351_2_lut_3_lut.init = 16'hd0d0;
    LUT4 LessThan_838_i6_3_lut_3_lut (.A(H_sync_pulse[3]), .B(Count_h[3]), 
         .C(Count_h[2]), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_838_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i7332_3_lut_4_lut (.A(H_sync_pulse[3]), .B(Count_h[3]), .C(Count_h[2]), 
         .D(H_sync_pulse[2]), .Z(n8553)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7332_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_838_i9_2_lut_rep_228 (.A(H_sync_pulse[4]), .B(Count_h[4]), 
         .Z(n9181)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_838_i9_2_lut_rep_228.init = 16'h6666;
    LUT4 LessThan_838_i8_3_lut_3_lut (.A(H_sync_pulse[4]), .B(Count_h[4]), 
         .C(n6), .Z(n8)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_838_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i7556_2_lut_rep_165_3_lut (.A(n1801), .B(counter_23__N_178[10]), 
         .C(clk_UART), .Z(n9118)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i7556_2_lut_rep_165_3_lut.init = 16'h0202;
    LUT4 i4233_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n125), 
         .Z(n151)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4233_2_lut_3_lut.init = 16'hd0d0;
    LUT4 clkout_I_0_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(clk_UART), 
         .Z(clkout_N_203)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;
    defparam clkout_I_0_2_lut_3_lut.init = 16'hd2d2;
    LUT4 i4360_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n115), 
         .Z(n141)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4360_2_lut_3_lut.init = 16'hd0d0;
    Sync_Reg FIFO_CM_error (.clk_c(clk_c), .\VGA_error_data_3__N_6[0] (VGA_error_data_3__N_6[0]), 
            .VGA_error_data({VGA_error_data}), .clk_VGA(clk_VGA), .VGA_error_empty(VGA_error_empty), 
            .clk_LM(clk_LM), .n9390(n9390), .counter_31__N_85(counter_31__N_85), 
            .counter_31__N_85_adj_3(counter_31__N_85_adj_1140), .\VGA_error_data_3__N_6[3] (VGA_error_data_3__N_6[3]), 
            .\VGA_error_data_3__N_6[1] (VGA_error_data_3__N_6[1]), .VGA_Notification_Valid(VGA_Notification_Valid), 
            .button_signal_DEBUG_UART(button_signal_DEBUG_UART), .Error_Valid(Error_Valid), 
            .Config_Notification_Valid(Config_Notification_Valid), .n8439(n8439), 
            .\VGA_error_data_3__N_13[2] (VGA_error_data_3__N_13[2])) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(130[22] 133[54])
    LUT4 LessThan_841_i11_2_lut_rep_231 (.A(V_sync_pulse[5]), .B(Count_v[5]), 
         .Z(n9184)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_841_i11_2_lut_rep_231.init = 16'h6666;
    LUT4 LessThan_841_i13_2_lut_rep_232 (.A(V_sync_pulse[6]), .B(Count_v[6]), 
         .Z(n9185)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_841_i13_2_lut_rep_232.init = 16'h6666;
    LUT4 i7383_2_lut_3_lut_4_lut (.A(V_sync_pulse[6]), .B(Count_v[6]), .C(Count_v[5]), 
         .D(V_sync_pulse[5]), .Z(n8604)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7383_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_841_i10_3_lut_3_lut (.A(V_sync_pulse[6]), .B(Count_v[6]), 
         .C(Count_v[5]), .Z(n10_adj_1154)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_841_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_841_i15_2_lut_rep_233 (.A(V_sync_pulse[7]), .B(Count_v[7]), 
         .Z(n9186)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_841_i15_2_lut_rep_233.init = 16'h6666;
    LUT4 LessThan_841_i12_3_lut_3_lut (.A(V_sync_pulse[7]), .B(Count_v[7]), 
         .C(n10_adj_1154), .Z(n12_adj_1155)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_841_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i7549_2_lut_3_lut (.A(V_sync_pulse[7]), .B(Count_v[7]), .C(n8746), 
         .Z(n8607)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7549_2_lut_3_lut.init = 16'hf6f6;
    \Sync_Reg(SIZE=8)  FIFO_UART_info (.UART_out_data({UART_out_data}), .clk_c(clk_c), 
            .clk_UART(clk_UART), .UART_info_empty(UART_info_empty), .clk_LM(clk_LM), 
            .n9390(n9390), .UART_out({UART_out}), .\counter_23__N_178[10] (counter_23__N_178[10]), 
            .n1801(n1801), .counter_31__N_85(counter_31__N_85_adj_1140), 
            .UART_valid_out(UART_valid_out), .button_signal_DEBUG_UART(button_signal_DEBUG_UART)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(120[22] 123[53])
    LM lm (.button_signal_DEBUG_UART(button_signal_DEBUG_UART), .LEDS_c_0(LEDS_c_0), 
       .LEDS_c_1(LEDS_c_1), .LEDS_c_2(LEDS_c_2), .LEDS_c_3(LEDS_c_3), 
       .LEDS_c_4(LEDS_c_4), .LEDS_c_5(LEDS_c_5), .LEDS_c_6(LEDS_c_6), 
       .clk_c(clk_c), .clk_c_enable_81(clk_c_enable_81), .n2268(n2268), 
       .UART_out_data({UART_out_data}), .\leds_UART_info[7] (leds_UART_info[7]), 
       .n2262(n2262), .UART_error_data({UART_error_data}), .n2266(n2266), 
       .VGA_error_data({VGA_error_data})) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(135[4] 143[2])
    GSR GSR_INST (.GSR(rst_n_c));
    LUT4 LessThan_841_i6_3_lut_3_lut (.A(V_sync_pulse[3]), .B(Count_v[3]), 
         .C(Count_v[2]), .Z(n6_adj_1152)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_841_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i7372_3_lut_4_lut (.A(V_sync_pulse[3]), .B(Count_v[3]), .C(Count_v[2]), 
         .D(V_sync_pulse[2]), .Z(n8593)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7372_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_841_i9_2_lut_rep_235 (.A(V_sync_pulse[4]), .B(Count_v[4]), 
         .Z(n9188)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_841_i9_2_lut_rep_235.init = 16'h6666;
    LUT4 LessThan_841_i8_3_lut_3_lut (.A(V_sync_pulse[4]), .B(Count_v[4]), 
         .C(n6_adj_1152), .Z(n8_adj_1153)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_841_i8_3_lut_3_lut.init = 16'hd4d4;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i4361_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n114), 
         .Z(n140)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4361_2_lut_3_lut.init = 16'hd0d0;
    CM cm (.clk_c(clk_c), .VSYNC_c(VSYNC_c), .GND_net(GND_net), .n4196(n4196), 
       .HSYNC_c(HSYNC_c), .n4198(n4198), .UART_out_CM_data({UART_out_CM_data}), 
       .c_addr({c_addr}), .c_addr_3__N_470(c_addr_3__N_470), .UART_out_CM_data_empty(UART_out_CM_data_empty), 
       .\c_data[1] (c_data[1]), .\c_data[0] (c_data[0]), .\Config_Notification[0] (Config_Notification[0]), 
       .c_valid(c_valid), .Config_Notification_Valid(Config_Notification_Valid), 
       .Error_Valid(Error_Valid), .\c_data[2] (c_data[2]), .\Config_Error[1] (Config_Error[1]), 
       .\Config_Error[2] (Config_Error[2]), .\Config_Notification[3] (Config_Notification[3]), 
       .n9391(n9391), .\Config_Notification[1] (Config_Notification[1]), 
       .rst_n_c(rst_n_c), .\c_ready[1] (c_ready[1]), .rst_n_N_350(rst_n_N_350), 
       .c_VGA_ready(c_VGA_ready), .rst_n_N_52(rst_n_N_52), .c_UART_ready(c_UART_ready), 
       .rst_n_N_144(rst_n_N_144), .\leds_UART_info[7] (leds_UART_info[7]), 
       .button_signal_DEBUG_UART(button_signal_DEBUG_UART), .LEDS_c_7(LEDS_c_7), 
       .\Config_Error[0] (Config_Error[0]), .Load_config(Load_config), .rst_n_N_1047(rst_n_N_1047), 
       .\VGA_Notification[0] (VGA_Notification[0]), .Data_VGA({Data_VGA}), 
       .c_ready_Assign(c_ready_Assign), .button_signal_DEBUG_VGA(button_signal_DEBUG_VGA), 
       .c_ready_nxt_N_906(c_ready_nxt_N_906), .n9125(n9125), .n9124(n9124), 
       .button_signal_HS(button_signal_HS), .button_signal_VS(button_signal_VS), 
       .n9148(n9148), .n8448(n8448), .Current_Qudran_Config_nxt_1__N_886(Current_Qudran_Config_nxt_1__N_886), 
       .VGA_Notification_Valid(VGA_Notification_Valid), .clk_c_enable_93(clk_c_enable_93), 
       .H_Left_Margin_nxt_8__N_959(H_Left_Margin_nxt_8__N_959), .n9183(n9183), 
       .\V_FrontPorch_nxt_9__N_804[3] (V_FrontPorch_nxt_9__N_804[3]), .\VGA_Notification[3] (VGA_Notification[3]), 
       .\VGA_Notification[1] (VGA_Notification[1]), .c_valid_N_785(c_valid_N_785), 
       .n9153(n9153), .\H_count_max[8] (H_count_max[8]), .H_Count_Max_nxt_11__N_1022(H_Count_Max_nxt_11__N_1022), 
       .\V_count_max[3] (V_count_max[3]), .V_Count_Max_nxt_11__N_1040(V_Count_Max_nxt_11__N_1040)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(89[4] 100[24])
    LUT4 i1_4_lut_adj_66 (.A(n9115), .B(n9154), .C(n8939), .D(n9144), 
         .Z(clk_c_enable_168)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;
    defparam i1_4_lut_adj_66.init = 16'h4440;
    LUT4 i4362_2_lut_3_lut (.A(n1801), .B(counter_23__N_178[10]), .C(n113), 
         .Z(n139)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4362_2_lut_3_lut.init = 16'hd0d0;
    CD cd (.GND_net(GND_net), .clk_VGA(clk_VGA), .clk_c(clk_c), .rst_n_N_52(rst_n_N_52), 
       .counter_31__N_85(counter_31__N_85), .clk_UART(clk_UART), .rst_n_N_144(rst_n_N_144), 
       .clkout_N_203(clkout_N_203), .counter({counter_adj_1197}), .n127({n128, 
       n129, n130, n131, n132, n133, n134, n135, n136, n137, 
       n138, n139, n140, n141, n142, n143, n144, n145, n146, 
       n147, n148, n149, n150, n151}), .\counter_23__N_178[10] (counter_23__N_178[10]), 
       .\counter_23__N_178[8] (counter_23__N_178[8]), .\counter_23__N_178[9] (counter_23__N_178[9]), 
       .\counter_23__N_178[6] (counter_23__N_178[6]), .\counter_23__N_178[7] (counter_23__N_178[7]), 
       .\counter_23__N_178[4] (counter_23__N_178[4]), .\counter_23__N_178[5] (counter_23__N_178[5]), 
       .\counter_23__N_178[2] (counter_23__N_178[2]), .\counter_23__N_178[3] (counter_23__N_178[3]), 
       .\counter_23__N_178[1] (counter_23__N_178[1]), .n101({n102, n103, 
       n104, n105, n106, n107_adj_1145, n108, n109_adj_1144, n110, 
       n111, n112, n113, n114, n115, n116, n117, n118, n119, 
       n120, n121, n122, n123, n124, n125}), .clk_LM(clk_LM), 
       .counter_31__N_85_adj_1(counter_31__N_85_adj_1140), .clk_DB(clk_DB), 
       .counter_31__N_85_adj_2(counter_31__N_85_adj_1141), .\V_FrontPorch_nxt_9__N_804[3] (V_FrontPorch_nxt_9__N_804[3]), 
       .c_VGA_ready(c_VGA_ready), .n5259(n5259), .c_UART_ready(c_UART_ready), 
       .c_valid_N_785(c_valid_N_785), .n9112(n9112), .\c_data[1] (c_data[1]), 
       .\c_data[2] (c_data[2]), .\c_data[0] (c_data[0]), .c_addr({c_addr}), 
       .c_valid(c_valid), .n9125(n9125), .H_BackPorch_nxt_7__N_782(H_BackPorch_nxt_7__N_782), 
       .Current_Qudran_Config_nxt_1__N_886(Current_Qudran_Config_nxt_1__N_886), 
       .n8448(n8448), .n3408(n3408), .n9189(n9189), .H_Left_Margin_nxt_8__N_959(H_Left_Margin_nxt_8__N_959), 
       .\baudrate_next_23__N_262[6] (baudrate_next_23__N_262[6]), .\c_data[1]_derived_1 (c_data_1_derived_1), 
       .n9163(n9163), .clk_VGA_enable_1(clk_VGA_enable_1), .n9147(n9147), 
       .c_ready_next_N_346(c_ready_next_N_346), .n9148(n9148), .n9124(n9124)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(47[4] 49[79])
    PFUMX i7672 (.BLUT(n9195), .ALUT(n9196), .C0(stop_iteration_step_reg[0]), 
          .Z(n9197));
    PFUMX i111 (.BLUT(n107), .ALUT(n8012), .C0(data), .Z(n109));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module DB
//

module DB (button_ff, clk_DB, btnVS_c, clk_c, clk_c_enable_198, n4204, 
           button_signal_VS, button_ff_adj_4, btnHS_c, n4194, button_signal_HS, 
           button_ff_adj_5, btnVGA_c, n4202, button_signal_DEBUG_VGA, 
           button_ff_adj_6, btnUART_c, n4203, button_signal_DEBUG_UART) /* synthesis syn_module_defined=1 */ ;
    output button_ff;
    input clk_DB;
    input btnVS_c;
    input clk_c;
    input clk_c_enable_198;
    input n4204;
    output button_signal_VS;
    output button_ff_adj_4;
    input btnHS_c;
    input n4194;
    output button_signal_HS;
    output button_ff_adj_5;
    input btnVGA_c;
    input n4202;
    output button_signal_DEBUG_VGA;
    output button_ff_adj_6;
    input btnUART_c;
    input n4203;
    output button_signal_DEBUG_UART;
    
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(38[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    
    DB_debouncer DB_VS (.button_ff(button_ff), .clk_DB(clk_DB), .btnVS_c(btnVS_c), 
            .clk_c(clk_c), .clk_c_enable_198(clk_c_enable_198), .n4204(n4204), 
            .button_signal_VS(button_signal_VS)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db.v(20[27:87])
    DB_debouncer_U1 DB_HS (.button_ff(button_ff_adj_4), .clk_DB(clk_DB), 
            .btnHS_c(btnHS_c), .clk_c(clk_c), .clk_c_enable_198(clk_c_enable_198), 
            .n4194(n4194), .button_signal_HS(button_signal_HS)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db.v(19[27:87])
    DB_debouncer_U2 DB_DF_VGA (.button_ff(button_ff_adj_5), .clk_DB(clk_DB), 
            .btnVGA_c(btnVGA_c), .clk_c(clk_c), .clk_c_enable_198(clk_c_enable_198), 
            .n4202(n4202), .button_signal_DEBUG_VGA(button_signal_DEBUG_VGA)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db.v(22[27:99])
    DB_debouncer_U3 DB_DF_UART (.button_ff(button_ff_adj_6), .clk_DB(clk_DB), 
            .btnUART_c(btnUART_c), .clk_c(clk_c), .clk_c_enable_198(clk_c_enable_198), 
            .n4203(n4203), .button_signal_DEBUG_UART(button_signal_DEBUG_UART)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db.v(21[27:102])
    
endmodule
//
// Verilog Description of module DB_debouncer
//

module DB_debouncer (button_ff, clk_DB, btnVS_c, clk_c, clk_c_enable_198, 
            n4204, button_signal_VS) /* synthesis syn_module_defined=1 */ ;
    output button_ff;
    input clk_DB;
    input btnVS_c;
    input clk_c;
    input clk_c_enable_198;
    input n4204;
    output button_signal_VS;
    
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(38[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [2:0]ctr_ff;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(10[34:40])
    
    wire n8504, n8527, clk_DB_enable_1;
    
    FD1S3AX button_ff_19 (.D(btnVS_c), .CK(clk_DB), .Q(button_ff)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=27, LSE_RCOL=87, LSE_LLINE=20, LSE_RLINE=20 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam button_ff_19.GSR = "ENABLED";
    FD1P3IX ctr_ff_1253_1254__i2 (.D(n8504), .SP(clk_c_enable_198), .CD(n4204), 
            .CK(clk_c), .Q(ctr_ff[1]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_1253_1254__i2.GSR = "ENABLED";
    FD1P3IX ctr_ff_1253_1254__i1 (.D(n8527), .SP(clk_c_enable_198), .CD(n4204), 
            .CK(clk_c), .Q(ctr_ff[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_1253_1254__i1.GSR = "ENABLED";
    LUT4 i4296_2_lut (.A(ctr_ff[0]), .B(ctr_ff[1]), .Z(clk_DB_enable_1)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4296_2_lut.init = 16'h8888;
    FD1P3AX sync_ff_18 (.D(button_ff), .SP(clk_DB_enable_1), .CK(clk_DB), 
            .Q(button_signal_VS)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=27, LSE_RCOL=87, LSE_LLINE=20, LSE_RLINE=20 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam sync_ff_18.GSR = "ENABLED";
    LUT4 i7287_2_lut (.A(ctr_ff[1]), .B(ctr_ff[0]), .Z(n8504)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7287_2_lut.init = 16'heeee;
    LUT4 i7561_2_lut (.A(ctr_ff[0]), .B(ctr_ff[1]), .Z(n8527)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i7561_2_lut.init = 16'hdddd;
    
endmodule
//
// Verilog Description of module DB_debouncer_U1
//

module DB_debouncer_U1 (button_ff, clk_DB, btnHS_c, clk_c, clk_c_enable_198, 
            n4194, button_signal_HS) /* synthesis syn_module_defined=1 */ ;
    output button_ff;
    input clk_DB;
    input btnHS_c;
    input clk_c;
    input clk_c_enable_198;
    input n4194;
    output button_signal_HS;
    
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(38[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [2:0]ctr_ff;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(10[34:40])
    
    wire n8494, n8485, clk_DB_enable_3;
    
    FD1S3AX button_ff_19 (.D(btnHS_c), .CK(clk_DB), .Q(button_ff)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=27, LSE_RCOL=87, LSE_LLINE=19, LSE_RLINE=19 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam button_ff_19.GSR = "ENABLED";
    LUT4 i7277_2_lut (.A(ctr_ff[1]), .B(ctr_ff[0]), .Z(n8494)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7277_2_lut.init = 16'heeee;
    LUT4 i7580_2_lut (.A(ctr_ff[0]), .B(ctr_ff[1]), .Z(n8485)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i7580_2_lut.init = 16'hdddd;
    LUT4 i4427_2_lut (.A(ctr_ff[0]), .B(ctr_ff[1]), .Z(clk_DB_enable_3)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4427_2_lut.init = 16'h8888;
    FD1P3IX ctr_ff_1276_1277__i2 (.D(n8494), .SP(clk_c_enable_198), .CD(n4194), 
            .CK(clk_c), .Q(ctr_ff[1]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_1276_1277__i2.GSR = "ENABLED";
    FD1P3IX ctr_ff_1276_1277__i1 (.D(n8485), .SP(clk_c_enable_198), .CD(n4194), 
            .CK(clk_c), .Q(ctr_ff[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_1276_1277__i1.GSR = "ENABLED";
    FD1P3AX sync_ff_18 (.D(button_ff), .SP(clk_DB_enable_3), .CK(clk_DB), 
            .Q(button_signal_HS)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=27, LSE_RCOL=87, LSE_LLINE=19, LSE_RLINE=19 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam sync_ff_18.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module DB_debouncer_U2
//

module DB_debouncer_U2 (button_ff, clk_DB, btnVGA_c, clk_c, clk_c_enable_198, 
            n4202, button_signal_DEBUG_VGA) /* synthesis syn_module_defined=1 */ ;
    output button_ff;
    input clk_DB;
    input btnVGA_c;
    input clk_c;
    input clk_c_enable_198;
    input n4202;
    output button_signal_DEBUG_VGA;
    
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(38[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [2:0]ctr_ff;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(10[34:40])
    
    wire n8528, clk_DB_enable_2, n8506;
    
    FD1S3AX button_ff_19 (.D(btnVGA_c), .CK(clk_DB), .Q(button_ff)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=27, LSE_RCOL=99, LSE_LLINE=22, LSE_RLINE=22 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam button_ff_19.GSR = "ENABLED";
    FD1P3IX ctr_ff_1257_1258__i1 (.D(n8528), .SP(clk_c_enable_198), .CD(n4202), 
            .CK(clk_c), .Q(ctr_ff[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_1257_1258__i1.GSR = "ENABLED";
    LUT4 i4429_2_lut (.A(ctr_ff[0]), .B(ctr_ff[1]), .Z(clk_DB_enable_2)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4429_2_lut.init = 16'h8888;
    FD1P3IX ctr_ff_1257_1258__i2 (.D(n8506), .SP(clk_c_enable_198), .CD(n4202), 
            .CK(clk_c), .Q(ctr_ff[1]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_1257_1258__i2.GSR = "ENABLED";
    FD1P3AX sync_ff_18 (.D(button_ff), .SP(clk_DB_enable_2), .CK(clk_DB), 
            .Q(button_signal_DEBUG_VGA)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=27, LSE_RCOL=99, LSE_LLINE=22, LSE_RLINE=22 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam sync_ff_18.GSR = "ENABLED";
    LUT4 i7575_2_lut (.A(ctr_ff[0]), .B(ctr_ff[1]), .Z(n8528)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i7575_2_lut.init = 16'hdddd;
    LUT4 i7289_2_lut (.A(ctr_ff[1]), .B(ctr_ff[0]), .Z(n8506)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7289_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module DB_debouncer_U3
//

module DB_debouncer_U3 (button_ff, clk_DB, btnUART_c, clk_c, clk_c_enable_198, 
            n4203, button_signal_DEBUG_UART) /* synthesis syn_module_defined=1 */ ;
    output button_ff;
    input clk_DB;
    input btnUART_c;
    input clk_c;
    input clk_c_enable_198;
    input n4203;
    output button_signal_DEBUG_UART;
    
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(38[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [2:0]ctr_ff;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(10[34:40])
    
    wire n8500, n8522, clk_DB_enable_4;
    
    FD1S3AX button_ff_19 (.D(btnUART_c), .CK(clk_DB), .Q(button_ff)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=27, LSE_RCOL=102, LSE_LLINE=21, LSE_RLINE=21 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam button_ff_19.GSR = "ENABLED";
    FD1P3IX ctr_ff_1255_1256__i2 (.D(n8500), .SP(clk_c_enable_198), .CD(n4203), 
            .CK(clk_c), .Q(ctr_ff[1]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_1255_1256__i2.GSR = "ENABLED";
    FD1P3IX ctr_ff_1255_1256__i1 (.D(n8522), .SP(clk_c_enable_198), .CD(n4203), 
            .CK(clk_c), .Q(ctr_ff[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_1255_1256__i1.GSR = "ENABLED";
    LUT4 i4409_2_lut (.A(ctr_ff[0]), .B(ctr_ff[1]), .Z(clk_DB_enable_4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4409_2_lut.init = 16'h8888;
    FD1P3AX sync_ff_18 (.D(button_ff), .SP(clk_DB_enable_4), .CK(clk_DB), 
            .Q(button_signal_DEBUG_UART)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=27, LSE_RCOL=102, LSE_LLINE=21, LSE_RLINE=21 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam sync_ff_18.GSR = "ENABLED";
    LUT4 i7283_2_lut (.A(ctr_ff[1]), .B(ctr_ff[0]), .Z(n8500)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7283_2_lut.init = 16'heeee;
    LUT4 i7566_2_lut (.A(ctr_ff[0]), .B(ctr_ff[1]), .Z(n8522)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i7566_2_lut.init = 16'hdddd;
    
endmodule
//
// Verilog Description of module \Sync_Reg(SIZE=8)_U7 
//

module \Sync_Reg(SIZE=8)_U7  (clk_UART, clk_c, UART_out, UART_out_CM_data_empty, 
            clk_LM, n9390, counter_31__N_85, \counter_23__N_178[10] , 
            n1801, UART_out_CM_data, UART_valid_out, button_signal_DEBUG_UART) /* synthesis syn_module_defined=1 */ ;
    input clk_UART;
    input clk_c;
    input [7:0]UART_out;
    output UART_out_CM_data_empty;
    input clk_LM;
    input n9390;
    input counter_31__N_85;
    input \counter_23__N_178[10] ;
    input n1801;
    output [7:0]UART_out_CM_data;
    input UART_valid_out;
    input button_signal_DEBUG_UART;
    
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(37[6:14])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(39[6:12])
    
    wire w_empty_reg, n9172;
    wire [7:0]w_data_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(18[15:25])
    
    wire clk_c_enable_166, clk_LM_enable_3, clk_c_enable_221;
    
    FD1S3AY w_empty_reg_21 (.D(n9172), .CK(clk_UART), .Q(w_empty_reg)) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=75, LSE_RLINE=78 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_empty_reg_21.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i0 (.D(UART_out[0]), .SP(clk_c_enable_166), .CK(clk_c), 
            .Q(w_data_reg[0])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=75, LSE_RLINE=78 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i0.GSR = "ENABLED";
    FD1P3AY r_empty_reg_23 (.D(n9390), .SP(clk_LM_enable_3), .CK(clk_LM), 
            .Q(UART_out_CM_data_empty)) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=75, LSE_RLINE=78 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_empty_reg_23.GSR = "ENABLED";
    LUT4 i7469_2_lut_3_lut_4_lut (.A(w_empty_reg), .B(n9172), .C(counter_31__N_85), 
         .D(clk_LM), .Z(clk_c_enable_221)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i7469_2_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i479_2_lut_3_lut_4_lut_4_lut (.A(n9172), .B(clk_UART), .C(\counter_23__N_178[10] ), 
         .D(n1801), .Z(clk_c_enable_166)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i479_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    FD1P3AX w_data_reg_i0_i7 (.D(UART_out[7]), .SP(clk_c_enable_166), .CK(clk_c), 
            .Q(w_data_reg[7])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=75, LSE_RLINE=78 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i6 (.D(UART_out[6]), .SP(clk_c_enable_166), .CK(clk_c), 
            .Q(w_data_reg[6])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=75, LSE_RLINE=78 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i5 (.D(UART_out[5]), .SP(clk_c_enable_166), .CK(clk_c), 
            .Q(w_data_reg[5])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=75, LSE_RLINE=78 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i4 (.D(UART_out[4]), .SP(clk_c_enable_166), .CK(clk_c), 
            .Q(w_data_reg[4])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=75, LSE_RLINE=78 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i3 (.D(UART_out[3]), .SP(clk_c_enable_166), .CK(clk_c), 
            .Q(w_data_reg[3])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=75, LSE_RLINE=78 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i2 (.D(UART_out[2]), .SP(clk_c_enable_166), .CK(clk_c), 
            .Q(w_data_reg[2])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=75, LSE_RLINE=78 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i1 (.D(UART_out[1]), .SP(clk_c_enable_166), .CK(clk_c), 
            .Q(w_data_reg[1])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=75, LSE_RLINE=78 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i7 (.D(w_data_reg[7]), .SP(clk_c_enable_221), 
            .CK(clk_c), .Q(UART_out_CM_data[7])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=75, LSE_RLINE=78 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i6 (.D(w_data_reg[6]), .SP(clk_c_enable_221), 
            .CK(clk_c), .Q(UART_out_CM_data[6])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=75, LSE_RLINE=78 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i5 (.D(w_data_reg[5]), .SP(clk_c_enable_221), 
            .CK(clk_c), .Q(UART_out_CM_data[5])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=75, LSE_RLINE=78 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i4 (.D(w_data_reg[4]), .SP(clk_c_enable_221), 
            .CK(clk_c), .Q(UART_out_CM_data[4])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=75, LSE_RLINE=78 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i3 (.D(w_data_reg[3]), .SP(clk_c_enable_221), 
            .CK(clk_c), .Q(UART_out_CM_data[3])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=75, LSE_RLINE=78 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i2 (.D(w_data_reg[2]), .SP(clk_c_enable_221), 
            .CK(clk_c), .Q(UART_out_CM_data[2])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=75, LSE_RLINE=78 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i1 (.D(w_data_reg[1]), .SP(clk_c_enable_221), 
            .CK(clk_c), .Q(UART_out_CM_data[1])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=75, LSE_RLINE=78 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i1.GSR = "ENABLED";
    LUT4 i7445_2_lut_rep_219 (.A(UART_valid_out), .B(button_signal_DEBUG_UART), 
         .Z(n9172)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i7445_2_lut_rep_219.init = 16'hdddd;
    LUT4 i7441_2_lut_rep_184_3_lut (.A(UART_valid_out), .B(button_signal_DEBUG_UART), 
         .C(w_empty_reg), .Z(clk_LM_enable_3)) /* synthesis lut_function=(!(A ((C)+!B)+!A (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i7441_2_lut_rep_184_3_lut.init = 16'h0d0d;
    FD1P3AX r_data_reg_i0_i0 (.D(w_data_reg[0]), .SP(clk_c_enable_221), 
            .CK(clk_c), .Q(UART_out_CM_data[0])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=75, LSE_RLINE=78 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \Sync_Reg(SIZE=2) 
//

module \Sync_Reg(SIZE=2)  (clk_c, clk_c_enable_187, UART_error, UART_error_data, 
            clk_c_enable_176, w_empty_reg, clk_UART, UART_error_empty, 
            clk_LM, clk_LM_enable_2, n9390, UART_valid_error, n9154, 
            n9168, n9169, clk_UART_enable_3) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input clk_c_enable_187;
    input [1:0]UART_error;
    output [1:0]UART_error_data;
    input clk_c_enable_176;
    output w_empty_reg;
    input clk_UART;
    output UART_error_empty;
    input clk_LM;
    input clk_LM_enable_2;
    input n9390;
    input UART_valid_error;
    input n9154;
    input n9168;
    input n9169;
    output clk_UART_enable_3;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(37[6:14])
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(39[6:12])
    wire [1:0]w_data_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(18[15:25])
    
    wire n9155;
    
    FD1P3AX w_data_reg_i0_i0 (.D(UART_error[0]), .SP(clk_c_enable_187), 
            .CK(clk_c), .Q(w_data_reg[0])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=56, LSE_LLINE=125, LSE_RLINE=128 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i0 (.D(w_data_reg[0]), .SP(clk_c_enable_176), 
            .CK(clk_c), .Q(UART_error_data[0])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=56, LSE_LLINE=125, LSE_RLINE=128 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i0.GSR = "ENABLED";
    FD1S3AY w_empty_reg_21 (.D(n9155), .CK(clk_UART), .Q(w_empty_reg)) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=56, LSE_LLINE=125, LSE_RLINE=128 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_empty_reg_21.GSR = "ENABLED";
    FD1P3AY r_empty_reg_23 (.D(n9390), .SP(clk_LM_enable_2), .CK(clk_LM), 
            .Q(UART_error_empty)) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=56, LSE_LLINE=125, LSE_RLINE=128 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_empty_reg_23.GSR = "ENABLED";
    LUT4 w_en_I_0_1_lut_rep_202 (.A(UART_valid_error), .Z(n9155)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam w_en_I_0_1_lut_rep_202.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(UART_valid_error), .B(n9154), .C(n9168), 
         .D(n9169), .Z(clk_UART_enable_3)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    FD1P3AX r_data_reg_i0_i1 (.D(w_data_reg[1]), .SP(clk_c_enable_176), 
            .CK(clk_c), .Q(UART_error_data[1])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=56, LSE_LLINE=125, LSE_RLINE=128 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i1 (.D(UART_error[1]), .SP(clk_c_enable_187), 
            .CK(clk_c), .Q(w_data_reg[1])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=56, LSE_LLINE=125, LSE_RLINE=128 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module UART
//

module UART (data, parity_check_reg, n2278, n9135, n476, clk_c, 
            clk_c_enable_87, rst_n_N_350, n8285, UART_valid_error, clk_UART, 
            UART_out, clk_c_enable_224, n4227, n472, n473, n5308, 
            n474, stop_iteration_step_reg, clk_UART_enable_1, \counter_23__N_178[10] , 
            n1801, n9150, clk_UART_enable_4, valid_data, valid_error_next_N_411, 
            n513, n2529, UART_valid_out, n4239, w_empty_reg, clk_LM_enable_2, 
            counter_31__N_85, clk_LM, clk_c_enable_176, n4237, UART_error, 
            clk_c_enable_222, n4218, n4235, n4233, n4737, n2, n4231, 
            n4229, clk_c_enable_19, \c_data[1] , \c_ready[1] , clk_VGA, 
            c_valid_N_785, c_ready_next_N_346, \c_addr[0] , n9163, c_valid, 
            \c_addr[1] , n5259, n8448, n8008, clk_VGA_enable_1, \c_data[0] , 
            in_c, flag_reg, n9144, clk_UART_enable_3, clk_c_enable_154, 
            n5755, n9118, clk_c_enable_168, n25, n9168, n9169, n8939) /* synthesis syn_module_defined=1 */ ;
    output data;
    output parity_check_reg;
    output [0:0]n2278;
    output n9135;
    output n476;
    input clk_c;
    input clk_c_enable_87;
    input rst_n_N_350;
    input n8285;
    output UART_valid_error;
    input clk_UART;
    output [7:0]UART_out;
    input clk_c_enable_224;
    input n4227;
    output n472;
    output n473;
    output n5308;
    output n474;
    output [1:0]stop_iteration_step_reg;
    input clk_UART_enable_1;
    input \counter_23__N_178[10] ;
    input n1801;
    output n9150;
    input clk_UART_enable_4;
    output valid_data;
    output valid_error_next_N_411;
    input n513;
    input n2529;
    output UART_valid_out;
    input n4239;
    input w_empty_reg;
    output clk_LM_enable_2;
    input counter_31__N_85;
    input clk_LM;
    output clk_c_enable_176;
    input n4237;
    output [1:0]UART_error;
    input clk_c_enable_222;
    input n4218;
    input n4235;
    input n4233;
    output n4737;
    output n2;
    input n4231;
    input n4229;
    input clk_c_enable_19;
    input \c_data[1] ;
    output \c_ready[1] ;
    input clk_VGA;
    input c_valid_N_785;
    input c_ready_next_N_346;
    input \c_addr[0] ;
    input n9163;
    input c_valid;
    input \c_addr[1] ;
    output n5259;
    output n8448;
    output n8008;
    input clk_VGA_enable_1;
    input \c_data[0] ;
    input in_c;
    output flag_reg;
    output n9144;
    input clk_UART_enable_3;
    input clk_c_enable_154;
    input n5755;
    input n9118;
    input clk_c_enable_168;
    output n25;
    output n9168;
    output n9169;
    output n8939;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(37[6:14])
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(39[6:12])
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(36[6:13])
    
    wire n9182, n9192, n2346, stopbit, clk_c_enable_215, clk_c_enable_212, 
        clk_c_enable_218, n4180, n130;
    
    UART_state UART_STATE (.data(data), .parity_check_reg(parity_check_reg), 
            .n9182(n9182), .n9192(n9192), .n2278({n2278}), .n9135(n9135), 
            .n476(n476), .clk_c(clk_c), .clk_c_enable_87(clk_c_enable_87), 
            .rst_n_N_350(rst_n_N_350), .n8285(n8285), .UART_valid_error(UART_valid_error), 
            .clk_UART(clk_UART), .n2346(n2346), .UART_out({UART_out}), 
            .clk_c_enable_224(clk_c_enable_224), .n4227(n4227), .n472(n472), 
            .n473(n473), .n5308(n5308), .n474(n474), .stopbit(stopbit), 
            .stop_iteration_step_reg({stop_iteration_step_reg}), .clk_UART_enable_1(clk_UART_enable_1), 
            .\counter_23__N_178[10] (\counter_23__N_178[10] ), .n1801(n1801), 
            .clk_c_enable_215(clk_c_enable_215), .n9150(n9150), .clk_UART_enable_4(clk_UART_enable_4), 
            .valid_data(valid_data), .clk_c_enable_212(clk_c_enable_212), 
            .clk_c_enable_218(clk_c_enable_218), .valid_error_next_N_411(valid_error_next_N_411), 
            .n513(n513), .n2529(n2529), .UART_valid_out(UART_valid_out), 
            .n4239(n4239), .w_empty_reg(w_empty_reg), .clk_LM_enable_2(clk_LM_enable_2), 
            .counter_31__N_85(counter_31__N_85), .clk_LM(clk_LM), .clk_c_enable_176(clk_c_enable_176), 
            .n4237(n4237), .UART_error({UART_error}), .clk_c_enable_222(clk_c_enable_222), 
            .n4218(n4218), .n4235(n4235), .n4180(n4180), .n4233(n4233), 
            .n130(n130), .n4737(n4737), .n2(n2), .n4231(n4231), .n4229(n4229)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart.v(48[12] 52[63])
    UART_config UART_CONFIG (.n2278({n2278}), .clk_c(clk_c), .clk_c_enable_19(clk_c_enable_19), 
            .\c_data[1] (\c_data[1] ), .\c_ready[1] (\c_ready[1] ), .clk_VGA(clk_VGA), 
            .c_valid_N_785(c_valid_N_785), .c_ready_next_N_346(c_ready_next_N_346), 
            .\c_addr[0] (\c_addr[0] ), .n9163(n9163), .c_valid(c_valid), 
            .\c_addr[1] (\c_addr[1] ), .n5259(n5259), .n8448(n8448), .n9192(n9192), 
            .n8008(n8008), .n9182(n9182), .n130(n130), .stopbit(stopbit), 
            .clk_VGA_enable_1(clk_VGA_enable_1), .\c_data[0] (\c_data[0] )) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart.v(43[13] 46[63])
    UART_sampler SAMPLER (.in_c(in_c), .flag_reg(flag_reg), .clk_UART(clk_UART), 
            .clk_UART_enable_1(clk_UART_enable_1), .valid_data(valid_data), 
            .n9144(n9144), .data(data), .clk_UART_enable_3(clk_UART_enable_3), 
            .n4180(n4180), .clk_c_enable_87(clk_c_enable_87), .n472(n472), 
            .n476(n476), .clk_c_enable_212(clk_c_enable_212), .n473(n473), 
            .clk_c_enable_218(clk_c_enable_218), .clk_c(clk_c), .clk_c_enable_154(clk_c_enable_154), 
            .n5755(n5755), .clk_c_enable_215(clk_c_enable_215), .n9118(n9118), 
            .n8008(n8008), .clk_c_enable_168(clk_c_enable_168), .valid_error_next_N_411(valid_error_next_N_411), 
            .n2346(n2346), .n25(n25), .n9168(n9168), .n9169(n9169), 
            .n8939(n8939)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart.v(54[14] 55[71])
    
endmodule
//
// Verilog Description of module UART_state
//

module UART_state (data, parity_check_reg, n9182, n9192, n2278, n9135, 
            n476, clk_c, clk_c_enable_87, rst_n_N_350, n8285, UART_valid_error, 
            clk_UART, n2346, UART_out, clk_c_enable_224, n4227, n472, 
            n473, n5308, n474, stopbit, stop_iteration_step_reg, clk_UART_enable_1, 
            \counter_23__N_178[10] , n1801, clk_c_enable_215, n9150, 
            clk_UART_enable_4, valid_data, clk_c_enable_212, clk_c_enable_218, 
            valid_error_next_N_411, n513, n2529, UART_valid_out, n4239, 
            w_empty_reg, clk_LM_enable_2, counter_31__N_85, clk_LM, 
            clk_c_enable_176, n4237, UART_error, clk_c_enable_222, n4218, 
            n4235, n4180, n4233, n130, n4737, n2, n4231, n4229) /* synthesis syn_module_defined=1 */ ;
    input data;
    output parity_check_reg;
    output n9182;
    output n9192;
    input [0:0]n2278;
    output n9135;
    output n476;
    input clk_c;
    input clk_c_enable_87;
    input rst_n_N_350;
    input n8285;
    output UART_valid_error;
    input clk_UART;
    input n2346;
    output [7:0]UART_out;
    input clk_c_enable_224;
    input n4227;
    output n472;
    output n473;
    output n5308;
    output n474;
    input stopbit;
    output [1:0]stop_iteration_step_reg;
    input clk_UART_enable_1;
    input \counter_23__N_178[10] ;
    input n1801;
    output clk_c_enable_215;
    output n9150;
    input clk_UART_enable_4;
    input valid_data;
    input clk_c_enable_212;
    input clk_c_enable_218;
    output valid_error_next_N_411;
    input n513;
    input n2529;
    output UART_valid_out;
    input n4239;
    input w_empty_reg;
    output clk_LM_enable_2;
    input counter_31__N_85;
    input clk_LM;
    output clk_c_enable_176;
    input n4237;
    output [1:0]UART_error;
    input clk_c_enable_222;
    input n4218;
    input n4235;
    input n4180;
    input n4233;
    input n130;
    output n4737;
    output n2;
    input n4231;
    input n4229;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(37[6:14])
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(39[6:12])
    
    wire clk_UART_enable_2, n9091, n9173, n8227, n456, n2531, n6;
    wire [2:0]data_iteration_step_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(61[33:56])
    
    wire parity_check_next_N_416, n9151, clk_UART_enable_5;
    wire [1:0]wait_iteration_step_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(64[33:56])
    
    wire n8253;
    wire [2:0]n22;
    wire [1:0]n17;
    
    wire n7917, n9090, n8437, n4184;
    
    LUT4 data_I_0_100_2_lut_rep_229 (.A(data), .B(parity_check_reg), .Z(n9182)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(128[12:36])
    defparam data_I_0_100_2_lut_rep_229.init = 16'h6666;
    LUT4 i1_2_lut_rep_182_3_lut_4_lut (.A(data), .B(parity_check_reg), .C(n9192), 
         .D(n2278[0]), .Z(n9135)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A (B+(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(128[12:36])
    defparam i1_2_lut_rep_182_3_lut_4_lut.init = 16'hf6ff;
    FD1P3BX state_reg_FSM__i1 (.D(n8285), .SP(clk_c_enable_87), .CK(clk_c), 
            .PD(rst_n_N_350), .Q(n476));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam state_reg_FSM__i1.GSR = "DISABLED";
    FD1P3DX valid_error_reg_82 (.D(n2346), .SP(clk_UART_enable_2), .CK(clk_UART), 
            .CD(rst_n_N_350), .Q(UART_valid_error)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam valid_error_reg_82.GSR = "DISABLED";
    FD1P3DX out_reg__i7 (.D(n4227), .SP(clk_c_enable_224), .CK(clk_c), 
            .CD(rst_n_N_350), .Q(UART_out[7])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i7.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(data), .B(n472), .C(n9091), .D(n9173), .Z(n8227)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i1_4_lut.init = 16'ha0a8;
    LUT4 i1527_4_lut (.A(n473), .B(n5308), .C(n456), .D(n474), .Z(n2531)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i1527_4_lut.init = 16'heca0;
    LUT4 i168_4_lut (.A(n9135), .B(stopbit), .C(n6), .D(data), .Z(n456)) /* synthesis lut_function=((B (C (D)))+!A) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(148[10] 150[13])
    defparam i168_4_lut.init = 16'hd555;
    LUT4 i2_3_lut (.A(stop_iteration_step_reg[1]), .B(n2278[0]), .C(stop_iteration_step_reg[0]), 
         .Z(n6)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(147[17] 151[11])
    defparam i2_3_lut.init = 16'h5151;
    LUT4 i2_3_lut_adj_54 (.A(data_iteration_step_reg[1]), .B(data_iteration_step_reg[2]), 
         .C(data_iteration_step_reg[0]), .Z(n5308)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_54.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(clk_UART_enable_1), .B(clk_UART), 
         .C(\counter_23__N_178[10] ), .D(n1801), .Z(clk_c_enable_215)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 equal_20_i3_2_lut_rep_239 (.A(stop_iteration_step_reg[0]), .B(stop_iteration_step_reg[1]), 
         .Z(n9192)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(126[10:38])
    defparam equal_20_i3_2_lut_rep_239.init = 16'heeee;
    LUT4 i1_2_lut_rep_197_3_lut (.A(stop_iteration_step_reg[0]), .B(stop_iteration_step_reg[1]), 
         .C(n2278[0]), .Z(n9150)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(126[10:38])
    defparam i1_2_lut_rep_197_3_lut.init = 16'hefef;
    FD1P3DX parity_check_reg_85 (.D(parity_check_next_N_416), .SP(clk_UART_enable_4), 
            .CK(clk_UART), .CD(rst_n_N_350), .Q(parity_check_reg)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam parity_check_reg_85.GSR = "DISABLED";
    LUT4 i7465_4_lut (.A(valid_data), .B(n476), .C(n9151), .D(n472), 
         .Z(clk_UART_enable_5)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;
    defparam i7465_4_lut.init = 16'hf5dd;
    FD1P3DX wait_iteration_step_reg_1265__i0 (.D(n8253), .SP(clk_c_enable_212), 
            .CK(clk_c), .CD(rst_n_N_350), .Q(wait_iteration_step_reg[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam wait_iteration_step_reg_1265__i0.GSR = "DISABLED";
    FD1P3DX data_iteration_step_reg_1260__i0 (.D(n22[0]), .SP(clk_c_enable_224), 
            .CK(clk_c), .CD(rst_n_N_350), .Q(data_iteration_step_reg[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(119[35:62])
    defparam data_iteration_step_reg_1260__i0.GSR = "DISABLED";
    FD1P3DX stop_iteration_step_reg_1259__i0 (.D(n17[0]), .SP(clk_c_enable_218), 
            .CK(clk_c), .CD(rst_n_N_350), .Q(stop_iteration_step_reg[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(125[35:62])
    defparam stop_iteration_step_reg_1259__i0.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut (.A(data), .B(parity_check_reg), .C(n474), .Z(parity_check_next_N_416)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(128[12:36])
    defparam i1_2_lut_3_lut.init = 16'h6060;
    FD1P3DX state_reg_FSM__i5 (.D(n513), .SP(clk_c_enable_87), .CK(clk_c), 
            .CD(rst_n_N_350), .Q(valid_error_next_N_411));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam state_reg_FSM__i5.GSR = "DISABLED";
    FD1P3DX state_reg_FSM__i4 (.D(n8227), .SP(clk_c_enable_87), .CK(clk_c), 
            .CD(rst_n_N_350), .Q(n472));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam state_reg_FSM__i4.GSR = "DISABLED";
    FD1P3DX state_reg_FSM__i3 (.D(n2531), .SP(clk_c_enable_87), .CK(clk_c), 
            .CD(rst_n_N_350), .Q(n473));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam state_reg_FSM__i3.GSR = "DISABLED";
    FD1P3DX state_reg_FSM__i2 (.D(n2529), .SP(clk_c_enable_87), .CK(clk_c), 
            .CD(rst_n_N_350), .Q(n474));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam state_reg_FSM__i2.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut (.A(n9173), .B(data), .C(n472), .D(valid_data), 
         .Z(n7917)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h8000;
    FD1P3DX valid_out_reg_83 (.D(n7917), .SP(clk_UART_enable_5), .CK(clk_UART), 
            .CD(rst_n_N_350), .Q(UART_valid_out)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam valid_out_reg_83.GSR = "DISABLED";
    LUT4 i2_3_lut_adj_55 (.A(valid_error_next_N_411), .B(valid_data), .C(n476), 
         .Z(clk_UART_enable_2)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i2_3_lut_adj_55.init = 16'hfbfb;
    FD1P3DX out_reg__i1 (.D(n4239), .SP(clk_c_enable_224), .CK(clk_c), 
            .CD(rst_n_N_350), .Q(UART_out[1])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i1.GSR = "DISABLED";
    LUT4 i7570_2_lut_rep_204 (.A(UART_valid_error), .B(w_empty_reg), .Z(clk_LM_enable_2)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam i7570_2_lut_rep_204.init = 16'h1111;
    LUT4 i7508_2_lut_3_lut_4_lut (.A(UART_valid_error), .B(w_empty_reg), 
         .C(counter_31__N_85), .D(clk_LM), .Z(clk_c_enable_176)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam i7508_2_lut_3_lut_4_lut.init = 16'h0010;
    FD1P3DX out_reg__i2 (.D(n4237), .SP(clk_c_enable_224), .CK(clk_c), 
            .CD(rst_n_N_350), .Q(UART_out[2])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i2.GSR = "DISABLED";
    FD1P3DX error_reg__i1 (.D(n4218), .SP(clk_c_enable_222), .CK(clk_c), 
            .CD(rst_n_N_350), .Q(UART_error[1])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam error_reg__i1.GSR = "DISABLED";
    LUT4 n150_bdd_2_lut_7703 (.A(n9090), .B(n473), .Z(n9091)) /* synthesis lut_function=(A (B)) */ ;
    defparam n150_bdd_2_lut_7703.init = 16'h8888;
    LUT4 n473_bdd_4_lut (.A(stop_iteration_step_reg[1]), .B(stopbit), .C(n2278[0]), 
         .D(stop_iteration_step_reg[0]), .Z(n9090)) /* synthesis lut_function=(A+!(B+!((D)+!C))) */ ;
    defparam n473_bdd_4_lut.init = 16'hbbab;
    FD1P3DX out_reg__i3 (.D(n4235), .SP(clk_c_enable_224), .CK(clk_c), 
            .CD(rst_n_N_350), .Q(UART_out[3])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i3.GSR = "DISABLED";
    FD1P3DX out_reg__i0 (.D(n4180), .SP(clk_c_enable_224), .CK(clk_c), 
            .CD(rst_n_N_350), .Q(UART_out[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i0.GSR = "DISABLED";
    FD1P3DX out_reg__i4 (.D(n4233), .SP(clk_c_enable_224), .CK(clk_c), 
            .CD(rst_n_N_350), .Q(UART_out[4])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i4.GSR = "DISABLED";
    FD1P3DX wait_iteration_step_reg_1265__i1 (.D(n8437), .SP(clk_c_enable_212), 
            .CK(clk_c), .CD(rst_n_N_350), .Q(wait_iteration_step_reg[1]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam wait_iteration_step_reg_1265__i1.GSR = "DISABLED";
    FD1P3DX data_iteration_step_reg_1260__i1 (.D(n22[1]), .SP(clk_c_enable_224), 
            .CK(clk_c), .CD(rst_n_N_350), .Q(data_iteration_step_reg[1]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(119[35:62])
    defparam data_iteration_step_reg_1260__i1.GSR = "DISABLED";
    FD1P3DX data_iteration_step_reg_1260__i2 (.D(n22[2]), .SP(clk_c_enable_224), 
            .CK(clk_c), .CD(rst_n_N_350), .Q(data_iteration_step_reg[2]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(119[35:62])
    defparam data_iteration_step_reg_1260__i2.GSR = "DISABLED";
    FD1P3DX stop_iteration_step_reg_1259__i1 (.D(n17[1]), .SP(clk_c_enable_218), 
            .CK(clk_c), .CD(rst_n_N_350), .Q(stop_iteration_step_reg[1]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(125[35:62])
    defparam stop_iteration_step_reg_1259__i1.GSR = "DISABLED";
    LUT4 i4405_3_lut (.A(data_iteration_step_reg[1]), .B(n474), .C(data_iteration_step_reg[0]), 
         .Z(n22[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(119[35:62])
    defparam i4405_3_lut.init = 16'h4848;
    LUT4 i4406_4_lut (.A(data_iteration_step_reg[2]), .B(n474), .C(data_iteration_step_reg[1]), 
         .D(data_iteration_step_reg[0]), .Z(n22[2])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(119[35:62])
    defparam i4406_4_lut.init = 16'h4888;
    LUT4 i4407_3_lut (.A(stop_iteration_step_reg[1]), .B(n473), .C(stop_iteration_step_reg[0]), 
         .Z(n17[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(125[35:62])
    defparam i4407_3_lut.init = 16'h4848;
    LUT4 equal_22_i3_2_lut_rep_220 (.A(wait_iteration_step_reg[0]), .B(wait_iteration_step_reg[1]), 
         .Z(n9173)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(164[13:41])
    defparam equal_22_i3_2_lut_rep_220.init = 16'heeee;
    LUT4 i4246_2_lut_rep_198_3_lut (.A(wait_iteration_step_reg[0]), .B(wait_iteration_step_reg[1]), 
         .C(data), .Z(n9151)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(164[13:41])
    defparam i4246_2_lut_rep_198_3_lut.init = 16'he0e0;
    LUT4 i1_4_lut_adj_56 (.A(n472), .B(n130), .C(n4737), .D(data), .Z(n4184)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i1_4_lut_adj_56.init = 16'h5044;
    LUT4 i1_3_lut_4_lut_2_lut (.A(wait_iteration_step_reg[0]), .B(n472), 
         .Z(n8253)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(164[13:41])
    defparam i1_3_lut_4_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_adj_57 (.A(wait_iteration_step_reg[0]), .B(wait_iteration_step_reg[1]), 
         .C(n472), .Z(n2)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(164[13:41])
    defparam i1_2_lut_3_lut_adj_57.init = 16'he0e0;
    LUT4 i1_4_lut_3_lut (.A(wait_iteration_step_reg[0]), .B(wait_iteration_step_reg[1]), 
         .C(n472), .Z(n8437)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(164[13:41])
    defparam i1_4_lut_3_lut.init = 16'h6060;
    LUT4 i1_2_lut_3_lut_4_lut (.A(data), .B(parity_check_reg), .C(n9192), 
         .D(n2278[0]), .Z(n4737)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(128[12:36])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0600;
    LUT4 i4248_2_lut (.A(data_iteration_step_reg[0]), .B(n474), .Z(n22[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(119[35:62])
    defparam i4248_2_lut.init = 16'h4444;
    LUT4 i4249_2_lut (.A(stop_iteration_step_reg[0]), .B(n473), .Z(n17[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(125[35:62])
    defparam i4249_2_lut.init = 16'h4444;
    FD1P3DX error_reg__i0 (.D(n4184), .SP(clk_c_enable_222), .CK(clk_c), 
            .CD(rst_n_N_350), .Q(UART_error[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam error_reg__i0.GSR = "DISABLED";
    FD1P3DX out_reg__i5 (.D(n4231), .SP(clk_c_enable_224), .CK(clk_c), 
            .CD(rst_n_N_350), .Q(UART_out[5])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i5.GSR = "DISABLED";
    FD1P3DX out_reg__i6 (.D(n4229), .SP(clk_c_enable_224), .CK(clk_c), 
            .CD(rst_n_N_350), .Q(UART_out[6])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i6.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module UART_config
//

module UART_config (n2278, clk_c, clk_c_enable_19, \c_data[1] , \c_ready[1] , 
            clk_VGA, c_valid_N_785, c_ready_next_N_346, \c_addr[0] , 
            n9163, c_valid, \c_addr[1] , n5259, n8448, n9192, n8008, 
            n9182, n130, stopbit, clk_VGA_enable_1, \c_data[0] ) /* synthesis syn_module_defined=1 */ ;
    output [0:0]n2278;
    input clk_c;
    input clk_c_enable_19;
    input \c_data[1] ;
    output \c_ready[1] ;
    input clk_VGA;
    input c_valid_N_785;
    input c_ready_next_N_346;
    input \c_addr[0] ;
    input n9163;
    input c_valid;
    input \c_addr[1] ;
    output n5259;
    output n8448;
    input n9192;
    input n8008;
    input n9182;
    output n130;
    output stopbit;
    input clk_VGA_enable_1;
    input \c_data[0] ;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(36[6:13])
    
    FD1P3AX parity_bit_reg_i0_i0 (.D(\c_data[1] ), .SP(clk_c_enable_19), 
            .CK(clk_c), .Q(n2278[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=13, LSE_RCOL=63, LSE_LLINE=43, LSE_RLINE=46 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_config.v(41[11] 45[5])
    defparam parity_bit_reg_i0_i0.GSR = "ENABLED";
    FD1S3JX c_ready_reg_22 (.D(c_ready_next_N_346), .CK(clk_VGA), .PD(c_valid_N_785), 
            .Q(\c_ready[1] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=13, LSE_RCOL=63, LSE_LLINE=43, LSE_RLINE=46 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_config.v(41[11] 45[5])
    defparam c_ready_reg_22.GSR = "ENABLED";
    LUT4 i7530_2_lut_3_lut_4_lut (.A(\c_addr[0] ), .B(n9163), .C(c_valid), 
         .D(\c_addr[1] ), .Z(n5259)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_config.v(58[15:39])
    defparam i7530_2_lut_3_lut_4_lut.init = 16'h0f1f;
    LUT4 i1_2_lut (.A(\c_addr[1] ), .B(\c_addr[0] ), .Z(n8448)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_config.v(41[11] 45[5])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n2278[0]), .B(n9192), .C(n8008), .D(n9182), 
         .Z(n130)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_config.v(41[11] 45[5])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0d0;
    FD1P3AX stop_bit_reg_20 (.D(\c_data[0] ), .SP(clk_VGA_enable_1), .CK(clk_VGA), 
            .Q(stopbit)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=13, LSE_RCOL=63, LSE_LLINE=43, LSE_RLINE=46 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_config.v(41[11] 45[5])
    defparam stop_bit_reg_20.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module UART_sampler
//

module UART_sampler (in_c, flag_reg, clk_UART, clk_UART_enable_1, valid_data, 
            n9144, data, clk_UART_enable_3, n4180, clk_c_enable_87, 
            n472, n476, clk_c_enable_212, n473, clk_c_enable_218, 
            clk_c, clk_c_enable_154, n5755, clk_c_enable_215, n9118, 
            n8008, clk_c_enable_168, valid_error_next_N_411, n2346, 
            n25, n9168, n9169, n8939) /* synthesis syn_module_defined=1 */ ;
    input in_c;
    output flag_reg;
    input clk_UART;
    input clk_UART_enable_1;
    output valid_data;
    output n9144;
    output data;
    input clk_UART_enable_3;
    output n4180;
    input clk_c_enable_87;
    input n472;
    input n476;
    output clk_c_enable_212;
    input n473;
    output clk_c_enable_218;
    input clk_c;
    input clk_c_enable_154;
    input n5755;
    input clk_c_enable_215;
    input n9118;
    output n8008;
    input clk_c_enable_168;
    input valid_error_next_N_411;
    output n2346;
    output n25;
    output n9168;
    output n9169;
    output n8939;
    
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(37[6:14])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [3:0]nr_1_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(25[30:38])
    wire [3:0]n21;
    
    wire flag_next;
    wire [3:0]nr_0_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(24[30:38])
    
    wire n9193, n8628, out_next_N_449;
    wire [3:0]val_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(26[30:37])
    
    wire n8938;
    wire [3:0]n21_adj_1135;
    wire [3:0]n21_adj_1136;
    
    wire n9190, n8629, n8573;
    
    LUT4 i6566_2_lut_3_lut_4_lut (.A(in_c), .B(nr_1_reg[0]), .C(nr_1_reg[2]), 
         .D(nr_1_reg[1]), .Z(n21[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam i6566_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3AX flag_reg_46 (.D(flag_next), .SP(clk_UART_enable_1), .CK(clk_UART), 
            .Q(flag_reg)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=71, LSE_LLINE=54, LSE_RLINE=55 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(40[11] 47[5])
    defparam flag_reg_46.GSR = "ENABLED";
    LUT4 i6559_2_lut_3_lut (.A(in_c), .B(nr_1_reg[0]), .C(nr_1_reg[1]), 
         .Z(n21[1])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam i6559_2_lut_3_lut.init = 16'h7878;
    FD1S3IX valid_reg_45 (.D(n9144), .CK(clk_UART), .CD(clk_UART_enable_1), 
            .Q(valid_data)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=71, LSE_LLINE=54, LSE_RLINE=55 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(40[11] 47[5])
    defparam valid_reg_45.GSR = "ENABLED";
    LUT4 i1_1_lut_rep_240 (.A(nr_0_reg[0]), .Z(n9193)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(68[11:31])
    defparam i1_1_lut_rep_240.init = 16'h5555;
    LUT4 i7407_1_lut_4_lut_4_lut (.A(nr_0_reg[0]), .B(nr_1_reg[0]), .C(nr_1_reg[1]), 
         .D(nr_0_reg[1]), .Z(n8628)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+!(D))+!B !((D)+!C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(68[11:31])
    defparam i7407_1_lut_4_lut_4_lut.init = 16'h40f4;
    FD1P3AX out_reg_44 (.D(out_next_N_449), .SP(clk_UART_enable_3), .CK(clk_UART), 
            .Q(data)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=71, LSE_LLINE=54, LSE_RLINE=55 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(40[11] 47[5])
    defparam out_reg_44.GSR = "ENABLED";
    LUT4 in_c_bdd_4_lut_7583 (.A(val_reg[0]), .B(val_reg[3]), .C(val_reg[2]), 
         .D(val_reg[1]), .Z(n8938)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A (B (C (D))+!B !(C)))) */ ;
    defparam in_c_bdd_4_lut_7583.init = 16'h3e7c;
    LUT4 i4144_2_lut_3_lut_4_lut_1_lut (.A(data), .Z(n4180)) /* synthesis lut_function=(A) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(40[11] 47[5])
    defparam i4144_2_lut_3_lut_4_lut_1_lut.init = 16'haaaa;
    LUT4 i1_3_lut_4_lut_4_lut (.A(data), .B(clk_c_enable_87), .C(n472), 
         .D(n476), .Z(clk_c_enable_212)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(40[11] 47[5])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hc4c0;
    LUT4 i1_3_lut_4_lut_4_lut_adj_53 (.A(data), .B(clk_c_enable_87), .C(n473), 
         .D(n476), .Z(clk_c_enable_218)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(40[11] 47[5])
    defparam i1_3_lut_4_lut_4_lut_adj_53.init = 16'hc4c0;
    FD1P3IX nr_1_reg_1262__i0 (.D(n21[0]), .SP(clk_c_enable_154), .CD(n5755), 
            .CK(clk_c), .Q(nr_1_reg[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam nr_1_reg_1262__i0.GSR = "ENABLED";
    FD1P3AX val_reg_1264__i0 (.D(n21_adj_1135[0]), .SP(clk_c_enable_215), 
            .CK(clk_c), .Q(val_reg[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(63[17:28])
    defparam val_reg_1264__i0.GSR = "ENABLED";
    LUT4 i6531_2_lut (.A(nr_0_reg[1]), .B(nr_0_reg[0]), .Z(n21_adj_1136[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam i6531_2_lut.init = 16'h6666;
    LUT4 i3_4_lut (.A(n9118), .B(valid_data), .C(n473), .D(n476), .Z(n8008)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i3_4_lut.init = 16'hf7ff;
    FD1P3IX nr_0_reg_1263__i0 (.D(n9193), .SP(clk_c_enable_168), .CD(n5755), 
            .CK(clk_c), .Q(nr_0_reg[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam nr_0_reg_1263__i0.GSR = "ENABLED";
    FD1P3IX nr_1_reg_1262__i3 (.D(n21[3]), .SP(clk_c_enable_154), .CD(n5755), 
            .CK(clk_c), .Q(nr_1_reg[3]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam nr_1_reg_1262__i3.GSR = "ENABLED";
    FD1P3IX nr_1_reg_1262__i2 (.D(n21[2]), .SP(clk_c_enable_154), .CD(n5755), 
            .CK(clk_c), .Q(nr_1_reg[2]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam nr_1_reg_1262__i2.GSR = "ENABLED";
    FD1P3IX nr_1_reg_1262__i1 (.D(n21[1]), .SP(clk_c_enable_154), .CD(n5755), 
            .CK(clk_c), .Q(nr_1_reg[1]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam nr_1_reg_1262__i1.GSR = "ENABLED";
    FD1P3IX nr_0_reg_1263__i3 (.D(n21_adj_1136[3]), .SP(clk_c_enable_168), 
            .CD(n5755), .CK(clk_c), .Q(nr_0_reg[3]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam nr_0_reg_1263__i3.GSR = "ENABLED";
    FD1P3IX nr_0_reg_1263__i2 (.D(n21_adj_1136[2]), .SP(clk_c_enable_168), 
            .CD(n5755), .CK(clk_c), .Q(nr_0_reg[2]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam nr_0_reg_1263__i2.GSR = "ENABLED";
    LUT4 i6573_3_lut_4_lut (.A(nr_1_reg[1]), .B(n9190), .C(nr_1_reg[2]), 
         .D(nr_1_reg[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam i6573_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut (.A(valid_data), .B(valid_error_next_N_411), .Z(n2346)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(40[11] 47[5])
    defparam i1_2_lut.init = 16'h8888;
    FD1P3IX nr_0_reg_1263__i1 (.D(n21_adj_1136[1]), .SP(clk_c_enable_168), 
            .CD(n5755), .CK(clk_c), .Q(nr_0_reg[1]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam nr_0_reg_1263__i1.GSR = "ENABLED";
    LUT4 i31_3_lut_4_lut (.A(val_reg[0]), .B(val_reg[1]), .C(val_reg[2]), 
         .D(val_reg[3]), .Z(n25)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i31_3_lut_4_lut.init = 16'h1ff0;
    LUT4 i1360_2_lut_rep_215 (.A(val_reg[0]), .B(val_reg[1]), .Z(n9168)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1360_2_lut_rep_215.init = 16'h8888;
    LUT4 i6509_2_lut_3_lut (.A(val_reg[0]), .B(val_reg[1]), .C(val_reg[2]), 
         .Z(n21_adj_1135[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i6509_2_lut_3_lut.init = 16'h7878;
    LUT4 i6516_3_lut_4_lut (.A(val_reg[0]), .B(val_reg[1]), .C(val_reg[2]), 
         .D(val_reg[3]), .Z(n21_adj_1135[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i6516_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_rep_216 (.A(val_reg[2]), .B(val_reg[3]), .Z(n9169)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_216.init = 16'h8888;
    LUT4 i1_2_lut_rep_191_3_lut_4_lut (.A(val_reg[2]), .B(val_reg[3]), .C(val_reg[1]), 
         .D(val_reg[0]), .Z(n9144)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_191_3_lut_4_lut.init = 16'h8000;
    FD1P3AX val_reg_1264__i1 (.D(n21_adj_1135[1]), .SP(clk_c_enable_215), 
            .CK(clk_c), .Q(val_reg[1]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(63[17:28])
    defparam val_reg_1264__i1.GSR = "ENABLED";
    FD1P3AX val_reg_1264__i2 (.D(n21_adj_1135[2]), .SP(clk_c_enable_215), 
            .CK(clk_c), .Q(val_reg[2]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(63[17:28])
    defparam val_reg_1264__i2.GSR = "ENABLED";
    FD1P3AX val_reg_1264__i3 (.D(n21_adj_1135[3]), .SP(clk_c_enable_215), 
            .CK(clk_c), .Q(val_reg[3]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(63[17:28])
    defparam val_reg_1264__i3.GSR = "ENABLED";
    LUT4 i6502_2_lut (.A(val_reg[1]), .B(val_reg[0]), .Z(n21_adj_1135[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(63[17:28])
    defparam i6502_2_lut.init = 16'h6666;
    LUT4 i7408_1_lut_3_lut_3_lut (.A(nr_1_reg[3]), .B(nr_0_reg[3]), .C(nr_0_reg[2]), 
         .Z(n8629)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(68[11:31])
    defparam i7408_1_lut_3_lut_3_lut.init = 16'h2b2b;
    LUT4 i7485_3_lut_4_lut (.A(nr_1_reg[3]), .B(nr_0_reg[3]), .C(nr_0_reg[2]), 
         .D(nr_1_reg[2]), .Z(n8573)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(68[11:31])
    defparam i7485_3_lut_4_lut.init = 16'h6ff6;
    LUT4 i6545_3_lut_4_lut (.A(nr_0_reg[1]), .B(nr_0_reg[0]), .C(nr_0_reg[2]), 
         .D(nr_0_reg[3]), .Z(n21_adj_1136[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam i6545_3_lut_4_lut.init = 16'h7f80;
    LUT4 i6538_2_lut_3_lut (.A(nr_0_reg[1]), .B(nr_0_reg[0]), .C(nr_0_reg[2]), 
         .Z(n21_adj_1136[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam i6538_2_lut_3_lut.init = 16'h7878;
    PFUMX nr_1_reg_3__I_0_i8 (.BLUT(n8628), .ALUT(n8629), .C0(n8573), 
          .Z(out_next_N_449)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=71, LSE_LLINE=54, LSE_RLINE=55 */ ;
    LUT4 i6551_2_lut (.A(in_c), .B(nr_1_reg[0]), .Z(n21[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam i6551_2_lut.init = 16'h6666;
    LUT4 i6500_1_lut (.A(val_reg[0]), .Z(n21_adj_1135[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(63[17:28])
    defparam i6500_1_lut.init = 16'h5555;
    LUT4 i7573_2_lut (.A(flag_reg), .B(in_c), .Z(flag_next)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i7573_2_lut.init = 16'h1111;
    LUT4 n8938_bdd_2_lut (.A(n8938), .B(in_c), .Z(n8939)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n8938_bdd_2_lut.init = 16'h2222;
    LUT4 i6553_2_lut_rep_237 (.A(in_c), .B(nr_1_reg[0]), .Z(n9190)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam i6553_2_lut_rep_237.init = 16'h8888;
    
endmodule
//
// Verilog Description of module VGA
//

module VGA (n9153, H_left_margin, clk_c, V_left_margin, H_sync_pulse, 
            V_sync_pulse, \c_data[1] , H_Left_Margin_nxt_8__N_959, Load_config, 
            \c_data[1]_derived_1 , V_Count_Max_nxt_11__N_1040, H_Count_Max_nxt_11__N_1022, 
            \c_data[0] , H_BackPorch_nxt_7__N_782, n3408, n9125, c_ready_nxt_N_906, 
            c_valid, \c_addr[3] , \c_addr[2] , \H_count_max[8] , \V_count_max[3] , 
            button_signal_DEBUG_VGA, clk_c_enable_93, \c_data[2] , \baudrate_next_23__N_262[6] , 
            \c_ready[1] , c_ready_Assign, c_addr_3__N_470, c_UART_ready, 
            c_VGA_ready, n9183, n9189, Data_VGA, BLUE_c_2, RED_c_1, 
            BLUE_c_1, BLUE_c_0, RED_c_2, RED_c_3, n1947, Active_nxt_N_1068, 
            n8410, Count_h, GND_net, Count_v, BLUE_c_3, GREEN_c_0, 
            GREEN_c_1, GREEN_c_2, GREEN_c_3, RED_c_0, VSYNC_c, HSYNC_c, 
            rst_n_N_1047, n4196, n1367, n8407, n4198, n1364) /* synthesis syn_module_defined=1 */ ;
    output n9153;
    output [8:0]H_left_margin;
    input clk_c;
    output [5:0]V_left_margin;
    output [7:0]H_sync_pulse;
    output [7:0]V_sync_pulse;
    input \c_data[1] ;
    output H_Left_Margin_nxt_8__N_959;
    output Load_config;
    output \c_data[1]_derived_1 ;
    input V_Count_Max_nxt_11__N_1040;
    input H_Count_Max_nxt_11__N_1022;
    input \c_data[0] ;
    input H_BackPorch_nxt_7__N_782;
    input n3408;
    input n9125;
    output c_ready_nxt_N_906;
    input c_valid;
    input \c_addr[3] ;
    input \c_addr[2] ;
    output \H_count_max[8] ;
    output \V_count_max[3] ;
    input button_signal_DEBUG_VGA;
    output clk_c_enable_93;
    input \c_data[2] ;
    output \baudrate_next_23__N_262[6] ;
    input \c_ready[1] ;
    input c_ready_Assign;
    output c_addr_3__N_470;
    input c_UART_ready;
    input c_VGA_ready;
    output n9183;
    output n9189;
    input [11:0]Data_VGA;
    output BLUE_c_2;
    output RED_c_1;
    output BLUE_c_1;
    output BLUE_c_0;
    output RED_c_2;
    output RED_c_3;
    input n1947;
    input Active_nxt_N_1068;
    input n8410;
    output [11:0]Count_h;
    input GND_net;
    output [11:0]Count_v;
    output BLUE_c_3;
    output GREEN_c_0;
    output GREEN_c_1;
    output GREEN_c_2;
    output GREEN_c_3;
    output RED_c_0;
    output VSYNC_c;
    output HSYNC_c;
    input rst_n_N_1047;
    output n4196;
    input n1367;
    input n8407;
    output n4198;
    input n1364;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire HSYNC_c /* synthesis SET_AS_NETWORK=HSYNC_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(17[8:13])
    wire [11:0]V_count_max;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga.v(38[27:38])
    wire [10:0]H_right_margin;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga.v(32[30:44])
    wire [9:0]V_right_margin;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga.v(34[30:44])
    wire [11:0]H_count_max;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga.v(36[27:38])
    
    VGA_Config config1 (.n9153(n9153), .V_count_max({V_count_max[11:4], 
            \V_count_max[3] , V_count_max[2:0]}), .H_left_margin({H_left_margin}), 
            .clk_c(clk_c), .V_left_margin({V_left_margin}), .H_right_margin({H_right_margin}), 
            .V_right_margin({V_right_margin}), .H_sync_pulse({H_sync_pulse}), 
            .V_sync_pulse({V_sync_pulse}), .H_count_max({H_count_max[11:9], 
            \H_count_max[8] , H_count_max[7:0]}), .\c_data[1] (\c_data[1] ), 
            .H_Left_Margin_nxt_8__N_959(H_Left_Margin_nxt_8__N_959), .Load_config(Load_config), 
            .\c_data[1]_derived_1 (\c_data[1]_derived_1 ), .V_Count_Max_nxt_11__N_1040(V_Count_Max_nxt_11__N_1040), 
            .H_Count_Max_nxt_11__N_1022(H_Count_Max_nxt_11__N_1022), .\c_data[0] (\c_data[0] ), 
            .H_BackPorch_nxt_7__N_782(H_BackPorch_nxt_7__N_782), .n3408(n3408), 
            .n9125(n9125), .c_ready_nxt_N_906(c_ready_nxt_N_906), .c_valid(c_valid), 
            .\c_addr[3] (\c_addr[3] ), .\c_addr[2] (\c_addr[2] ), .button_signal_DEBUG_VGA(button_signal_DEBUG_VGA), 
            .clk_c_enable_93(clk_c_enable_93), .\c_data[2] (\c_data[2] ), 
            .\baudrate_next_23__N_262[6] (\baudrate_next_23__N_262[6] ), .\c_ready[1] (\c_ready[1] ), 
            .c_ready_Assign(c_ready_Assign), .c_addr_3__N_470(c_addr_3__N_470), 
            .c_UART_ready(c_UART_ready), .c_VGA_ready(c_VGA_ready), .n9183(n9183), 
            .n9189(n9189)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga.v(44[13] 57[34])
    VGA_Assign_color assgncolor (.clk_c(clk_c), .Data_VGA({Data_VGA}), .BLUE_c_2(BLUE_c_2), 
            .RED_c_1(RED_c_1), .BLUE_c_1(BLUE_c_1), .BLUE_c_0(BLUE_c_0), 
            .RED_c_2(RED_c_2), .RED_c_3(RED_c_3), .n1947(n1947), .Active_nxt_N_1068(Active_nxt_N_1068), 
            .n8410(n8410), .Count_h({Count_h}), .GND_net(GND_net), .H_right_margin({H_right_margin}), 
            .Count_v({Count_v}), .V_right_margin({V_right_margin}), .BLUE_c_3(BLUE_c_3), 
            .GREEN_c_0(GREEN_c_0), .GREEN_c_1(GREEN_c_1), .GREEN_c_2(GREEN_c_2), 
            .GREEN_c_3(GREEN_c_3), .RED_c_0(RED_c_0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga.v(74[19] 85[20])
    VGA_Counter CounterV (.VSYNC_c(VSYNC_c), .HSYNC_c(HSYNC_c), .rst_n_N_1047(rst_n_N_1047), 
            .Count_v({Count_v}), .n4196(n4196), .GND_net(GND_net), .V_count_max({V_count_max[11:4], 
            \V_count_max[3] , V_count_max[2:0]}), .n1367(n1367), .n8407(n8407)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga.v(67[14] 72[25])
    VGA_Counter_U0 CounterH (.HSYNC_c(HSYNC_c), .clk_c(clk_c), .rst_n_N_1047(rst_n_N_1047), 
            .n4198(n4198), .Count_h({Count_h}), .GND_net(GND_net), .H_count_max({H_count_max[11:9], 
            \H_count_max[8] , H_count_max[7:0]}), .n8410(n8410), .n1364(n1364)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga.v(60[14] 65[25])
    
endmodule
//
// Verilog Description of module VGA_Config
//

module VGA_Config (n9153, V_count_max, H_left_margin, clk_c, V_left_margin, 
            H_right_margin, V_right_margin, H_sync_pulse, V_sync_pulse, 
            H_count_max, \c_data[1] , H_Left_Margin_nxt_8__N_959, Load_config, 
            \c_data[1]_derived_1 , V_Count_Max_nxt_11__N_1040, H_Count_Max_nxt_11__N_1022, 
            \c_data[0] , H_BackPorch_nxt_7__N_782, n3408, n9125, c_ready_nxt_N_906, 
            c_valid, \c_addr[3] , \c_addr[2] , button_signal_DEBUG_VGA, 
            clk_c_enable_93, \c_data[2] , \baudrate_next_23__N_262[6] , 
            \c_ready[1] , c_ready_Assign, c_addr_3__N_470, c_UART_ready, 
            c_VGA_ready, n9183, n9189) /* synthesis syn_module_defined=1 */ ;
    output n9153;
    output [11:0]V_count_max;
    output [8:0]H_left_margin;
    input clk_c;
    output [5:0]V_left_margin;
    output [10:0]H_right_margin;
    output [9:0]V_right_margin;
    output [7:0]H_sync_pulse;
    output [7:0]V_sync_pulse;
    output [11:0]H_count_max;
    input \c_data[1] ;
    output H_Left_Margin_nxt_8__N_959;
    output Load_config;
    output \c_data[1]_derived_1 ;
    input V_Count_Max_nxt_11__N_1040;
    input H_Count_Max_nxt_11__N_1022;
    input \c_data[0] ;
    input H_BackPorch_nxt_7__N_782;
    input n3408;
    input n9125;
    output c_ready_nxt_N_906;
    input c_valid;
    input \c_addr[3] ;
    input \c_addr[2] ;
    input button_signal_DEBUG_VGA;
    output clk_c_enable_93;
    input \c_data[2] ;
    output \baudrate_next_23__N_262[6] ;
    input \c_ready[1] ;
    input c_ready_Assign;
    output c_addr_3__N_470;
    input c_UART_ready;
    input c_VGA_ready;
    output n9183;
    output n9189;
    
    wire H_Left_Margin_nxt_8__N_969 /* synthesis is_clock=1, SET_AS_NETWORK=\vga/config1/H_Left_Margin_nxt_8__N_969 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(43[49:66])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [11:0]V_Count_Max_nxt;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(50[49:64])
    wire [8:0]H_Left_Margin_nxt;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(43[49:66])
    wire [5:0]V_Left_Margin_nxt;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(44[49:66])
    wire [10:0]H_Right_Margin_nxt;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(45[51:69])
    wire [9:0]V_Right_Margin_nxt;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(46[51:69])
    wire [7:0]H_Sync_Pulse_nxt;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(47[49:65])
    wire [7:0]V_Sync_Pulse_nxt;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(48[49:65])
    wire [11:0]H_Count_Max_nxt;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(49[48:63])
    
    wire V_Right_Margin_nxt_9__N_1002, V_Left_Margin_nxt_5__N_980, Load_nxt, 
        Load_nxt_N_1044, V_Count_Max_nxt_11__N_1042, V_Count_Max_nxt_11__N_1041, 
        V_Count_Max_nxt_11__N_1039, V_Count_Max_nxt_11__N_1038, V_Count_Max_nxt_11__N_1037, 
        V_Count_Max_nxt_11__N_1035, V_Count_Max_nxt_11__N_1034, H_Count_Max_nxt_11__N_1026, 
        H_Count_Max_nxt_11__N_1024, H_Count_Max_nxt_11__N_1021, H_Count_Max_nxt_11__N_1020, 
        H_Count_Max_nxt_11__N_1019, H_Left_Margin_nxt_8__N_965, H_Left_Margin_nxt_8__N_964, 
        H_Left_Margin_nxt_8__N_963, H_Left_Margin_nxt_8__N_962, H_Left_Margin_nxt_8__N_960, 
        H_Left_Margin_nxt_8__N_958, H_Left_Margin_nxt_8__N_954, V_Right_Margin_nxt_9__N_1001, 
        V_Right_Margin_nxt_9__N_998, V_Right_Margin_nxt_9__N_997, V_Right_Margin_nxt_9__N_996, 
        V_Right_Margin_nxt_9__N_994, V_Right_Margin_nxt_9__N_993, V_Sync_Pulse_nxt_7__N_1017, 
        V_Sync_Pulse_nxt_7__N_1016, H_Sync_Pulse_nxt_7__N_1009, H_Sync_Pulse_nxt_7__N_1008, 
        H_Sync_Pulse_nxt_7__N_1007, H_Sync_Pulse_nxt_7__N_1006, H_Sync_Pulse_nxt_7__N_1005, 
        H_Sync_Pulse_nxt_7__N_1004, H_Sync_Pulse_nxt_7__N_1003, H_Right_Margin_nxt_10__N_989, 
        H_Right_Margin_nxt_10__N_988, H_Right_Margin_nxt_10__N_987, H_Right_Margin_nxt_10__N_986, 
        H_Right_Margin_nxt_10__N_985, H_Right_Margin_nxt_10__N_984, H_Right_Margin_nxt_10__N_983, 
        H_Right_Margin_nxt_10__N_982, V_Left_Margin_nxt_5__N_978, V_Left_Margin_nxt_5__N_976, 
        V_Left_Margin_nxt_5__N_975, V_Left_Margin_nxt_5__N_973, n5;
    
    FD1S1I V_Count_Max_nxt_11__I_0_i1 (.D(V_count_max[0]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(V_Count_Max_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i1.GSR = "DISABLED";
    FD1S3AX H_Left_Margin_reg_i0 (.D(H_Left_Margin_nxt[0]), .CK(clk_c), 
            .Q(H_left_margin[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i0.GSR = "ENABLED";
    FD1S3AY V_Left_Margin_reg_i0 (.D(V_Left_Margin_nxt[0]), .CK(clk_c), 
            .Q(V_left_margin[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Left_Margin_reg_i0.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i0 (.D(H_Right_Margin_nxt[0]), .CK(clk_c), 
            .Q(H_right_margin[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i0.GSR = "ENABLED";
    FD1S3AY V_Right_Margin_reg_i0 (.D(V_Right_Margin_nxt[0]), .CK(clk_c), 
            .Q(V_right_margin[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i0.GSR = "ENABLED";
    FD1S3AX H_Sync_Pulse_reg_i0 (.D(H_Sync_Pulse_nxt[0]), .CK(clk_c), .Q(H_sync_pulse[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i0.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i0 (.D(V_Sync_Pulse_nxt[0]), .CK(clk_c), .Q(V_sync_pulse[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i0.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i0 (.D(H_Count_Max_nxt[0]), .CK(clk_c), .Q(H_count_max[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i0.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i0 (.D(V_Count_Max_nxt[0]), .CK(clk_c), .Q(V_count_max[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i0.GSR = "ENABLED";
    FD1S1I H_Count_Max_nxt_11__I_0_i1 (.D(H_count_max[0]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(H_Count_Max_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i1.GSR = "DISABLED";
    LUT4 i1420_1_lut (.A(\c_data[1] ), .Z(H_Left_Margin_nxt_8__N_959)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam i1420_1_lut.init = 16'h5555;
    FD1S1I H_Left_Margin_nxt_8__I_0_i1 (.D(H_left_margin[0]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(H_Left_Margin_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i1.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i1 (.D(V_Right_Margin_nxt_9__N_1002), 
           .CK(H_Left_Margin_nxt_8__N_969), .Q(V_Right_Margin_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i1.GSR = "DISABLED";
    FD1S1I V_Sync_Pulse_nxt_7__I_0_i1 (.D(V_sync_pulse[0]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(V_Sync_Pulse_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i1.GSR = "DISABLED";
    FD1S1I H_Sync_Pulse_nxt_7__I_0_i1 (.D(H_sync_pulse[0]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(H_Sync_Pulse_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i1.GSR = "DISABLED";
    FD1S1I H_Right_Margin_nxt_10__I_0_i1 (.D(H_right_margin[0]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(H_Right_Margin_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i1.GSR = "DISABLED";
    FD1S1A V_Left_Margin_nxt_5__I_0_i1 (.D(V_Left_Margin_nxt_5__N_980), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(V_Left_Margin_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__I_0_i1.GSR = "DISABLED";
    FD1S3AY Load_reg_732 (.D(Load_nxt), .CK(clk_c), .Q(Load_config)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam Load_reg_732.GSR = "ENABLED";
    FD1S1D V_Left_Margin_nxt_5__N_981_I_0 (.D(\c_data[1]_derived_1 ), .CK(\c_data[1]_derived_1 ), 
           .CD(Load_nxt_N_1044), .Q(Load_nxt)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__N_981_I_0.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i2 (.D(V_Count_Max_nxt_11__N_1042), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(V_Count_Max_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i2.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i3 (.D(V_Count_Max_nxt_11__N_1041), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(V_Count_Max_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i3.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i4 (.D(V_Count_Max_nxt_11__N_1040), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(V_Count_Max_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i4.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i5 (.D(V_Count_Max_nxt_11__N_1039), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(V_Count_Max_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i5.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i6 (.D(V_Count_Max_nxt_11__N_1038), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(V_Count_Max_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i6.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i7 (.D(V_Count_Max_nxt_11__N_1037), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(V_Count_Max_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i7.GSR = "DISABLED";
    FD1S1I V_Count_Max_nxt_11__I_0_i8 (.D(V_count_max[7]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(V_Count_Max_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i8.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i9 (.D(V_Count_Max_nxt_11__N_1035), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(V_Count_Max_nxt[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i9.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i10 (.D(V_Count_Max_nxt_11__N_1034), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(V_Count_Max_nxt[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i10.GSR = "DISABLED";
    FD1S1I V_Count_Max_nxt_11__I_0_i11 (.D(V_count_max[10]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(V_Count_Max_nxt[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i11.GSR = "DISABLED";
    FD1S1I V_Count_Max_nxt_11__I_0_i12 (.D(V_count_max[11]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(V_Count_Max_nxt[11])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i12.GSR = "DISABLED";
    FD1S1I H_Count_Max_nxt_11__I_0_i2 (.D(H_count_max[1]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(H_Count_Max_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i2.GSR = "DISABLED";
    FD1S1I H_Count_Max_nxt_11__I_0_i3 (.D(H_count_max[2]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(H_Count_Max_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i3.GSR = "DISABLED";
    FD1S1I H_Count_Max_nxt_11__I_0_i4 (.D(H_count_max[3]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(H_Count_Max_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i4.GSR = "DISABLED";
    FD1S1I H_Count_Max_nxt_11__I_0_i5 (.D(H_count_max[4]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(H_Count_Max_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i5.GSR = "DISABLED";
    FD1S1A H_Count_Max_nxt_11__I_0_i6 (.D(H_Count_Max_nxt_11__N_1026), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Count_Max_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i6.GSR = "DISABLED";
    FD1S1I H_Count_Max_nxt_11__I_0_i7 (.D(H_count_max[6]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(H_Count_Max_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i7.GSR = "DISABLED";
    FD1S1A H_Count_Max_nxt_11__I_0_i8 (.D(H_Count_Max_nxt_11__N_1024), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Count_Max_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i8.GSR = "DISABLED";
    FD1S1A H_Count_Max_nxt_11__I_0_i9 (.D(H_Count_Max_nxt_11__N_1022), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Count_Max_nxt[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i9.GSR = "DISABLED";
    FD1S1A H_Count_Max_nxt_11__I_0_i10 (.D(H_Count_Max_nxt_11__N_1021), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Count_Max_nxt[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i10.GSR = "DISABLED";
    FD1S1A H_Count_Max_nxt_11__I_0_i11 (.D(H_Count_Max_nxt_11__N_1020), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Count_Max_nxt[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i11.GSR = "DISABLED";
    FD1S1A H_Count_Max_nxt_11__I_0_i12 (.D(H_Count_Max_nxt_11__N_1019), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Count_Max_nxt[11])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i12.GSR = "DISABLED";
    FD1S1I H_Left_Margin_nxt_8__I_0_i2 (.D(H_left_margin[1]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(H_Left_Margin_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i2.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i3 (.D(H_Left_Margin_nxt_8__N_965), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Left_Margin_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i3.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i4 (.D(H_Left_Margin_nxt_8__N_964), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Left_Margin_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i4.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i5 (.D(H_Left_Margin_nxt_8__N_963), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Left_Margin_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i5.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i6 (.D(H_Left_Margin_nxt_8__N_962), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Left_Margin_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i6.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i7 (.D(H_Left_Margin_nxt_8__N_960), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Left_Margin_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i7.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i8 (.D(H_Left_Margin_nxt_8__N_958), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Left_Margin_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i8.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i9 (.D(H_Left_Margin_nxt_8__N_954), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Left_Margin_nxt[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i9.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i2 (.D(V_Right_Margin_nxt_9__N_1001), 
           .CK(H_Left_Margin_nxt_8__N_969), .Q(V_Right_Margin_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i2.GSR = "DISABLED";
    FD1S1I V_Right_Margin_nxt_9__I_0_i3 (.D(V_right_margin[2]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(V_Right_Margin_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i3.GSR = "DISABLED";
    FD1S1I V_Right_Margin_nxt_9__I_0_i4 (.D(V_right_margin[3]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(V_Right_Margin_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i4.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i5 (.D(V_Right_Margin_nxt_9__N_998), 
           .CK(H_Left_Margin_nxt_8__N_969), .Q(V_Right_Margin_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i5.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i6 (.D(V_Right_Margin_nxt_9__N_997), 
           .CK(H_Left_Margin_nxt_8__N_969), .Q(V_Right_Margin_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i6.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i7 (.D(V_Right_Margin_nxt_9__N_996), 
           .CK(H_Left_Margin_nxt_8__N_969), .Q(V_Right_Margin_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i7.GSR = "DISABLED";
    FD1S1I V_Right_Margin_nxt_9__I_0_i8 (.D(V_right_margin[7]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(V_Right_Margin_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i8.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i9 (.D(V_Right_Margin_nxt_9__N_994), 
           .CK(H_Left_Margin_nxt_8__N_969), .Q(V_Right_Margin_nxt[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i9.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i10 (.D(V_Right_Margin_nxt_9__N_993), 
           .CK(H_Left_Margin_nxt_8__N_969), .Q(V_Right_Margin_nxt[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i10.GSR = "DISABLED";
    FD1S1A V_Sync_Pulse_nxt_7__I_0_i2 (.D(V_Sync_Pulse_nxt_7__N_1017), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(V_Sync_Pulse_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i2.GSR = "DISABLED";
    FD1S1A V_Sync_Pulse_nxt_7__I_0_i3 (.D(V_Sync_Pulse_nxt_7__N_1016), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(V_Sync_Pulse_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i3.GSR = "DISABLED";
    FD1S1I V_Sync_Pulse_nxt_7__I_0_i4 (.D(V_sync_pulse[3]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(V_Sync_Pulse_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i4.GSR = "DISABLED";
    FD1S1I V_Sync_Pulse_nxt_7__I_0_i5 (.D(V_sync_pulse[4]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(V_Sync_Pulse_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i5.GSR = "DISABLED";
    FD1S1I V_Sync_Pulse_nxt_7__I_0_i6 (.D(V_sync_pulse[5]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(V_Sync_Pulse_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i6.GSR = "DISABLED";
    FD1S1I V_Sync_Pulse_nxt_7__I_0_i7 (.D(V_sync_pulse[6]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(V_Sync_Pulse_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i7.GSR = "DISABLED";
    FD1S1I V_Sync_Pulse_nxt_7__I_0_i8 (.D(V_sync_pulse[7]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(V_Sync_Pulse_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i8.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i2 (.D(H_Sync_Pulse_nxt_7__N_1009), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Sync_Pulse_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i2.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i3 (.D(H_Sync_Pulse_nxt_7__N_1008), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Sync_Pulse_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i3.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i4 (.D(H_Sync_Pulse_nxt_7__N_1007), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Sync_Pulse_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i4.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i5 (.D(H_Sync_Pulse_nxt_7__N_1006), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Sync_Pulse_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i5.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i6 (.D(H_Sync_Pulse_nxt_7__N_1005), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Sync_Pulse_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i6.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i7 (.D(H_Sync_Pulse_nxt_7__N_1004), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Sync_Pulse_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i7.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i8 (.D(H_Sync_Pulse_nxt_7__N_1003), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(H_Sync_Pulse_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i8.GSR = "DISABLED";
    FD1S1I H_Right_Margin_nxt_10__I_0_i2 (.D(H_right_margin[1]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(H_Right_Margin_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i2.GSR = "DISABLED";
    FD1S1I H_Right_Margin_nxt_10__I_0_i3 (.D(H_right_margin[2]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(H_Right_Margin_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i3.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i4 (.D(H_Right_Margin_nxt_10__N_989), 
           .CK(H_Left_Margin_nxt_8__N_969), .Q(H_Right_Margin_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i4.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i5 (.D(H_Right_Margin_nxt_10__N_988), 
           .CK(H_Left_Margin_nxt_8__N_969), .Q(H_Right_Margin_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i5.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i6 (.D(H_Right_Margin_nxt_10__N_987), 
           .CK(H_Left_Margin_nxt_8__N_969), .Q(H_Right_Margin_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i6.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i7 (.D(H_Right_Margin_nxt_10__N_986), 
           .CK(H_Left_Margin_nxt_8__N_969), .Q(H_Right_Margin_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i7.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i8 (.D(H_Right_Margin_nxt_10__N_985), 
           .CK(H_Left_Margin_nxt_8__N_969), .Q(H_Right_Margin_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i8.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i9 (.D(H_Right_Margin_nxt_10__N_984), 
           .CK(H_Left_Margin_nxt_8__N_969), .Q(H_Right_Margin_nxt[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i9.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i10 (.D(H_Right_Margin_nxt_10__N_983), 
           .CK(H_Left_Margin_nxt_8__N_969), .Q(H_Right_Margin_nxt[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i10.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i11 (.D(H_Right_Margin_nxt_10__N_982), 
           .CK(H_Left_Margin_nxt_8__N_969), .Q(H_Right_Margin_nxt[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i11.GSR = "DISABLED";
    FD1S1A V_Left_Margin_nxt_5__I_0_i2 (.D(V_Left_Margin_nxt_5__N_978), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(V_Left_Margin_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__I_0_i2.GSR = "DISABLED";
    FD1S1I V_Left_Margin_nxt_5__I_0_i3 (.D(V_left_margin[2]), .CK(H_Left_Margin_nxt_8__N_969), 
           .CD(n9153), .Q(V_Left_Margin_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__I_0_i3.GSR = "DISABLED";
    FD1S1A V_Left_Margin_nxt_5__I_0_i4 (.D(V_Left_Margin_nxt_5__N_976), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(V_Left_Margin_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__I_0_i4.GSR = "DISABLED";
    FD1S1A V_Left_Margin_nxt_5__I_0_i5 (.D(V_Left_Margin_nxt_5__N_975), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(V_Left_Margin_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__I_0_i5.GSR = "DISABLED";
    FD1S1A V_Left_Margin_nxt_5__I_0_i6 (.D(V_Left_Margin_nxt_5__N_973), .CK(H_Left_Margin_nxt_8__N_969), 
           .Q(V_Left_Margin_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__I_0_i6.GSR = "DISABLED";
    LUT4 H_count_max_5__I_0_3_lut (.A(H_count_max[5]), .B(\c_data[1] ), 
         .C(n9153), .Z(H_Count_Max_nxt_11__N_1026)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_count_max_5__I_0_3_lut.init = 16'h3a3a;
    LUT4 H_count_max_9__I_0_3_lut (.A(H_count_max[9]), .B(\c_data[0] ), 
         .C(n9153), .Z(H_Count_Max_nxt_11__N_1021)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_count_max_9__I_0_3_lut.init = 16'h3a3a;
    LUT4 H_left_margin_4__I_0_3_lut (.A(H_left_margin[4]), .B(\c_data[1] ), 
         .C(n9153), .Z(H_Left_Margin_nxt_8__N_963)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_left_margin_4__I_0_3_lut.init = 16'h3a3a;
    LUT4 H_left_margin_7__I_0_3_lut (.A(H_left_margin[7]), .B(\c_data[1] ), 
         .C(n9153), .Z(H_Left_Margin_nxt_8__N_958)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_left_margin_7__I_0_3_lut.init = 16'h3a3a;
    LUT4 H_sync_pulse_3__I_0_3_lut (.A(H_sync_pulse[3]), .B(\c_data[1] ), 
         .C(n9153), .Z(H_Sync_Pulse_nxt_7__N_1007)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_sync_pulse_3__I_0_3_lut.init = 16'h3a3a;
    LUT4 H_sync_pulse_4__I_0_3_lut (.A(H_sync_pulse[4]), .B(\c_data[1] ), 
         .C(n9153), .Z(H_Sync_Pulse_nxt_7__N_1006)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_sync_pulse_4__I_0_3_lut.init = 16'h3a3a;
    LUT4 H_sync_pulse_6__I_0_3_lut (.A(H_sync_pulse[6]), .B(\c_data[1] ), 
         .C(n9153), .Z(H_Sync_Pulse_nxt_7__N_1004)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_sync_pulse_6__I_0_3_lut.init = 16'h3a3a;
    LUT4 i1_4_lut_4_lut (.A(\c_data[1]_derived_1 ), .B(H_BackPorch_nxt_7__N_782), 
         .C(n3408), .D(n9125), .Z(c_ready_nxt_N_906)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0700;
    LUT4 H_right_margin_4__I_0_3_lut (.A(H_right_margin[4]), .B(\c_data[1] ), 
         .C(n9153), .Z(H_Right_Margin_nxt_10__N_988)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_right_margin_4__I_0_3_lut.init = 16'h3a3a;
    LUT4 H_right_margin_9__I_0_3_lut (.A(H_right_margin[9]), .B(\c_data[1] ), 
         .C(n9153), .Z(H_Right_Margin_nxt_10__N_983)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_right_margin_9__I_0_3_lut.init = 16'h3a3a;
    LUT4 V_left_margin_5__I_0_3_lut (.A(V_left_margin[5]), .B(\c_data[0] ), 
         .C(n9153), .Z(V_Left_Margin_nxt_5__N_973)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam V_left_margin_5__I_0_3_lut.init = 16'h3a3a;
    LUT4 i2_3_lut_rep_200 (.A(c_valid), .B(\c_addr[3] ), .C(\c_addr[2] ), 
         .Z(n9153)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_rep_200.init = 16'h8080;
    LUT4 i1_2_lut_4_lut (.A(c_valid), .B(\c_addr[3] ), .C(\c_addr[2] ), 
         .D(Load_config), .Z(Load_nxt_N_1044)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_2_lut_4_lut.init = 16'hff7f;
    LUT4 i7502_2_lut_2_lut_4_lut (.A(c_valid), .B(\c_addr[3] ), .C(\c_addr[2] ), 
         .D(\c_data[1]_derived_1 ), .Z(H_Left_Margin_nxt_8__N_969)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i7502_2_lut_2_lut_4_lut.init = 16'hff7f;
    FD1S3AX H_Left_Margin_reg_i1 (.D(H_Left_Margin_nxt[1]), .CK(clk_c), 
            .Q(H_left_margin[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i1.GSR = "ENABLED";
    FD1S3AX H_Left_Margin_reg_i2 (.D(H_Left_Margin_nxt[2]), .CK(clk_c), 
            .Q(H_left_margin[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i2.GSR = "ENABLED";
    FD1S3AX H_Left_Margin_reg_i3 (.D(H_Left_Margin_nxt[3]), .CK(clk_c), 
            .Q(H_left_margin[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i3.GSR = "ENABLED";
    FD1S3AY H_Left_Margin_reg_i4 (.D(H_Left_Margin_nxt[4]), .CK(clk_c), 
            .Q(H_left_margin[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i4.GSR = "ENABLED";
    FD1S3AX H_Left_Margin_reg_i5 (.D(H_Left_Margin_nxt[5]), .CK(clk_c), 
            .Q(H_left_margin[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i5.GSR = "ENABLED";
    FD1S3AX H_Left_Margin_reg_i6 (.D(H_Left_Margin_nxt[6]), .CK(clk_c), 
            .Q(H_left_margin[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i6.GSR = "ENABLED";
    FD1S3AY H_Left_Margin_reg_i7 (.D(H_Left_Margin_nxt[7]), .CK(clk_c), 
            .Q(H_left_margin[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i7.GSR = "ENABLED";
    FD1S3AX H_Left_Margin_reg_i8 (.D(H_Left_Margin_nxt[8]), .CK(clk_c), 
            .Q(H_left_margin[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i8.GSR = "ENABLED";
    FD1S3AX V_Left_Margin_reg_i1 (.D(V_Left_Margin_nxt[1]), .CK(clk_c), 
            .Q(V_left_margin[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Left_Margin_reg_i1.GSR = "ENABLED";
    FD1S3AX V_Left_Margin_reg_i2 (.D(V_Left_Margin_nxt[2]), .CK(clk_c), 
            .Q(V_left_margin[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Left_Margin_reg_i2.GSR = "ENABLED";
    FD1S3AX V_Left_Margin_reg_i3 (.D(V_Left_Margin_nxt[3]), .CK(clk_c), 
            .Q(V_left_margin[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Left_Margin_reg_i3.GSR = "ENABLED";
    FD1S3AX V_Left_Margin_reg_i4 (.D(V_Left_Margin_nxt[4]), .CK(clk_c), 
            .Q(V_left_margin[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Left_Margin_reg_i4.GSR = "ENABLED";
    FD1S3AY V_Left_Margin_reg_i5 (.D(V_Left_Margin_nxt[5]), .CK(clk_c), 
            .Q(V_left_margin[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Left_Margin_reg_i5.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i1 (.D(H_Right_Margin_nxt[1]), .CK(clk_c), 
            .Q(H_right_margin[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i1.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i2 (.D(H_Right_Margin_nxt[2]), .CK(clk_c), 
            .Q(H_right_margin[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i2.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i3 (.D(H_Right_Margin_nxt[3]), .CK(clk_c), 
            .Q(H_right_margin[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i3.GSR = "ENABLED";
    FD1S3AY H_Right_Margin_reg_i4 (.D(H_Right_Margin_nxt[4]), .CK(clk_c), 
            .Q(H_right_margin[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i4.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i5 (.D(H_Right_Margin_nxt[5]), .CK(clk_c), 
            .Q(H_right_margin[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i5.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i6 (.D(H_Right_Margin_nxt[6]), .CK(clk_c), 
            .Q(H_right_margin[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i6.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i7 (.D(H_Right_Margin_nxt[7]), .CK(clk_c), 
            .Q(H_right_margin[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i7.GSR = "ENABLED";
    FD1S3AY H_Right_Margin_reg_i8 (.D(H_Right_Margin_nxt[8]), .CK(clk_c), 
            .Q(H_right_margin[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i8.GSR = "ENABLED";
    FD1S3AY H_Right_Margin_reg_i9 (.D(H_Right_Margin_nxt[9]), .CK(clk_c), 
            .Q(H_right_margin[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i9.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i10 (.D(H_Right_Margin_nxt[10]), .CK(clk_c), 
            .Q(H_right_margin[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i10.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i1 (.D(V_Right_Margin_nxt[1]), .CK(clk_c), 
            .Q(V_right_margin[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i1.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i2 (.D(V_Right_Margin_nxt[2]), .CK(clk_c), 
            .Q(V_right_margin[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i2.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i3 (.D(V_Right_Margin_nxt[3]), .CK(clk_c), 
            .Q(V_right_margin[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i3.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i4 (.D(V_Right_Margin_nxt[4]), .CK(clk_c), 
            .Q(V_right_margin[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i4.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i5 (.D(V_Right_Margin_nxt[5]), .CK(clk_c), 
            .Q(V_right_margin[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i5.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i6 (.D(V_Right_Margin_nxt[6]), .CK(clk_c), 
            .Q(V_right_margin[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i6.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i7 (.D(V_Right_Margin_nxt[7]), .CK(clk_c), 
            .Q(V_right_margin[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i7.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i8 (.D(V_Right_Margin_nxt[8]), .CK(clk_c), 
            .Q(V_right_margin[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i8.GSR = "ENABLED";
    FD1S3AY V_Right_Margin_reg_i9 (.D(V_Right_Margin_nxt[9]), .CK(clk_c), 
            .Q(V_right_margin[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i9.GSR = "ENABLED";
    FD1S3AY H_Sync_Pulse_reg_i1 (.D(H_Sync_Pulse_nxt[1]), .CK(clk_c), .Q(H_sync_pulse[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i1.GSR = "ENABLED";
    FD1S3AY H_Sync_Pulse_reg_i2 (.D(H_Sync_Pulse_nxt[2]), .CK(clk_c), .Q(H_sync_pulse[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i2.GSR = "ENABLED";
    FD1S3AY H_Sync_Pulse_reg_i3 (.D(H_Sync_Pulse_nxt[3]), .CK(clk_c), .Q(H_sync_pulse[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i3.GSR = "ENABLED";
    FD1S3AY H_Sync_Pulse_reg_i4 (.D(H_Sync_Pulse_nxt[4]), .CK(clk_c), .Q(H_sync_pulse[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i4.GSR = "ENABLED";
    FD1S3AX H_Sync_Pulse_reg_i5 (.D(H_Sync_Pulse_nxt[5]), .CK(clk_c), .Q(H_sync_pulse[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i5.GSR = "ENABLED";
    FD1S3AY H_Sync_Pulse_reg_i6 (.D(H_Sync_Pulse_nxt[6]), .CK(clk_c), .Q(H_sync_pulse[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i6.GSR = "ENABLED";
    FD1S3AX H_Sync_Pulse_reg_i7 (.D(H_Sync_Pulse_nxt[7]), .CK(clk_c), .Q(H_sync_pulse[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i7.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i1 (.D(V_Sync_Pulse_nxt[1]), .CK(clk_c), .Q(V_sync_pulse[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i1.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i2 (.D(V_Sync_Pulse_nxt[2]), .CK(clk_c), .Q(V_sync_pulse[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i2.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i3 (.D(V_Sync_Pulse_nxt[3]), .CK(clk_c), .Q(V_sync_pulse[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i3.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i4 (.D(V_Sync_Pulse_nxt[4]), .CK(clk_c), .Q(V_sync_pulse[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i4.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i5 (.D(V_Sync_Pulse_nxt[5]), .CK(clk_c), .Q(V_sync_pulse[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i5.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i6 (.D(V_Sync_Pulse_nxt[6]), .CK(clk_c), .Q(V_sync_pulse[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i6.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i7 (.D(V_Sync_Pulse_nxt[7]), .CK(clk_c), .Q(V_sync_pulse[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i7.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i1 (.D(H_Count_Max_nxt[1]), .CK(clk_c), .Q(H_count_max[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i1.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i2 (.D(H_Count_Max_nxt[2]), .CK(clk_c), .Q(H_count_max[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i2.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i3 (.D(H_Count_Max_nxt[3]), .CK(clk_c), .Q(H_count_max[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i3.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i4 (.D(H_Count_Max_nxt[4]), .CK(clk_c), .Q(H_count_max[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i4.GSR = "ENABLED";
    FD1S3AY H_Count_Max_reg_i5 (.D(H_Count_Max_nxt[5]), .CK(clk_c), .Q(H_count_max[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i5.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i6 (.D(H_Count_Max_nxt[6]), .CK(clk_c), .Q(H_count_max[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i6.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i7 (.D(H_Count_Max_nxt[7]), .CK(clk_c), .Q(H_count_max[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i7.GSR = "ENABLED";
    FD1S3AY H_Count_Max_reg_i8 (.D(H_Count_Max_nxt[8]), .CK(clk_c), .Q(H_count_max[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i8.GSR = "ENABLED";
    FD1S3AY H_Count_Max_reg_i9 (.D(H_Count_Max_nxt[9]), .CK(clk_c), .Q(H_count_max[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i9.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i10 (.D(H_Count_Max_nxt[10]), .CK(clk_c), .Q(H_count_max[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i10.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i11 (.D(H_Count_Max_nxt[11]), .CK(clk_c), .Q(H_count_max[11])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i11.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i1 (.D(V_Count_Max_nxt[1]), .CK(clk_c), .Q(V_count_max[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i1.GSR = "ENABLED";
    FD1S3AY V_Count_Max_reg_i2 (.D(V_Count_Max_nxt[2]), .CK(clk_c), .Q(V_count_max[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i2.GSR = "ENABLED";
    FD1S3AY V_Count_Max_reg_i3 (.D(V_Count_Max_nxt[3]), .CK(clk_c), .Q(V_count_max[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i3.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i4 (.D(V_Count_Max_nxt[4]), .CK(clk_c), .Q(V_count_max[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i4.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i5 (.D(V_Count_Max_nxt[5]), .CK(clk_c), .Q(V_count_max[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i5.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i6 (.D(V_Count_Max_nxt[6]), .CK(clk_c), .Q(V_count_max[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i6.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i7 (.D(V_Count_Max_nxt[7]), .CK(clk_c), .Q(V_count_max[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i7.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i8 (.D(V_Count_Max_nxt[8]), .CK(clk_c), .Q(V_count_max[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i8.GSR = "ENABLED";
    FD1S3AY V_Count_Max_reg_i9 (.D(V_Count_Max_nxt[9]), .CK(clk_c), .Q(V_count_max[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i9.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i10 (.D(V_Count_Max_nxt[10]), .CK(clk_c), .Q(V_count_max[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i10.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i11 (.D(V_Count_Max_nxt[11]), .CK(clk_c), .Q(V_count_max[11])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i11.GSR = "ENABLED";
    LUT4 i7491_2_lut_rep_213 (.A(\c_data[0] ), .B(\c_data[1] ), .Z(\c_data[1]_derived_1 )) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i7491_2_lut_rep_213.init = 16'h7777;
    LUT4 V_right_margin_0__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_right_margin[0]), .Z(V_Right_Margin_nxt_9__N_1002)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam V_right_margin_0__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 V_left_margin_0__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_left_margin[0]), .Z(V_Left_Margin_nxt_5__N_980)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam V_left_margin_0__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 V_count_max_2__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_count_max[2]), .Z(V_Count_Max_nxt_11__N_1041)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam V_count_max_2__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 V_count_max_9__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_count_max[9]), .Z(V_Count_Max_nxt_11__N_1034)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam V_count_max_9__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 V_right_margin_9__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_right_margin[9]), .Z(V_Right_Margin_nxt_9__N_993)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam V_right_margin_9__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 H_sync_pulse_1__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(H_sync_pulse[1]), .Z(H_Sync_Pulse_nxt_7__N_1009)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam H_sync_pulse_1__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 H_sync_pulse_2__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(H_sync_pulse[2]), .Z(H_Sync_Pulse_nxt_7__N_1008)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam H_sync_pulse_2__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 H_right_margin_8__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(H_right_margin[8]), .Z(H_Right_Margin_nxt_10__N_984)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam H_right_margin_8__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 i2_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), .C(H_BackPorch_nxt_7__N_782), 
         .D(button_signal_DEBUG_VGA), .Z(clk_c_enable_93)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0070;
    LUT4 i4301_2_lut_3_lut (.A(\c_data[0] ), .B(\c_data[1] ), .C(\c_data[2] ), 
         .Z(\baudrate_next_23__N_262[6] )) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i4301_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i3_4_lut (.A(n5), .B(\c_ready[1] ), .C(Load_config), .D(c_ready_Assign), 
         .Z(c_addr_3__N_470)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam i3_4_lut.init = 16'h0800;
    LUT4 i1_2_lut (.A(c_UART_ready), .B(c_VGA_ready), .Z(n5)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 V_count_max_5__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_count_max[5]), .Z(V_Count_Max_nxt_11__N_1038)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_count_max_5__I_0_3_lut_4_lut.init = 16'h6f60;
    LUT4 V_right_margin_5__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_right_margin[5]), .Z(V_Right_Margin_nxt_9__N_997)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_right_margin_5__I_0_3_lut_4_lut.init = 16'h6f60;
    LUT4 H_right_margin_3__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(H_right_margin[3]), .Z(H_Right_Margin_nxt_10__N_989)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_right_margin_3__I_0_3_lut_4_lut.init = 16'h6f60;
    LUT4 V_right_margin_1__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_right_margin[1]), .Z(V_Right_Margin_nxt_9__N_1001)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_right_margin_1__I_0_3_lut_4_lut.init = 16'h6f60;
    LUT4 V_left_margin_1__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_left_margin[1]), .Z(V_Left_Margin_nxt_5__N_978)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_left_margin_1__I_0_3_lut_4_lut.init = 16'h6f60;
    LUT4 i4241_2_lut_rep_230 (.A(\c_data[0] ), .B(\c_data[1] ), .Z(n9183)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam i4241_2_lut_rep_230.init = 16'h2222;
    LUT4 V_count_max_4__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_count_max[4]), .Z(V_Count_Max_nxt_11__N_1039)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_count_max_4__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 V_count_max_6__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_count_max[6]), .Z(V_Count_Max_nxt_11__N_1037)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_count_max_6__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 H_count_max_10__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(H_count_max[10]), .Z(H_Count_Max_nxt_11__N_1020)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_count_max_10__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 H_right_margin_5__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(H_right_margin[5]), .Z(H_Right_Margin_nxt_10__N_987)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_right_margin_5__I_0_3_lut_4_lut.init = 16'h6f60;
    LUT4 H_left_margin_2__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(H_left_margin[2]), .Z(H_Left_Margin_nxt_8__N_965)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_left_margin_2__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 H_left_margin_6__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(H_left_margin[6]), .Z(H_Left_Margin_nxt_8__N_960)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_left_margin_6__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 V_right_margin_4__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_right_margin[4]), .Z(V_Right_Margin_nxt_9__N_998)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_right_margin_4__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 V_right_margin_6__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_right_margin[6]), .Z(V_Right_Margin_nxt_9__N_996)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_right_margin_6__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 V_sync_pulse_1__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_sync_pulse[1]), .Z(V_Sync_Pulse_nxt_7__N_1017)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_sync_pulse_1__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 H_sync_pulse_5__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(H_sync_pulse[5]), .Z(H_Sync_Pulse_nxt_7__N_1005)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_sync_pulse_5__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 H_right_margin_6__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(H_right_margin[6]), .Z(H_Right_Margin_nxt_10__N_986)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_right_margin_6__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 H_right_margin_7__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(H_right_margin[7]), .Z(H_Right_Margin_nxt_10__N_985)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_right_margin_7__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 V_left_margin_3__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_left_margin[3]), .Z(V_Left_Margin_nxt_5__N_976)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_left_margin_3__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 V_left_margin_4__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_left_margin[4]), .Z(V_Left_Margin_nxt_5__N_975)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_left_margin_4__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 i4242_2_lut_rep_236 (.A(\c_data[0] ), .B(\c_data[1] ), .Z(n9189)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam i4242_2_lut_rep_236.init = 16'h4444;
    LUT4 V_count_max_1__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_count_max[1]), .Z(V_Count_Max_nxt_11__N_1042)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_count_max_1__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 V_count_max_8__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_count_max[8]), .Z(V_Count_Max_nxt_11__N_1035)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_count_max_8__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 H_count_max_7__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(H_count_max[7]), .Z(H_Count_Max_nxt_11__N_1024)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_count_max_7__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 H_count_max_11__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(H_count_max[11]), .Z(H_Count_Max_nxt_11__N_1019)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_count_max_11__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 H_left_margin_3__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(H_left_margin[3]), .Z(H_Left_Margin_nxt_8__N_964)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_left_margin_3__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 H_left_margin_5__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(H_left_margin[5]), .Z(H_Left_Margin_nxt_8__N_962)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_left_margin_5__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 H_left_margin_8__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(H_left_margin[8]), .Z(H_Left_Margin_nxt_8__N_954)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_left_margin_8__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 V_right_margin_8__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_right_margin[8]), .Z(V_Right_Margin_nxt_9__N_994)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_right_margin_8__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 V_sync_pulse_2__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(V_sync_pulse[2]), .Z(V_Sync_Pulse_nxt_7__N_1016)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_sync_pulse_2__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 H_sync_pulse_7__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(H_sync_pulse[7]), .Z(H_Sync_Pulse_nxt_7__N_1003)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_sync_pulse_7__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 H_right_margin_10__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(H_right_margin[10]), .Z(H_Right_Margin_nxt_10__N_982)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_right_margin_10__I_0_3_lut_4_lut.init = 16'h4f40;
    
endmodule
//
// Verilog Description of module VGA_Assign_color
//

module VGA_Assign_color (clk_c, Data_VGA, BLUE_c_2, RED_c_1, BLUE_c_1, 
            BLUE_c_0, RED_c_2, RED_c_3, n1947, Active_nxt_N_1068, 
            n8410, Count_h, GND_net, H_right_margin, Count_v, V_right_margin, 
            BLUE_c_3, GREEN_c_0, GREEN_c_1, GREEN_c_2, GREEN_c_3, 
            RED_c_0) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input [11:0]Data_VGA;
    output BLUE_c_2;
    output RED_c_1;
    output BLUE_c_1;
    output BLUE_c_0;
    output RED_c_2;
    output RED_c_3;
    input n1947;
    input Active_nxt_N_1068;
    input n8410;
    input [11:0]Count_h;
    input GND_net;
    input [10:0]H_right_margin;
    input [11:0]Count_v;
    input [9:0]V_right_margin;
    output BLUE_c_3;
    output GREEN_c_0;
    output GREEN_c_1;
    output GREEN_c_2;
    output GREEN_c_3;
    output RED_c_0;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire Active_reg, Active_nxt, n6, Active_nxt_N_1069, Active_nxt_N_1067, 
        n7712, n7711, n7710, n7709, n7708, n7707, n7706, n7705, 
        n7704, n7703, n7702, n7701;
    
    FD1S3AX Active_reg_17 (.D(Active_nxt), .CK(clk_c), .Q(Active_reg)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=19, LSE_RCOL=20, LSE_LLINE=74, LSE_RLINE=85 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(31[8] 33[6])
    defparam Active_reg_17.GSR = "ENABLED";
    LUT4 i4270_2_lut (.A(Data_VGA[10]), .B(Active_reg), .Z(BLUE_c_2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(47[20:49])
    defparam i4270_2_lut.init = 16'h8888;
    LUT4 i4277_2_lut (.A(Data_VGA[1]), .B(Active_reg), .Z(RED_c_1)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(45[17:46])
    defparam i4277_2_lut.init = 16'h8888;
    LUT4 i4271_2_lut (.A(Data_VGA[9]), .B(Active_reg), .Z(BLUE_c_1)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(47[20:49])
    defparam i4271_2_lut.init = 16'h8888;
    LUT4 i4194_2_lut (.A(Data_VGA[8]), .B(Active_reg), .Z(BLUE_c_0)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(47[20:49])
    defparam i4194_2_lut.init = 16'h8888;
    LUT4 i4276_2_lut (.A(Data_VGA[2]), .B(Active_reg), .Z(RED_c_2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(45[17:46])
    defparam i4276_2_lut.init = 16'h8888;
    LUT4 i4275_2_lut (.A(Data_VGA[3]), .B(Active_reg), .Z(RED_c_3)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(45[17:46])
    defparam i4275_2_lut.init = 16'h8888;
    LUT4 i3_4_lut (.A(n1947), .B(n6), .C(Active_nxt_N_1068), .D(n8410), 
         .Z(Active_nxt)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(38[6:108])
    defparam i3_4_lut.init = 16'hc080;
    LUT4 i2_2_lut (.A(Active_nxt_N_1069), .B(Active_nxt_N_1067), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(38[6:108])
    defparam i2_2_lut.init = 16'h8888;
    CCU2D sub_1045_add_2_13 (.A0(Count_h[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7712), .S1(Active_nxt_N_1067));
    defparam sub_1045_add_2_13.INIT0 = 16'hf555;
    defparam sub_1045_add_2_13.INIT1 = 16'h0000;
    defparam sub_1045_add_2_13.INJECT1_0 = "NO";
    defparam sub_1045_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1045_add_2_11 (.A0(H_right_margin[9]), .B0(Count_h[9]), .C0(GND_net), 
          .D0(GND_net), .A1(H_right_margin[10]), .B1(Count_h[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7711), .COUT(n7712));
    defparam sub_1045_add_2_11.INIT0 = 16'h5999;
    defparam sub_1045_add_2_11.INIT1 = 16'h5999;
    defparam sub_1045_add_2_11.INJECT1_0 = "NO";
    defparam sub_1045_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1045_add_2_9 (.A0(H_right_margin[7]), .B0(Count_h[7]), .C0(GND_net), 
          .D0(GND_net), .A1(H_right_margin[8]), .B1(Count_h[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7710), .COUT(n7711));
    defparam sub_1045_add_2_9.INIT0 = 16'h5999;
    defparam sub_1045_add_2_9.INIT1 = 16'h5999;
    defparam sub_1045_add_2_9.INJECT1_0 = "NO";
    defparam sub_1045_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1045_add_2_7 (.A0(H_right_margin[5]), .B0(Count_h[5]), .C0(GND_net), 
          .D0(GND_net), .A1(H_right_margin[6]), .B1(Count_h[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7709), .COUT(n7710));
    defparam sub_1045_add_2_7.INIT0 = 16'h5999;
    defparam sub_1045_add_2_7.INIT1 = 16'h5999;
    defparam sub_1045_add_2_7.INJECT1_0 = "NO";
    defparam sub_1045_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1045_add_2_5 (.A0(H_right_margin[3]), .B0(Count_h[3]), .C0(GND_net), 
          .D0(GND_net), .A1(H_right_margin[4]), .B1(Count_h[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7708), .COUT(n7709));
    defparam sub_1045_add_2_5.INIT0 = 16'h5999;
    defparam sub_1045_add_2_5.INIT1 = 16'h5999;
    defparam sub_1045_add_2_5.INJECT1_0 = "NO";
    defparam sub_1045_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1045_add_2_3 (.A0(H_right_margin[1]), .B0(Count_h[1]), .C0(GND_net), 
          .D0(GND_net), .A1(H_right_margin[2]), .B1(Count_h[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7707), .COUT(n7708));
    defparam sub_1045_add_2_3.INIT0 = 16'h5999;
    defparam sub_1045_add_2_3.INIT1 = 16'h5999;
    defparam sub_1045_add_2_3.INJECT1_0 = "NO";
    defparam sub_1045_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1045_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(H_right_margin[0]), .B1(Count_h[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n7707));
    defparam sub_1045_add_2_1.INIT0 = 16'h0000;
    defparam sub_1045_add_2_1.INIT1 = 16'h5999;
    defparam sub_1045_add_2_1.INJECT1_0 = "NO";
    defparam sub_1045_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_1046_add_2_13 (.A0(Count_v[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7706), .S1(Active_nxt_N_1069));
    defparam sub_1046_add_2_13.INIT0 = 16'hf555;
    defparam sub_1046_add_2_13.INIT1 = 16'h0000;
    defparam sub_1046_add_2_13.INJECT1_0 = "NO";
    defparam sub_1046_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1046_add_2_11 (.A0(V_right_margin[9]), .B0(Count_v[9]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7705), .COUT(n7706));
    defparam sub_1046_add_2_11.INIT0 = 16'h5999;
    defparam sub_1046_add_2_11.INIT1 = 16'hf555;
    defparam sub_1046_add_2_11.INJECT1_0 = "NO";
    defparam sub_1046_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1046_add_2_9 (.A0(V_right_margin[7]), .B0(Count_v[7]), .C0(GND_net), 
          .D0(GND_net), .A1(V_right_margin[8]), .B1(Count_v[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7704), .COUT(n7705));
    defparam sub_1046_add_2_9.INIT0 = 16'h5999;
    defparam sub_1046_add_2_9.INIT1 = 16'h5999;
    defparam sub_1046_add_2_9.INJECT1_0 = "NO";
    defparam sub_1046_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1046_add_2_7 (.A0(V_right_margin[5]), .B0(Count_v[5]), .C0(GND_net), 
          .D0(GND_net), .A1(V_right_margin[6]), .B1(Count_v[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7703), .COUT(n7704));
    defparam sub_1046_add_2_7.INIT0 = 16'h5999;
    defparam sub_1046_add_2_7.INIT1 = 16'h5999;
    defparam sub_1046_add_2_7.INJECT1_0 = "NO";
    defparam sub_1046_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1046_add_2_5 (.A0(V_right_margin[3]), .B0(Count_v[3]), .C0(GND_net), 
          .D0(GND_net), .A1(V_right_margin[4]), .B1(Count_v[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7702), .COUT(n7703));
    defparam sub_1046_add_2_5.INIT0 = 16'h5999;
    defparam sub_1046_add_2_5.INIT1 = 16'h5999;
    defparam sub_1046_add_2_5.INJECT1_0 = "NO";
    defparam sub_1046_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1046_add_2_3 (.A0(V_right_margin[1]), .B0(Count_v[1]), .C0(GND_net), 
          .D0(GND_net), .A1(V_right_margin[2]), .B1(Count_v[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7701), .COUT(n7702));
    defparam sub_1046_add_2_3.INIT0 = 16'h5999;
    defparam sub_1046_add_2_3.INIT1 = 16'h5999;
    defparam sub_1046_add_2_3.INJECT1_0 = "NO";
    defparam sub_1046_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1046_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(V_right_margin[0]), .B1(Count_v[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n7701));
    defparam sub_1046_add_2_1.INIT0 = 16'h0000;
    defparam sub_1046_add_2_1.INIT1 = 16'h5999;
    defparam sub_1046_add_2_1.INJECT1_0 = "NO";
    defparam sub_1046_add_2_1.INJECT1_1 = "NO";
    LUT4 i4269_2_lut (.A(Data_VGA[11]), .B(Active_reg), .Z(BLUE_c_3)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(47[20:49])
    defparam i4269_2_lut.init = 16'h8888;
    LUT4 i4193_2_lut (.A(Data_VGA[4]), .B(Active_reg), .Z(GREEN_c_0)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(46[20:49])
    defparam i4193_2_lut.init = 16'h8888;
    LUT4 i4274_2_lut (.A(Data_VGA[5]), .B(Active_reg), .Z(GREEN_c_1)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(46[20:49])
    defparam i4274_2_lut.init = 16'h8888;
    LUT4 i4273_2_lut (.A(Data_VGA[6]), .B(Active_reg), .Z(GREEN_c_2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(46[20:49])
    defparam i4273_2_lut.init = 16'h8888;
    LUT4 i4272_2_lut (.A(Data_VGA[7]), .B(Active_reg), .Z(GREEN_c_3)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(46[20:49])
    defparam i4272_2_lut.init = 16'h8888;
    LUT4 i4192_2_lut (.A(Data_VGA[0]), .B(Active_reg), .Z(RED_c_0)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_assign_color.v(45[17:46])
    defparam i4192_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module VGA_Counter
//

module VGA_Counter (VSYNC_c, HSYNC_c, rst_n_N_1047, Count_v, n4196, 
            GND_net, V_count_max, n1367, n8407) /* synthesis syn_module_defined=1 */ ;
    output VSYNC_c;
    input HSYNC_c;
    input rst_n_N_1047;
    output [11:0]Count_v;
    output n4196;
    input GND_net;
    input [11:0]V_count_max;
    input n1367;
    input n8407;
    
    wire HSYNC_c /* synthesis SET_AS_NETWORK=HSYNC_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(17[8:13])
    
    wire n2353;
    wire [11:0]n67;
    
    wire n7817;
    wire [11:0]n53;
    
    wire n7816, n7815, n7814, n7813, n7812, n7723, n1907, n7722, 
        n7721, n7720, n7719, n7718;
    
    FD1S3DX Sync_State_reg_13 (.D(n2353), .CK(HSYNC_c), .CD(rst_n_N_1047), 
            .Q(VSYNC_c)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=14, LSE_RCOL=25, LSE_LLINE=67, LSE_RLINE=72 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(31[3] 34[6])
    defparam Sync_State_reg_13.GSR = "DISABLED";
    FD1S3DX Count_reg_1275__i0 (.D(n67[0]), .CK(HSYNC_c), .CD(rst_n_N_1047), 
            .Q(Count_v[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275__i0.GSR = "DISABLED";
    LUT4 i3178_1_lut (.A(VSYNC_c), .Z(n4196)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(31[3] 34[6])
    defparam i3178_1_lut.init = 16'h5555;
    CCU2D Count_reg_1275_add_4_13 (.A0(Count_v[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7817), .S0(n53[11]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275_add_4_13.INIT0 = 16'hfaaa;
    defparam Count_reg_1275_add_4_13.INIT1 = 16'h0000;
    defparam Count_reg_1275_add_4_13.INJECT1_0 = "NO";
    defparam Count_reg_1275_add_4_13.INJECT1_1 = "NO";
    CCU2D Count_reg_1275_add_4_11 (.A0(Count_v[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7816), .COUT(n7817), .S0(n53[9]), .S1(n53[10]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275_add_4_11.INIT0 = 16'hfaaa;
    defparam Count_reg_1275_add_4_11.INIT1 = 16'hfaaa;
    defparam Count_reg_1275_add_4_11.INJECT1_0 = "NO";
    defparam Count_reg_1275_add_4_11.INJECT1_1 = "NO";
    CCU2D Count_reg_1275_add_4_9 (.A0(Count_v[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7815), .COUT(n7816), .S0(n53[7]), .S1(n53[8]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275_add_4_9.INIT0 = 16'hfaaa;
    defparam Count_reg_1275_add_4_9.INIT1 = 16'hfaaa;
    defparam Count_reg_1275_add_4_9.INJECT1_0 = "NO";
    defparam Count_reg_1275_add_4_9.INJECT1_1 = "NO";
    CCU2D Count_reg_1275_add_4_7 (.A0(Count_v[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7814), .COUT(n7815), .S0(n53[5]), .S1(n53[6]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275_add_4_7.INIT0 = 16'hfaaa;
    defparam Count_reg_1275_add_4_7.INIT1 = 16'hfaaa;
    defparam Count_reg_1275_add_4_7.INJECT1_0 = "NO";
    defparam Count_reg_1275_add_4_7.INJECT1_1 = "NO";
    CCU2D Count_reg_1275_add_4_5 (.A0(Count_v[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7813), .COUT(n7814), .S0(n53[3]), .S1(n53[4]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275_add_4_5.INIT0 = 16'hfaaa;
    defparam Count_reg_1275_add_4_5.INIT1 = 16'hfaaa;
    defparam Count_reg_1275_add_4_5.INJECT1_0 = "NO";
    defparam Count_reg_1275_add_4_5.INJECT1_1 = "NO";
    CCU2D Count_reg_1275_add_4_3 (.A0(Count_v[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7812), .COUT(n7813), .S0(n53[1]), .S1(n53[2]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275_add_4_3.INIT0 = 16'hfaaa;
    defparam Count_reg_1275_add_4_3.INIT1 = 16'hfaaa;
    defparam Count_reg_1275_add_4_3.INJECT1_0 = "NO";
    defparam Count_reg_1275_add_4_3.INJECT1_1 = "NO";
    CCU2D Count_reg_1275_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7812), .S1(n53[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275_add_4_1.INIT0 = 16'hF000;
    defparam Count_reg_1275_add_4_1.INIT1 = 16'h0555;
    defparam Count_reg_1275_add_4_1.INJECT1_0 = "NO";
    defparam Count_reg_1275_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_13 (.A0(Count_v[11]), .B0(V_count_max[11]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7723), .S1(n1907));
    defparam sub_1043_add_2_13.INIT0 = 16'h5999;
    defparam sub_1043_add_2_13.INIT1 = 16'h0000;
    defparam sub_1043_add_2_13.INJECT1_0 = "NO";
    defparam sub_1043_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_11 (.A0(Count_v[9]), .B0(V_count_max[9]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[10]), .B1(V_count_max[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7722), .COUT(n7723));
    defparam sub_1043_add_2_11.INIT0 = 16'h5999;
    defparam sub_1043_add_2_11.INIT1 = 16'h5999;
    defparam sub_1043_add_2_11.INJECT1_0 = "NO";
    defparam sub_1043_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_9 (.A0(Count_v[7]), .B0(V_count_max[7]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[8]), .B1(V_count_max[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7721), .COUT(n7722));
    defparam sub_1043_add_2_9.INIT0 = 16'h5999;
    defparam sub_1043_add_2_9.INIT1 = 16'h5999;
    defparam sub_1043_add_2_9.INJECT1_0 = "NO";
    defparam sub_1043_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_7 (.A0(Count_v[5]), .B0(V_count_max[5]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[6]), .B1(V_count_max[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7720), .COUT(n7721));
    defparam sub_1043_add_2_7.INIT0 = 16'h5999;
    defparam sub_1043_add_2_7.INIT1 = 16'h5999;
    defparam sub_1043_add_2_7.INJECT1_0 = "NO";
    defparam sub_1043_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_5 (.A0(Count_v[3]), .B0(V_count_max[3]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[4]), .B1(V_count_max[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7719), .COUT(n7720));
    defparam sub_1043_add_2_5.INIT0 = 16'h5999;
    defparam sub_1043_add_2_5.INIT1 = 16'h5999;
    defparam sub_1043_add_2_5.INJECT1_0 = "NO";
    defparam sub_1043_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_3 (.A0(Count_v[1]), .B0(V_count_max[1]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[2]), .B1(V_count_max[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7718), .COUT(n7719));
    defparam sub_1043_add_2_3.INIT0 = 16'h5999;
    defparam sub_1043_add_2_3.INIT1 = 16'h5999;
    defparam sub_1043_add_2_3.INJECT1_0 = "NO";
    defparam sub_1043_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[0]), .B1(V_count_max[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n7718));
    defparam sub_1043_add_2_1.INIT0 = 16'h0000;
    defparam sub_1043_add_2_1.INIT1 = 16'h5999;
    defparam sub_1043_add_2_1.INJECT1_0 = "NO";
    defparam sub_1043_add_2_1.INJECT1_1 = "NO";
    LUT4 i4374_2_lut (.A(n53[1]), .B(n1907), .Z(n67[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4374_2_lut.init = 16'h2222;
    LUT4 i4375_2_lut (.A(n53[2]), .B(n1907), .Z(n67[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4375_2_lut.init = 16'h2222;
    LUT4 i4376_2_lut (.A(n53[3]), .B(n1907), .Z(n67[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4376_2_lut.init = 16'h2222;
    LUT4 i4377_2_lut (.A(n53[4]), .B(n1907), .Z(n67[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4377_2_lut.init = 16'h2222;
    LUT4 i4378_2_lut (.A(n53[5]), .B(n1907), .Z(n67[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4378_2_lut.init = 16'h2222;
    LUT4 i4379_2_lut (.A(n53[6]), .B(n1907), .Z(n67[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4379_2_lut.init = 16'h2222;
    LUT4 i4380_2_lut (.A(n53[7]), .B(n1907), .Z(n67[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4380_2_lut.init = 16'h2222;
    LUT4 i4381_2_lut (.A(n53[8]), .B(n1907), .Z(n67[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4381_2_lut.init = 16'h2222;
    LUT4 i4382_2_lut (.A(n53[9]), .B(n1907), .Z(n67[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4382_2_lut.init = 16'h2222;
    LUT4 i4383_2_lut (.A(n53[10]), .B(n1907), .Z(n67[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4383_2_lut.init = 16'h2222;
    LUT4 i4384_2_lut (.A(n53[11]), .B(n1907), .Z(n67[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4384_2_lut.init = 16'h2222;
    FD1S3DX Count_reg_1275__i1 (.D(n67[1]), .CK(HSYNC_c), .CD(rst_n_N_1047), 
            .Q(Count_v[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275__i1.GSR = "DISABLED";
    FD1S3DX Count_reg_1275__i2 (.D(n67[2]), .CK(HSYNC_c), .CD(rst_n_N_1047), 
            .Q(Count_v[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275__i2.GSR = "DISABLED";
    FD1S3DX Count_reg_1275__i3 (.D(n67[3]), .CK(HSYNC_c), .CD(rst_n_N_1047), 
            .Q(Count_v[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275__i3.GSR = "DISABLED";
    FD1S3DX Count_reg_1275__i4 (.D(n67[4]), .CK(HSYNC_c), .CD(rst_n_N_1047), 
            .Q(Count_v[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275__i4.GSR = "DISABLED";
    FD1S3DX Count_reg_1275__i5 (.D(n67[5]), .CK(HSYNC_c), .CD(rst_n_N_1047), 
            .Q(Count_v[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275__i5.GSR = "DISABLED";
    FD1S3DX Count_reg_1275__i6 (.D(n67[6]), .CK(HSYNC_c), .CD(rst_n_N_1047), 
            .Q(Count_v[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275__i6.GSR = "DISABLED";
    FD1S3DX Count_reg_1275__i7 (.D(n67[7]), .CK(HSYNC_c), .CD(rst_n_N_1047), 
            .Q(Count_v[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275__i7.GSR = "DISABLED";
    FD1S3DX Count_reg_1275__i8 (.D(n67[8]), .CK(HSYNC_c), .CD(rst_n_N_1047), 
            .Q(Count_v[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275__i8.GSR = "DISABLED";
    FD1S3DX Count_reg_1275__i9 (.D(n67[9]), .CK(HSYNC_c), .CD(rst_n_N_1047), 
            .Q(Count_v[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275__i9.GSR = "DISABLED";
    FD1S3DX Count_reg_1275__i10 (.D(n67[10]), .CK(HSYNC_c), .CD(rst_n_N_1047), 
            .Q(Count_v[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275__i10.GSR = "DISABLED";
    FD1S3DX Count_reg_1275__i11 (.D(n67[11]), .CK(HSYNC_c), .CD(rst_n_N_1047), 
            .Q(Count_v[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1275__i11.GSR = "DISABLED";
    LUT4 i4239_2_lut (.A(n53[0]), .B(n1907), .Z(n67[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4239_2_lut.init = 16'h2222;
    LUT4 i4188_3_lut (.A(n1367), .B(n1907), .C(n8407), .Z(n2353)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(31[3] 34[6])
    defparam i4188_3_lut.init = 16'h3232;
    
endmodule
//
// Verilog Description of module VGA_Counter_U0
//

module VGA_Counter_U0 (HSYNC_c, clk_c, rst_n_N_1047, n4198, Count_h, 
            GND_net, H_count_max, n8410, n1364) /* synthesis syn_module_defined=1 */ ;
    output HSYNC_c;
    input clk_c;
    input rst_n_N_1047;
    output n4198;
    output [11:0]Count_h;
    input GND_net;
    input [11:0]H_count_max;
    input n8410;
    input n1364;
    
    wire HSYNC_c /* synthesis SET_AS_NETWORK=HSYNC_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(17[8:13])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire n2351;
    wire [11:0]n67;
    
    wire n7823;
    wire [11:0]n53;
    
    wire n7822, n7821, n7820, n7819, n7818, n7773, n1892, n7772, 
        n7771, n7770, n7769, n7768;
    
    FD1S3DX Sync_State_reg_13 (.D(n2351), .CK(clk_c), .CD(rst_n_N_1047), 
            .Q(HSYNC_c)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=14, LSE_RCOL=25, LSE_LLINE=60, LSE_RLINE=65 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(31[3] 34[6])
    defparam Sync_State_reg_13.GSR = "DISABLED";
    LUT4 i3180_1_lut (.A(HSYNC_c), .Z(n4198)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(31[3] 34[6])
    defparam i3180_1_lut.init = 16'h5555;
    FD1S3DX Count_reg_1274__i0 (.D(n67[0]), .CK(clk_c), .CD(rst_n_N_1047), 
            .Q(Count_h[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274__i0.GSR = "DISABLED";
    CCU2D Count_reg_1274_add_4_13 (.A0(Count_h[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7823), .S0(n53[11]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274_add_4_13.INIT0 = 16'hfaaa;
    defparam Count_reg_1274_add_4_13.INIT1 = 16'h0000;
    defparam Count_reg_1274_add_4_13.INJECT1_0 = "NO";
    defparam Count_reg_1274_add_4_13.INJECT1_1 = "NO";
    CCU2D Count_reg_1274_add_4_11 (.A0(Count_h[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7822), .COUT(n7823), .S0(n53[9]), .S1(n53[10]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274_add_4_11.INIT0 = 16'hfaaa;
    defparam Count_reg_1274_add_4_11.INIT1 = 16'hfaaa;
    defparam Count_reg_1274_add_4_11.INJECT1_0 = "NO";
    defparam Count_reg_1274_add_4_11.INJECT1_1 = "NO";
    CCU2D Count_reg_1274_add_4_9 (.A0(Count_h[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7821), .COUT(n7822), .S0(n53[7]), .S1(n53[8]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274_add_4_9.INIT0 = 16'hfaaa;
    defparam Count_reg_1274_add_4_9.INIT1 = 16'hfaaa;
    defparam Count_reg_1274_add_4_9.INJECT1_0 = "NO";
    defparam Count_reg_1274_add_4_9.INJECT1_1 = "NO";
    CCU2D Count_reg_1274_add_4_7 (.A0(Count_h[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7820), .COUT(n7821), .S0(n53[5]), .S1(n53[6]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274_add_4_7.INIT0 = 16'hfaaa;
    defparam Count_reg_1274_add_4_7.INIT1 = 16'hfaaa;
    defparam Count_reg_1274_add_4_7.INJECT1_0 = "NO";
    defparam Count_reg_1274_add_4_7.INJECT1_1 = "NO";
    CCU2D Count_reg_1274_add_4_5 (.A0(Count_h[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7819), .COUT(n7820), .S0(n53[3]), .S1(n53[4]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274_add_4_5.INIT0 = 16'hfaaa;
    defparam Count_reg_1274_add_4_5.INIT1 = 16'hfaaa;
    defparam Count_reg_1274_add_4_5.INJECT1_0 = "NO";
    defparam Count_reg_1274_add_4_5.INJECT1_1 = "NO";
    CCU2D Count_reg_1274_add_4_3 (.A0(Count_h[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7818), .COUT(n7819), .S0(n53[1]), .S1(n53[2]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274_add_4_3.INIT0 = 16'hfaaa;
    defparam Count_reg_1274_add_4_3.INIT1 = 16'hfaaa;
    defparam Count_reg_1274_add_4_3.INJECT1_0 = "NO";
    defparam Count_reg_1274_add_4_3.INJECT1_1 = "NO";
    CCU2D Count_reg_1274_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7818), .S1(n53[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274_add_4_1.INIT0 = 16'hF000;
    defparam Count_reg_1274_add_4_1.INIT1 = 16'h0555;
    defparam Count_reg_1274_add_4_1.INJECT1_0 = "NO";
    defparam Count_reg_1274_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_1041_add_2_13 (.A0(Count_h[11]), .B0(H_count_max[11]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7773), .S1(n1892));
    defparam sub_1041_add_2_13.INIT0 = 16'h5999;
    defparam sub_1041_add_2_13.INIT1 = 16'h0000;
    defparam sub_1041_add_2_13.INJECT1_0 = "NO";
    defparam sub_1041_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1041_add_2_11 (.A0(Count_h[9]), .B0(H_count_max[9]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[10]), .B1(H_count_max[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7772), .COUT(n7773));
    defparam sub_1041_add_2_11.INIT0 = 16'h5999;
    defparam sub_1041_add_2_11.INIT1 = 16'h5999;
    defparam sub_1041_add_2_11.INJECT1_0 = "NO";
    defparam sub_1041_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1041_add_2_9 (.A0(Count_h[7]), .B0(H_count_max[7]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[8]), .B1(H_count_max[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7771), .COUT(n7772));
    defparam sub_1041_add_2_9.INIT0 = 16'h5999;
    defparam sub_1041_add_2_9.INIT1 = 16'h5999;
    defparam sub_1041_add_2_9.INJECT1_0 = "NO";
    defparam sub_1041_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1041_add_2_7 (.A0(Count_h[5]), .B0(H_count_max[5]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[6]), .B1(H_count_max[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7770), .COUT(n7771));
    defparam sub_1041_add_2_7.INIT0 = 16'h5999;
    defparam sub_1041_add_2_7.INIT1 = 16'h5999;
    defparam sub_1041_add_2_7.INJECT1_0 = "NO";
    defparam sub_1041_add_2_7.INJECT1_1 = "NO";
    LUT4 i4393_2_lut (.A(n53[1]), .B(n1892), .Z(n67[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4393_2_lut.init = 16'h2222;
    CCU2D sub_1041_add_2_5 (.A0(Count_h[3]), .B0(H_count_max[3]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[4]), .B1(H_count_max[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7769), .COUT(n7770));
    defparam sub_1041_add_2_5.INIT0 = 16'h5999;
    defparam sub_1041_add_2_5.INIT1 = 16'h5999;
    defparam sub_1041_add_2_5.INJECT1_0 = "NO";
    defparam sub_1041_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1041_add_2_3 (.A0(Count_h[1]), .B0(H_count_max[1]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[2]), .B1(H_count_max[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7768), .COUT(n7769));
    defparam sub_1041_add_2_3.INIT0 = 16'h5999;
    defparam sub_1041_add_2_3.INIT1 = 16'h5999;
    defparam sub_1041_add_2_3.INJECT1_0 = "NO";
    defparam sub_1041_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1041_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[0]), .B1(H_count_max[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n7768));
    defparam sub_1041_add_2_1.INIT0 = 16'h0000;
    defparam sub_1041_add_2_1.INIT1 = 16'h5999;
    defparam sub_1041_add_2_1.INJECT1_0 = "NO";
    defparam sub_1041_add_2_1.INJECT1_1 = "NO";
    LUT4 i4394_2_lut (.A(n53[2]), .B(n1892), .Z(n67[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4394_2_lut.init = 16'h2222;
    LUT4 i4395_2_lut (.A(n53[3]), .B(n1892), .Z(n67[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4395_2_lut.init = 16'h2222;
    LUT4 i4396_2_lut (.A(n53[4]), .B(n1892), .Z(n67[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4396_2_lut.init = 16'h2222;
    FD1S3DX Count_reg_1274__i1 (.D(n67[1]), .CK(clk_c), .CD(rst_n_N_1047), 
            .Q(Count_h[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274__i1.GSR = "DISABLED";
    LUT4 i4397_2_lut (.A(n53[5]), .B(n1892), .Z(n67[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4397_2_lut.init = 16'h2222;
    LUT4 i4398_2_lut (.A(n53[6]), .B(n1892), .Z(n67[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4398_2_lut.init = 16'h2222;
    LUT4 i4399_2_lut (.A(n53[7]), .B(n1892), .Z(n67[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4399_2_lut.init = 16'h2222;
    LUT4 i4400_2_lut (.A(n53[8]), .B(n1892), .Z(n67[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4400_2_lut.init = 16'h2222;
    FD1S3DX Count_reg_1274__i2 (.D(n67[2]), .CK(clk_c), .CD(rst_n_N_1047), 
            .Q(Count_h[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274__i2.GSR = "DISABLED";
    FD1S3DX Count_reg_1274__i3 (.D(n67[3]), .CK(clk_c), .CD(rst_n_N_1047), 
            .Q(Count_h[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274__i3.GSR = "DISABLED";
    FD1S3DX Count_reg_1274__i4 (.D(n67[4]), .CK(clk_c), .CD(rst_n_N_1047), 
            .Q(Count_h[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274__i4.GSR = "DISABLED";
    FD1S3DX Count_reg_1274__i5 (.D(n67[5]), .CK(clk_c), .CD(rst_n_N_1047), 
            .Q(Count_h[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274__i5.GSR = "DISABLED";
    FD1S3DX Count_reg_1274__i6 (.D(n67[6]), .CK(clk_c), .CD(rst_n_N_1047), 
            .Q(Count_h[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274__i6.GSR = "DISABLED";
    FD1S3DX Count_reg_1274__i7 (.D(n67[7]), .CK(clk_c), .CD(rst_n_N_1047), 
            .Q(Count_h[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274__i7.GSR = "DISABLED";
    FD1S3DX Count_reg_1274__i8 (.D(n67[8]), .CK(clk_c), .CD(rst_n_N_1047), 
            .Q(Count_h[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274__i8.GSR = "DISABLED";
    FD1S3DX Count_reg_1274__i9 (.D(n67[9]), .CK(clk_c), .CD(rst_n_N_1047), 
            .Q(Count_h[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274__i9.GSR = "DISABLED";
    FD1S3DX Count_reg_1274__i10 (.D(n67[10]), .CK(clk_c), .CD(rst_n_N_1047), 
            .Q(Count_h[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274__i10.GSR = "DISABLED";
    FD1S3DX Count_reg_1274__i11 (.D(n67[11]), .CK(clk_c), .CD(rst_n_N_1047), 
            .Q(Count_h[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1274__i11.GSR = "DISABLED";
    LUT4 i4401_2_lut (.A(n53[9]), .B(n1892), .Z(n67[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4401_2_lut.init = 16'h2222;
    LUT4 i4402_2_lut (.A(n53[10]), .B(n1892), .Z(n67[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4402_2_lut.init = 16'h2222;
    LUT4 i4403_2_lut (.A(n53[11]), .B(n1892), .Z(n67[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4403_2_lut.init = 16'h2222;
    LUT4 i4240_2_lut (.A(n53[0]), .B(n1892), .Z(n67[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4240_2_lut.init = 16'h2222;
    LUT4 i4161_4_lut (.A(n8410), .B(n1892), .C(n1364), .D(Count_h[8]), 
         .Z(n2351)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/vga_counter.v(31[3] 34[6])
    defparam i4161_4_lut.init = 16'h3332;
    
endmodule
//
// Verilog Description of module Sync_Reg
//

module Sync_Reg (clk_c, \VGA_error_data_3__N_6[0] , VGA_error_data, clk_VGA, 
            VGA_error_empty, clk_LM, n9390, counter_31__N_85, counter_31__N_85_adj_3, 
            \VGA_error_data_3__N_6[3] , \VGA_error_data_3__N_6[1] , VGA_Notification_Valid, 
            button_signal_DEBUG_UART, Error_Valid, Config_Notification_Valid, 
            n8439, \VGA_error_data_3__N_13[2] ) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input \VGA_error_data_3__N_6[0] ;
    output [3:0]VGA_error_data;
    input clk_VGA;
    output VGA_error_empty;
    input clk_LM;
    input n9390;
    input counter_31__N_85;
    input counter_31__N_85_adj_3;
    input \VGA_error_data_3__N_6[3] ;
    input \VGA_error_data_3__N_6[1] ;
    input VGA_Notification_Valid;
    input button_signal_DEBUG_UART;
    input Error_Valid;
    input Config_Notification_Valid;
    input n8439;
    input \VGA_error_data_3__N_13[2] ;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(36[6:13])
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(39[6:12])
    wire [3:0]w_data_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(18[15:25])
    
    wire clk_c_enable_210, clk_c_enable_170, w_empty_reg, n9162, clk_LM_enable_4;
    
    FD1P3AX w_data_reg_i0_i0 (.D(\VGA_error_data_3__N_6[0] ), .SP(clk_c_enable_210), 
            .CK(clk_c), .Q(w_data_reg[0])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=130, LSE_RLINE=133 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i0 (.D(w_data_reg[0]), .SP(clk_c_enable_170), 
            .CK(clk_c), .Q(VGA_error_data[0])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=130, LSE_RLINE=133 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i0.GSR = "ENABLED";
    FD1S3AY w_empty_reg_21 (.D(n9162), .CK(clk_VGA), .Q(w_empty_reg)) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=130, LSE_RLINE=133 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_empty_reg_21.GSR = "ENABLED";
    FD1P3AY r_empty_reg_23 (.D(n9390), .SP(clk_LM_enable_4), .CK(clk_LM), 
            .Q(VGA_error_empty)) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=130, LSE_RLINE=133 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_empty_reg_23.GSR = "ENABLED";
    LUT4 i347_2_lut_3_lut_3_lut (.A(n9162), .B(counter_31__N_85), .C(clk_VGA), 
         .Z(clk_c_enable_210)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i347_2_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i7463_2_lut_rep_196 (.A(w_empty_reg), .B(n9162), .Z(clk_LM_enable_4)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i7463_2_lut_rep_196.init = 16'h4444;
    LUT4 i7506_2_lut_3_lut_4_lut (.A(w_empty_reg), .B(n9162), .C(counter_31__N_85_adj_3), 
         .D(clk_LM), .Z(clk_c_enable_170)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i7506_2_lut_3_lut_4_lut.init = 16'h0040;
    FD1P3AX r_data_reg_i0_i3 (.D(w_data_reg[3]), .SP(clk_c_enable_170), 
            .CK(clk_c), .Q(VGA_error_data[3])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=130, LSE_RLINE=133 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i2 (.D(w_data_reg[2]), .SP(clk_c_enable_170), 
            .CK(clk_c), .Q(VGA_error_data[2])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=130, LSE_RLINE=133 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i1 (.D(w_data_reg[1]), .SP(clk_c_enable_170), 
            .CK(clk_c), .Q(VGA_error_data[1])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=130, LSE_RLINE=133 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i3 (.D(\VGA_error_data_3__N_6[3] ), .SP(clk_c_enable_210), 
            .CK(clk_c), .Q(w_data_reg[3])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=130, LSE_RLINE=133 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i1 (.D(\VGA_error_data_3__N_6[1] ), .SP(clk_c_enable_210), 
            .CK(clk_c), .Q(w_data_reg[1])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=130, LSE_RLINE=133 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i1.GSR = "ENABLED";
    LUT4 i7460_4_lut_rep_209 (.A(VGA_Notification_Valid), .B(button_signal_DEBUG_UART), 
         .C(Error_Valid), .D(Config_Notification_Valid), .Z(n9162)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i7460_4_lut_rep_209.init = 16'hcccd;
    FD1P3IX w_data_reg_i0_i2 (.D(\VGA_error_data_3__N_13[2] ), .SP(clk_c_enable_210), 
            .CD(n8439), .CK(clk_c), .Q(w_data_reg[2])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=130, LSE_RLINE=133 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i2.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \Sync_Reg(SIZE=8) 
//

module \Sync_Reg(SIZE=8)  (UART_out_data, clk_c, clk_UART, UART_info_empty, 
            clk_LM, n9390, UART_out, \counter_23__N_178[10] , n1801, 
            counter_31__N_85, UART_valid_out, button_signal_DEBUG_UART) /* synthesis syn_module_defined=1 */ ;
    output [7:0]UART_out_data;
    input clk_c;
    input clk_UART;
    output UART_info_empty;
    input clk_LM;
    input n9390;
    input [7:0]UART_out;
    input \counter_23__N_178[10] ;
    input n1801;
    input counter_31__N_85;
    input UART_valid_out;
    input button_signal_DEBUG_UART;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(37[6:14])
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(39[6:12])
    
    wire clk_c_enable_186;
    wire [7:0]w_data_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(18[15:25])
    
    wire w_empty_reg, n9167, clk_LM_enable_1, clk_c_enable_206;
    
    FD1P3AX r_data_reg_i0_i0 (.D(w_data_reg[0]), .SP(clk_c_enable_186), 
            .CK(clk_c), .Q(UART_out_data[0])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=120, LSE_RLINE=123 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i0.GSR = "ENABLED";
    FD1S3AY w_empty_reg_21 (.D(n9167), .CK(clk_UART), .Q(w_empty_reg)) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=120, LSE_RLINE=123 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_empty_reg_21.GSR = "ENABLED";
    FD1P3AY r_empty_reg_23 (.D(n9390), .SP(clk_LM_enable_1), .CK(clk_LM), 
            .Q(UART_info_empty)) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=120, LSE_RLINE=123 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_empty_reg_23.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i0 (.D(UART_out[0]), .SP(clk_c_enable_206), .CK(clk_c), 
            .Q(w_data_reg[0])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=120, LSE_RLINE=123 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i0.GSR = "ENABLED";
    LUT4 i454_2_lut_3_lut_4_lut_4_lut (.A(n9167), .B(clk_UART), .C(\counter_23__N_178[10] ), 
         .D(n1801), .Z(clk_c_enable_206)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i454_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i7503_2_lut_3_lut_4_lut (.A(w_empty_reg), .B(n9167), .C(counter_31__N_85), 
         .D(clk_LM), .Z(clk_c_enable_186)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i7503_2_lut_3_lut_4_lut.init = 16'h0040;
    FD1P3AX r_data_reg_i0_i7 (.D(w_data_reg[7]), .SP(clk_c_enable_186), 
            .CK(clk_c), .Q(UART_out_data[7])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=120, LSE_RLINE=123 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i6 (.D(w_data_reg[6]), .SP(clk_c_enable_186), 
            .CK(clk_c), .Q(UART_out_data[6])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=120, LSE_RLINE=123 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i5 (.D(w_data_reg[5]), .SP(clk_c_enable_186), 
            .CK(clk_c), .Q(UART_out_data[5])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=120, LSE_RLINE=123 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i4 (.D(w_data_reg[4]), .SP(clk_c_enable_186), 
            .CK(clk_c), .Q(UART_out_data[4])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=120, LSE_RLINE=123 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i3 (.D(w_data_reg[3]), .SP(clk_c_enable_186), 
            .CK(clk_c), .Q(UART_out_data[3])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=120, LSE_RLINE=123 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i2 (.D(w_data_reg[2]), .SP(clk_c_enable_186), 
            .CK(clk_c), .Q(UART_out_data[2])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=120, LSE_RLINE=123 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i1 (.D(w_data_reg[1]), .SP(clk_c_enable_186), 
            .CK(clk_c), .Q(UART_out_data[1])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=120, LSE_RLINE=123 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i1 (.D(UART_out[1]), .SP(clk_c_enable_206), .CK(clk_c), 
            .Q(w_data_reg[1])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=120, LSE_RLINE=123 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i2 (.D(UART_out[2]), .SP(clk_c_enable_206), .CK(clk_c), 
            .Q(w_data_reg[2])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=120, LSE_RLINE=123 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i3 (.D(UART_out[3]), .SP(clk_c_enable_206), .CK(clk_c), 
            .Q(w_data_reg[3])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=120, LSE_RLINE=123 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i4 (.D(UART_out[4]), .SP(clk_c_enable_206), .CK(clk_c), 
            .Q(w_data_reg[4])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=120, LSE_RLINE=123 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i5 (.D(UART_out[5]), .SP(clk_c_enable_206), .CK(clk_c), 
            .Q(w_data_reg[5])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=120, LSE_RLINE=123 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i6 (.D(UART_out[6]), .SP(clk_c_enable_206), .CK(clk_c), 
            .Q(w_data_reg[6])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=120, LSE_RLINE=123 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i7 (.D(UART_out[7]), .SP(clk_c_enable_206), .CK(clk_c), 
            .Q(w_data_reg[7])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=120, LSE_RLINE=123 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i7.GSR = "ENABLED";
    LUT4 i7454_2_lut_rep_214 (.A(UART_valid_out), .B(button_signal_DEBUG_UART), 
         .Z(n9167)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i7454_2_lut_rep_214.init = 16'h7777;
    LUT4 i7449_2_lut_rep_192_3_lut (.A(UART_valid_out), .B(button_signal_DEBUG_UART), 
         .C(w_empty_reg), .Z(clk_LM_enable_1)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i7449_2_lut_rep_192_3_lut.init = 16'h0707;
    
endmodule
//
// Verilog Description of module LM
//

module LM (button_signal_DEBUG_UART, LEDS_c_0, LEDS_c_1, LEDS_c_2, LEDS_c_3, 
           LEDS_c_4, LEDS_c_5, LEDS_c_6, clk_c, clk_c_enable_81, n2268, 
           UART_out_data, \leds_UART_info[7] , n2262, UART_error_data, 
           n2266, VGA_error_data) /* synthesis syn_module_defined=1 */ ;
    input button_signal_DEBUG_UART;
    output LEDS_c_0;
    output LEDS_c_1;
    output LEDS_c_2;
    output LEDS_c_3;
    output LEDS_c_4;
    output LEDS_c_5;
    output LEDS_c_6;
    input clk_c;
    input clk_c_enable_81;
    input n2268;
    input [7:0]UART_out_data;
    output \leds_UART_info[7] ;
    input n2262;
    input [1:0]UART_error_data;
    input n2266;
    input [3:0]VGA_error_data;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [3:0]leds_CM_error;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm.v(34[28:41])
    wire [7:0]leds_UART_info;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm.v(32[28:42])
    wire [1:0]leds_UART_error;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm.v(33[28:43])
    
    LUT4 leds_UART_info_7__I_0_i1_3_lut (.A(leds_CM_error[0]), .B(leds_UART_info[0]), 
         .C(button_signal_DEBUG_UART), .Z(LEDS_c_0)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm.v(48[15:127])
    defparam leds_UART_info_7__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 leds_UART_info_7__I_0_i2_3_lut (.A(leds_CM_error[1]), .B(leds_UART_info[1]), 
         .C(button_signal_DEBUG_UART), .Z(LEDS_c_1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm.v(48[15:127])
    defparam leds_UART_info_7__I_0_i2_3_lut.init = 16'hcaca;
    LUT4 leds_UART_info_7__I_0_i3_3_lut (.A(leds_CM_error[2]), .B(leds_UART_info[2]), 
         .C(button_signal_DEBUG_UART), .Z(LEDS_c_2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm.v(48[15:127])
    defparam leds_UART_info_7__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 leds_UART_info_7__I_0_i4_3_lut (.A(leds_CM_error[3]), .B(leds_UART_info[3]), 
         .C(button_signal_DEBUG_UART), .Z(LEDS_c_3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm.v(48[15:127])
    defparam leds_UART_info_7__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 leds_UART_info_7__I_0_i5_3_lut (.A(leds_UART_error[0]), .B(leds_UART_info[4]), 
         .C(button_signal_DEBUG_UART), .Z(LEDS_c_4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm.v(48[15:127])
    defparam leds_UART_info_7__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 leds_UART_info_7__I_0_i6_3_lut (.A(leds_UART_error[1]), .B(leds_UART_info[5]), 
         .C(button_signal_DEBUG_UART), .Z(LEDS_c_5)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm.v(48[15:127])
    defparam leds_UART_info_7__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 i1446_2_lut (.A(button_signal_DEBUG_UART), .B(leds_UART_info[6]), 
         .Z(LEDS_c_6)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1446_2_lut.init = 16'hdddd;
    \LM_decoder(WIDTH=8)  UART_info (.leds_UART_info({\leds_UART_info[7] , 
            leds_UART_info[6:0]}), .clk_c(clk_c), .clk_c_enable_81(clk_c_enable_81), 
            .n2268(n2268), .UART_out_data({UART_out_data})) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm.v(36[39] 38[25])
    \LM_decoder(WIDTH=2)  UART_error (.leds_UART_error({leds_UART_error}), 
            .clk_c(clk_c), .clk_c_enable_81(clk_c_enable_81), .n2262(n2262), 
            .UART_error_data({UART_error_data})) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm.v(40[40] 42[26])
    \LM_decoder(WIDTH=4)  CM_error (.leds_CM_error({leds_CM_error}), .clk_c(clk_c), 
            .clk_c_enable_81(clk_c_enable_81), .n2266(n2266), .VGA_error_data({VGA_error_data})) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm.v(44[39] 46[24])
    
endmodule
//
// Verilog Description of module \LM_decoder(WIDTH=8) 
//

module \LM_decoder(WIDTH=8)  (leds_UART_info, clk_c, clk_c_enable_81, 
            n2268, UART_out_data) /* synthesis syn_module_defined=1 */ ;
    output [7:0]leds_UART_info;
    input clk_c;
    input clk_c_enable_81;
    input n2268;
    input [7:0]UART_out_data;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    
    FD1P3IX leds_reg__i0 (.D(UART_out_data[0]), .SP(clk_c_enable_81), .CD(n2268), 
            .CK(clk_c), .Q(leds_UART_info[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=39, LSE_RCOL=25, LSE_LLINE=36, LSE_RLINE=38 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i0.GSR = "ENABLED";
    FD1P3IX leds_reg__i7 (.D(UART_out_data[7]), .SP(clk_c_enable_81), .CD(n2268), 
            .CK(clk_c), .Q(leds_UART_info[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=39, LSE_RCOL=25, LSE_LLINE=36, LSE_RLINE=38 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i7.GSR = "ENABLED";
    FD1P3IX leds_reg__i6 (.D(UART_out_data[6]), .SP(clk_c_enable_81), .CD(n2268), 
            .CK(clk_c), .Q(leds_UART_info[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=39, LSE_RCOL=25, LSE_LLINE=36, LSE_RLINE=38 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i6.GSR = "ENABLED";
    FD1P3IX leds_reg__i5 (.D(UART_out_data[5]), .SP(clk_c_enable_81), .CD(n2268), 
            .CK(clk_c), .Q(leds_UART_info[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=39, LSE_RCOL=25, LSE_LLINE=36, LSE_RLINE=38 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i5.GSR = "ENABLED";
    FD1P3IX leds_reg__i4 (.D(UART_out_data[4]), .SP(clk_c_enable_81), .CD(n2268), 
            .CK(clk_c), .Q(leds_UART_info[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=39, LSE_RCOL=25, LSE_LLINE=36, LSE_RLINE=38 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i4.GSR = "ENABLED";
    FD1P3IX leds_reg__i3 (.D(UART_out_data[3]), .SP(clk_c_enable_81), .CD(n2268), 
            .CK(clk_c), .Q(leds_UART_info[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=39, LSE_RCOL=25, LSE_LLINE=36, LSE_RLINE=38 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i3.GSR = "ENABLED";
    FD1P3IX leds_reg__i2 (.D(UART_out_data[2]), .SP(clk_c_enable_81), .CD(n2268), 
            .CK(clk_c), .Q(leds_UART_info[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=39, LSE_RCOL=25, LSE_LLINE=36, LSE_RLINE=38 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i2.GSR = "ENABLED";
    FD1P3IX leds_reg__i1 (.D(UART_out_data[1]), .SP(clk_c_enable_81), .CD(n2268), 
            .CK(clk_c), .Q(leds_UART_info[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=39, LSE_RCOL=25, LSE_LLINE=36, LSE_RLINE=38 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \LM_decoder(WIDTH=2) 
//

module \LM_decoder(WIDTH=2)  (leds_UART_error, clk_c, clk_c_enable_81, 
            n2262, UART_error_data) /* synthesis syn_module_defined=1 */ ;
    output [1:0]leds_UART_error;
    input clk_c;
    input clk_c_enable_81;
    input n2262;
    input [1:0]UART_error_data;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    
    FD1P3IX leds_reg__i0 (.D(UART_error_data[0]), .SP(clk_c_enable_81), 
            .CD(n2262), .CK(clk_c), .Q(leds_UART_error[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=40, LSE_RCOL=26, LSE_LLINE=40, LSE_RLINE=42 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i0.GSR = "ENABLED";
    FD1P3IX leds_reg__i1 (.D(UART_error_data[1]), .SP(clk_c_enable_81), 
            .CD(n2262), .CK(clk_c), .Q(leds_UART_error[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=40, LSE_RCOL=26, LSE_LLINE=40, LSE_RLINE=42 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \LM_decoder(WIDTH=4) 
//

module \LM_decoder(WIDTH=4)  (leds_CM_error, clk_c, clk_c_enable_81, n2266, 
            VGA_error_data) /* synthesis syn_module_defined=1 */ ;
    output [3:0]leds_CM_error;
    input clk_c;
    input clk_c_enable_81;
    input n2266;
    input [3:0]VGA_error_data;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    
    FD1P3IX leds_reg__i0 (.D(VGA_error_data[0]), .SP(clk_c_enable_81), .CD(n2266), 
            .CK(clk_c), .Q(leds_CM_error[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=39, LSE_RCOL=24, LSE_LLINE=44, LSE_RLINE=46 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i0.GSR = "ENABLED";
    FD1P3IX leds_reg__i3 (.D(VGA_error_data[3]), .SP(clk_c_enable_81), .CD(n2266), 
            .CK(clk_c), .Q(leds_CM_error[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=39, LSE_RCOL=24, LSE_LLINE=44, LSE_RLINE=46 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i3.GSR = "ENABLED";
    FD1P3IX leds_reg__i2 (.D(VGA_error_data[2]), .SP(clk_c_enable_81), .CD(n2266), 
            .CK(clk_c), .Q(leds_CM_error[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=39, LSE_RCOL=24, LSE_LLINE=44, LSE_RLINE=46 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i2.GSR = "ENABLED";
    FD1P3IX leds_reg__i1 (.D(VGA_error_data[1]), .SP(clk_c_enable_81), .CD(n2266), 
            .CK(clk_c), .Q(leds_CM_error[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=39, LSE_RCOL=24, LSE_LLINE=44, LSE_RLINE=46 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module CM
//

module CM (clk_c, VSYNC_c, GND_net, n4196, HSYNC_c, n4198, UART_out_CM_data, 
           c_addr, c_addr_3__N_470, UART_out_CM_data_empty, \c_data[1] , 
           \c_data[0] , \Config_Notification[0] , c_valid, Config_Notification_Valid, 
           Error_Valid, \c_data[2] , \Config_Error[1] , \Config_Error[2] , 
           \Config_Notification[3] , n9391, \Config_Notification[1] , 
           rst_n_c, \c_ready[1] , rst_n_N_350, c_VGA_ready, rst_n_N_52, 
           c_UART_ready, rst_n_N_144, \leds_UART_info[7] , button_signal_DEBUG_UART, 
           LEDS_c_7, \Config_Error[0] , Load_config, rst_n_N_1047, \VGA_Notification[0] , 
           Data_VGA, c_ready_Assign, button_signal_DEBUG_VGA, c_ready_nxt_N_906, 
           n9125, n9124, button_signal_HS, button_signal_VS, n9148, 
           n8448, Current_Qudran_Config_nxt_1__N_886, VGA_Notification_Valid, 
           clk_c_enable_93, H_Left_Margin_nxt_8__N_959, n9183, \V_FrontPorch_nxt_9__N_804[3] , 
           \VGA_Notification[3] , \VGA_Notification[1] , c_valid_N_785, 
           n9153, \H_count_max[8] , H_Count_Max_nxt_11__N_1022, \V_count_max[3] , 
           V_Count_Max_nxt_11__N_1040) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input VSYNC_c;
    input GND_net;
    input n4196;
    input HSYNC_c;
    input n4198;
    input [7:0]UART_out_CM_data;
    output [3:0]c_addr;
    input c_addr_3__N_470;
    input UART_out_CM_data_empty;
    output \c_data[1] ;
    output \c_data[0] ;
    output \Config_Notification[0] ;
    output c_valid;
    output Config_Notification_Valid;
    output Error_Valid;
    output \c_data[2] ;
    output \Config_Error[1] ;
    output \Config_Error[2] ;
    output \Config_Notification[3] ;
    input n9391;
    output \Config_Notification[1] ;
    input rst_n_c;
    input \c_ready[1] ;
    output rst_n_N_350;
    input c_VGA_ready;
    output rst_n_N_52;
    input c_UART_ready;
    output rst_n_N_144;
    input \leds_UART_info[7] ;
    input button_signal_DEBUG_UART;
    output LEDS_c_7;
    output \Config_Error[0] ;
    input Load_config;
    output rst_n_N_1047;
    output \VGA_Notification[0] ;
    output [11:0]Data_VGA;
    output c_ready_Assign;
    input button_signal_DEBUG_VGA;
    input c_ready_nxt_N_906;
    input n9125;
    input n9124;
    input button_signal_HS;
    input button_signal_VS;
    input n9148;
    input n8448;
    output Current_Qudran_Config_nxt_1__N_886;
    output VGA_Notification_Valid;
    input clk_c_enable_93;
    input H_Left_Margin_nxt_8__N_959;
    input n9183;
    output \V_FrontPorch_nxt_9__N_804[3] ;
    output \VGA_Notification[3] ;
    output \VGA_Notification[1] ;
    output c_valid_N_785;
    input n9153;
    input \H_count_max[8] ;
    output H_Count_Max_nxt_11__N_1022;
    input \V_count_max[3] ;
    output V_Count_Max_nxt_11__N_1040;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire HSYNC_c /* synthesis SET_AS_NETWORK=HSYNC_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(17[8:13])
    
    wire Counter_Y_Valid;
    wire [9:0]Counter_Y;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm.v(34[27:36])
    wire [7:0]H_BackPorch;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm.v(27[30:41])
    wire [7:0]V_BackPorch;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm.v(29[30:41])
    
    wire Counter_X_Valid;
    wire [9:0]Counter_X;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm.v(32[28:37])
    wire [13:0]c_data_adj_1125;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm.v(15[28:34])
    wire [13:0]c_data;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(44[12:18])
    
    CM_Counter counterV (.Counter_Y_Valid(Counter_Y_Valid), .clk_c(clk_c), 
            .VSYNC_c(VSYNC_c), .GND_net(GND_net), .Counter_Y({Counter_Y}), 
            .\H_BackPorch[5] (H_BackPorch[5]), .\H_BackPorch[4] (H_BackPorch[4]), 
            .\H_BackPorch[3] (H_BackPorch[3]), .\H_BackPorch[7] (H_BackPorch[7]), 
            .\V_BackPorch[1] (V_BackPorch[1]), .n4196(n4196)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm.v(81[13] 87[27])
    CM_Counter_U4 counterH (.Counter_X_Valid(Counter_X_Valid), .clk_c(clk_c), 
            .HSYNC_c(HSYNC_c), .\H_BackPorch[4] (H_BackPorch[4]), .GND_net(GND_net), 
            .\H_BackPorch[3] (H_BackPorch[3]), .\H_BackPorch[7] (H_BackPorch[7]), 
            .Counter_X({Counter_X}), .n4198(n4198), .\H_BackPorch[6] (H_BackPorch[6]), 
            .\H_BackPorch[5] (H_BackPorch[5])) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm.v(73[13] 79[27])
    CM_Config_Manager configCM (.clk_c(clk_c), .UART_out_CM_data({UART_out_CM_data}), 
            .c_addr({c_addr}), .c_addr_3__N_470(c_addr_3__N_470), .UART_out_CM_data_empty(UART_out_CM_data_empty), 
            .\c_data[1] (\c_data[1] ), .\c_data[0] (\c_data[0] ), .\Config_Notification[0] (\Config_Notification[0] ), 
            .c_valid(c_valid), .Config_Notification_Valid(Config_Notification_Valid), 
            .Error_Valid(Error_Valid), .\c_data[2] (\c_data[2] ), .\Config_Error[1] (\Config_Error[1] ), 
            .\Config_Error[2] (\Config_Error[2] ), .\Config_Notification[3] (\Config_Notification[3] ), 
            .n9391(n9391), .\Config_Notification[1] (\Config_Notification[1] ), 
            .\c_data[13] (c_data_adj_1125[13]), .\c_data[12] (c_data_adj_1125[12]), 
            .\c_data[11] (c_data_adj_1125[11]), .\c_data[10] (c_data_adj_1125[10]), 
            .\c_data[9] (c_data_adj_1125[9]), .\c_data[8] (c_data_adj_1125[8]), 
            .\c_data[7] (c_data[7]), .\c_data[6] (c_data[6]), .\c_data[5] (c_data[5]), 
            .\c_data[4] (c_data[4]), .\c_data[3] (c_data[3]), .rst_n_c(rst_n_c), 
            .\c_ready[1] (\c_ready[1] ), .rst_n_N_350(rst_n_N_350), .c_VGA_ready(c_VGA_ready), 
            .rst_n_N_52(rst_n_N_52), .c_UART_ready(c_UART_ready), .rst_n_N_144(rst_n_N_144), 
            .\leds_UART_info[7] (\leds_UART_info[7] ), .button_signal_DEBUG_UART(button_signal_DEBUG_UART), 
            .LEDS_c_7(LEDS_c_7), .\Config_Error[0] (\Config_Error[0] ), 
            .Load_config(Load_config), .rst_n_N_1047(rst_n_N_1047)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm.v(37[20] 49[34])
    CM_Assign_Data assignCM (.\VGA_Notification[0] (\VGA_Notification[0] ), 
            .clk_c(clk_c), .Data_VGA({Data_VGA}), .\c_data[0] (\c_data[0] ), 
            .c_ready_Assign(c_ready_Assign), .button_signal_DEBUG_VGA(button_signal_DEBUG_VGA), 
            .c_ready_nxt_N_906(c_ready_nxt_N_906), .n9125(n9125), .\c_data[13] (c_data_adj_1125[13]), 
            .\c_data[12] (c_data_adj_1125[12]), .Counter_X_Valid(Counter_X_Valid), 
            .Counter_Y_Valid(Counter_Y_Valid), .n9124(n9124), .button_signal_HS(button_signal_HS), 
            .button_signal_VS(button_signal_VS), .\c_data[1] (\c_data[1] ), 
            .n9148(n9148), .n8448(n8448), .Current_Qudran_Config_nxt_1__N_886(Current_Qudran_Config_nxt_1__N_886), 
            .VGA_Notification_Valid(VGA_Notification_Valid), .\V_BackPorch[1] (V_BackPorch[1]), 
            .clk_c_enable_93(clk_c_enable_93), .H_Left_Margin_nxt_8__N_959(H_Left_Margin_nxt_8__N_959), 
            .\H_BackPorch[7] (H_BackPorch[7]), .\H_BackPorch[6] (H_BackPorch[6]), 
            .n9183(n9183), .\H_BackPorch[5] (H_BackPorch[5]), .\H_BackPorch[4] (H_BackPorch[4]), 
            .\H_BackPorch[3] (H_BackPorch[3]), .\V_FrontPorch_nxt_9__N_804[3] (\V_FrontPorch_nxt_9__N_804[3] ), 
            .\c_data[11] (c_data_adj_1125[11]), .\c_data[10] (c_data_adj_1125[10]), 
            .\c_data[9] (c_data_adj_1125[9]), .\c_data[8] (c_data_adj_1125[8]), 
            .\c_data[7] (c_data[7]), .\c_data[6] (c_data[6]), .\c_data[5] (c_data[5]), 
            .\c_data[4] (c_data[4]), .\c_data[3] (c_data[3]), .\c_data[2] (\c_data[2] ), 
            .\VGA_Notification[3] (\VGA_Notification[3] ), .n9391(n9391), 
            .\VGA_Notification[1] (\VGA_Notification[1] ), .GND_net(GND_net), 
            .Counter_X({Counter_X}), .c_valid(c_valid), .c_valid_N_785(c_valid_N_785), 
            .Counter_Y({Counter_Y}), .n9153(n9153), .\H_count_max[8] (\H_count_max[8] ), 
            .H_Count_Max_nxt_11__N_1022(H_Count_Max_nxt_11__N_1022), .\V_count_max[3] (\V_count_max[3] ), 
            .V_Count_Max_nxt_11__N_1040(V_Count_Max_nxt_11__N_1040)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm.v(51[17] 70[35])
    
endmodule
//
// Verilog Description of module CM_Counter
//

module CM_Counter (Counter_Y_Valid, clk_c, VSYNC_c, GND_net, Counter_Y, 
            \H_BackPorch[5] , \H_BackPorch[4] , \H_BackPorch[3] , \H_BackPorch[7] , 
            \V_BackPorch[1] , n4196) /* synthesis syn_module_defined=1 */ ;
    output Counter_Y_Valid;
    input clk_c;
    input VSYNC_c;
    input GND_net;
    output [9:0]Counter_Y;
    input \H_BackPorch[5] ;
    input \H_BackPorch[4] ;
    input \H_BackPorch[3] ;
    input \H_BackPorch[7] ;
    input \V_BackPorch[1] ;
    input n4196;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire n9120, n7833;
    wire [9:0]Count_intern_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(15[32:48])
    wire [9:0]n45;
    
    wire n7832, n7831, n7830, n7829, n7828;
    wire [9:0]n45_adj_1124;
    
    wire n7827, n7826, n7825, n7824, n7811, n1864, n7810, n7809, 
        n7808, n7807, n7806, n1877, n7805, n7804, n7803, n7802, 
        n4195;
    
    FD1P3AX Counter_Valid_reg_19 (.D(n9120), .SP(VSYNC_c), .CK(clk_c), 
            .Q(Counter_Y_Valid)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=13, LSE_RCOL=27, LSE_LLINE=81, LSE_RLINE=87 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(26[8] 31[6])
    defparam Counter_Valid_reg_19.GSR = "ENABLED";
    CCU2D Count_intern_reg_1271_add_4_11 (.A0(Count_intern_reg[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7833), .S0(n45[9]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1271_add_4_11.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1271_add_4_11.INIT1 = 16'h0000;
    defparam Count_intern_reg_1271_add_4_11.INJECT1_0 = "NO";
    defparam Count_intern_reg_1271_add_4_11.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1271_add_4_9 (.A0(Count_intern_reg[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7832), .COUT(n7833), .S0(n45[7]), 
          .S1(n45[8]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1271_add_4_9.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1271_add_4_9.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_1271_add_4_9.INJECT1_0 = "NO";
    defparam Count_intern_reg_1271_add_4_9.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1271_add_4_7 (.A0(Count_intern_reg[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7831), .COUT(n7832), .S0(n45[5]), 
          .S1(n45[6]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1271_add_4_7.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1271_add_4_7.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_1271_add_4_7.INJECT1_0 = "NO";
    defparam Count_intern_reg_1271_add_4_7.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1271_add_4_5 (.A0(Count_intern_reg[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7830), .COUT(n7831), .S0(n45[3]), 
          .S1(n45[4]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1271_add_4_5.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1271_add_4_5.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_1271_add_4_5.INJECT1_0 = "NO";
    defparam Count_intern_reg_1271_add_4_5.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1271_add_4_3 (.A0(Count_intern_reg[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7829), .COUT(n7830), .S0(n45[1]), 
          .S1(n45[2]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1271_add_4_3.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1271_add_4_3.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_1271_add_4_3.INJECT1_0 = "NO";
    defparam Count_intern_reg_1271_add_4_3.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1271_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7829), .S1(n45[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1271_add_4_1.INIT0 = 16'hF000;
    defparam Count_intern_reg_1271_add_4_1.INIT1 = 16'h0555;
    defparam Count_intern_reg_1271_add_4_1.INJECT1_0 = "NO";
    defparam Count_intern_reg_1271_add_4_1.INJECT1_1 = "NO";
    CCU2D Count_reg_1273_add_4_11 (.A0(Counter_Y[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7828), .S0(n45_adj_1124[9]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1273_add_4_11.INIT0 = 16'hfaaa;
    defparam Count_reg_1273_add_4_11.INIT1 = 16'h0000;
    defparam Count_reg_1273_add_4_11.INJECT1_0 = "NO";
    defparam Count_reg_1273_add_4_11.INJECT1_1 = "NO";
    CCU2D Count_reg_1273_add_4_9 (.A0(Counter_Y[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7827), .COUT(n7828), .S0(n45_adj_1124[7]), 
          .S1(n45_adj_1124[8]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1273_add_4_9.INIT0 = 16'hfaaa;
    defparam Count_reg_1273_add_4_9.INIT1 = 16'hfaaa;
    defparam Count_reg_1273_add_4_9.INJECT1_0 = "NO";
    defparam Count_reg_1273_add_4_9.INJECT1_1 = "NO";
    CCU2D Count_reg_1273_add_4_7 (.A0(Counter_Y[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7826), .COUT(n7827), .S0(n45_adj_1124[5]), 
          .S1(n45_adj_1124[6]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1273_add_4_7.INIT0 = 16'hfaaa;
    defparam Count_reg_1273_add_4_7.INIT1 = 16'hfaaa;
    defparam Count_reg_1273_add_4_7.INJECT1_0 = "NO";
    defparam Count_reg_1273_add_4_7.INJECT1_1 = "NO";
    CCU2D Count_reg_1273_add_4_5 (.A0(Counter_Y[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7825), .COUT(n7826), .S0(n45_adj_1124[3]), 
          .S1(n45_adj_1124[4]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1273_add_4_5.INIT0 = 16'hfaaa;
    defparam Count_reg_1273_add_4_5.INIT1 = 16'hfaaa;
    defparam Count_reg_1273_add_4_5.INJECT1_0 = "NO";
    defparam Count_reg_1273_add_4_5.INJECT1_1 = "NO";
    CCU2D Count_reg_1273_add_4_3 (.A0(Counter_Y[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7824), .COUT(n7825), .S0(n45_adj_1124[1]), 
          .S1(n45_adj_1124[2]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1273_add_4_3.INIT0 = 16'hfaaa;
    defparam Count_reg_1273_add_4_3.INIT1 = 16'hfaaa;
    defparam Count_reg_1273_add_4_3.INJECT1_0 = "NO";
    defparam Count_reg_1273_add_4_3.INJECT1_1 = "NO";
    CCU2D Count_reg_1273_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7824), .S1(n45_adj_1124[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1273_add_4_1.INIT0 = 16'hF000;
    defparam Count_reg_1273_add_4_1.INIT1 = 16'h0555;
    defparam Count_reg_1273_add_4_1.INJECT1_0 = "NO";
    defparam Count_reg_1273_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_1037_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7811), .S0(n1864));
    defparam sub_1037_add_2_cout.INIT0 = 16'h0000;
    defparam sub_1037_add_2_cout.INIT1 = 16'h0000;
    defparam sub_1037_add_2_cout.INJECT1_0 = "NO";
    defparam sub_1037_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_1037_add_2_10 (.A0(Count_intern_reg[8]), .B0(\H_BackPorch[5] ), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[9]), .B1(\H_BackPorch[4] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n7810), .COUT(n7811));
    defparam sub_1037_add_2_10.INIT0 = 16'h5999;
    defparam sub_1037_add_2_10.INIT1 = 16'h5999;
    defparam sub_1037_add_2_10.INJECT1_0 = "NO";
    defparam sub_1037_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_1037_add_2_8 (.A0(Count_intern_reg[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[7]), .B1(\H_BackPorch[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n7809), .COUT(n7810));
    defparam sub_1037_add_2_8.INIT0 = 16'h5aaa;
    defparam sub_1037_add_2_8.INIT1 = 16'h5999;
    defparam sub_1037_add_2_8.INJECT1_0 = "NO";
    defparam sub_1037_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_1037_add_2_6 (.A0(Count_intern_reg[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[5]), .B1(\H_BackPorch[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n7808), .COUT(n7809));
    defparam sub_1037_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_1037_add_2_6.INIT1 = 16'h5999;
    defparam sub_1037_add_2_6.INJECT1_0 = "NO";
    defparam sub_1037_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_1037_add_2_4 (.A0(Count_intern_reg[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[3]), .B1(\H_BackPorch[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n7807), .COUT(n7808));
    defparam sub_1037_add_2_4.INIT0 = 16'h5aaa;
    defparam sub_1037_add_2_4.INIT1 = 16'h5999;
    defparam sub_1037_add_2_4.INJECT1_0 = "NO";
    defparam sub_1037_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_1037_add_2_2 (.A0(Count_intern_reg[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7807));
    defparam sub_1037_add_2_2.INIT0 = 16'h5000;
    defparam sub_1037_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_1037_add_2_2.INJECT1_0 = "NO";
    defparam sub_1037_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_1039_add_2_11 (.A0(Count_intern_reg[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7806), .S1(n1877));
    defparam sub_1039_add_2_11.INIT0 = 16'hf555;
    defparam sub_1039_add_2_11.INIT1 = 16'h0000;
    defparam sub_1039_add_2_11.INJECT1_0 = "NO";
    defparam sub_1039_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1039_add_2_9 (.A0(Count_intern_reg[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7805), .COUT(n7806));
    defparam sub_1039_add_2_9.INIT0 = 16'hf555;
    defparam sub_1039_add_2_9.INIT1 = 16'hf555;
    defparam sub_1039_add_2_9.INJECT1_0 = "NO";
    defparam sub_1039_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1039_add_2_7 (.A0(Count_intern_reg[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7804), .COUT(n7805));
    defparam sub_1039_add_2_7.INIT0 = 16'hf555;
    defparam sub_1039_add_2_7.INIT1 = 16'hf555;
    defparam sub_1039_add_2_7.INJECT1_0 = "NO";
    defparam sub_1039_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1039_add_2_5 (.A0(\H_BackPorch[3] ), .B0(Count_intern_reg[3]), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7803), .COUT(n7804));
    defparam sub_1039_add_2_5.INIT0 = 16'h5999;
    defparam sub_1039_add_2_5.INIT1 = 16'h0aaa;
    defparam sub_1039_add_2_5.INJECT1_0 = "NO";
    defparam sub_1039_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1039_add_2_3 (.A0(\V_BackPorch[1] ), .B0(Count_intern_reg[1]), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7802), .COUT(n7803));
    defparam sub_1039_add_2_3.INIT0 = 16'h5999;
    defparam sub_1039_add_2_3.INIT1 = 16'h0aaa;
    defparam sub_1039_add_2_3.INJECT1_0 = "NO";
    defparam sub_1039_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1039_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7802));
    defparam sub_1039_add_2_1.INIT0 = 16'hF000;
    defparam sub_1039_add_2_1.INIT1 = 16'h0aaa;
    defparam sub_1039_add_2_1.INJECT1_0 = "NO";
    defparam sub_1039_add_2_1.INJECT1_1 = "NO";
    FD1S3IX Count_intern_reg_1271__i0 (.D(n45[0]), .CK(clk_c), .CD(n4196), 
            .Q(Count_intern_reg[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1271__i0.GSR = "ENABLED";
    FD1S3IX Count_reg_1273__i0 (.D(n45_adj_1124[0]), .CK(clk_c), .CD(n4195), 
            .Q(Counter_Y[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1273__i0.GSR = "ENABLED";
    FD1S3IX Count_reg_1273__i1 (.D(n45_adj_1124[1]), .CK(clk_c), .CD(n4195), 
            .Q(Counter_Y[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1273__i1.GSR = "ENABLED";
    FD1S3IX Count_reg_1273__i2 (.D(n45_adj_1124[2]), .CK(clk_c), .CD(n4195), 
            .Q(Counter_Y[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1273__i2.GSR = "ENABLED";
    FD1S3IX Count_reg_1273__i3 (.D(n45_adj_1124[3]), .CK(clk_c), .CD(n4195), 
            .Q(Counter_Y[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1273__i3.GSR = "ENABLED";
    FD1S3IX Count_reg_1273__i4 (.D(n45_adj_1124[4]), .CK(clk_c), .CD(n4195), 
            .Q(Counter_Y[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1273__i4.GSR = "ENABLED";
    FD1S3IX Count_reg_1273__i5 (.D(n45_adj_1124[5]), .CK(clk_c), .CD(n4195), 
            .Q(Counter_Y[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1273__i5.GSR = "ENABLED";
    FD1S3IX Count_reg_1273__i6 (.D(n45_adj_1124[6]), .CK(clk_c), .CD(n4195), 
            .Q(Counter_Y[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1273__i6.GSR = "ENABLED";
    FD1S3IX Count_reg_1273__i7 (.D(n45_adj_1124[7]), .CK(clk_c), .CD(n4195), 
            .Q(Counter_Y[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1273__i7.GSR = "ENABLED";
    FD1S3IX Count_reg_1273__i8 (.D(n45_adj_1124[8]), .CK(clk_c), .CD(n4195), 
            .Q(Counter_Y[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1273__i8.GSR = "ENABLED";
    FD1S3IX Count_reg_1273__i9 (.D(n45_adj_1124[9]), .CK(clk_c), .CD(n4195), 
            .Q(Counter_Y[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1273__i9.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1271__i1 (.D(n45[1]), .CK(clk_c), .CD(n4196), 
            .Q(Count_intern_reg[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1271__i1.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1271__i2 (.D(n45[2]), .CK(clk_c), .CD(n4196), 
            .Q(Count_intern_reg[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1271__i2.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1271__i3 (.D(n45[3]), .CK(clk_c), .CD(n4196), 
            .Q(Count_intern_reg[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1271__i3.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1271__i4 (.D(n45[4]), .CK(clk_c), .CD(n4196), 
            .Q(Count_intern_reg[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1271__i4.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1271__i5 (.D(n45[5]), .CK(clk_c), .CD(n4196), 
            .Q(Count_intern_reg[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1271__i5.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1271__i6 (.D(n45[6]), .CK(clk_c), .CD(n4196), 
            .Q(Count_intern_reg[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1271__i6.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1271__i7 (.D(n45[7]), .CK(clk_c), .CD(n4196), 
            .Q(Count_intern_reg[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1271__i7.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1271__i8 (.D(n45[8]), .CK(clk_c), .CD(n4196), 
            .Q(Count_intern_reg[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1271__i8.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1271__i9 (.D(n45[9]), .CK(clk_c), .CD(n4196), 
            .Q(Count_intern_reg[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1271__i9.GSR = "ENABLED";
    LUT4 i7475_2_lut_rep_167_2_lut (.A(n1877), .B(n1864), .Z(n9120)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i7475_2_lut_rep_167_2_lut.init = 16'h1111;
    LUT4 i7524_2_lut_3_lut_3_lut (.A(n1877), .B(VSYNC_c), .C(n1864), .Z(n4195)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i7524_2_lut_3_lut_3_lut.init = 16'hfbfb;
    
endmodule
//
// Verilog Description of module CM_Counter_U4
//

module CM_Counter_U4 (Counter_X_Valid, clk_c, HSYNC_c, \H_BackPorch[4] , 
            GND_net, \H_BackPorch[3] , \H_BackPorch[7] , Counter_X, 
            n4198, \H_BackPorch[6] , \H_BackPorch[5] ) /* synthesis syn_module_defined=1 */ ;
    output Counter_X_Valid;
    input clk_c;
    input HSYNC_c;
    input \H_BackPorch[4] ;
    input GND_net;
    input \H_BackPorch[3] ;
    input \H_BackPorch[7] ;
    output [9:0]Counter_X;
    input n4198;
    input \H_BackPorch[6] ;
    input \H_BackPorch[5] ;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire HSYNC_c /* synthesis SET_AS_NETWORK=HSYNC_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(17[8:13])
    
    wire n9121, n7694;
    wire [9:0]Count_intern_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(15[32:48])
    
    wire n7695, n7693, n7843;
    wire [9:0]n45;
    
    wire n7692, n7842, n7691, n7841, n7840, n7839, n7838;
    wire [9:0]n45_adj_1113;
    
    wire n7837, n7836, n7835, n7834, n4197, n7666, n1851, n7665, 
        n7664, n7663, n1838;
    
    FD1P3AX Counter_Valid_reg_19 (.D(n9121), .SP(HSYNC_c), .CK(clk_c), 
            .Q(Counter_X_Valid)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=13, LSE_RCOL=27, LSE_LLINE=73, LSE_RLINE=79 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(26[8] 31[6])
    defparam Counter_Valid_reg_19.GSR = "ENABLED";
    CCU2D sub_1033_add_2_10 (.A0(Count_intern_reg[8]), .B0(\H_BackPorch[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[9]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7694), .COUT(n7695));
    defparam sub_1033_add_2_10.INIT0 = 16'h5999;
    defparam sub_1033_add_2_10.INIT1 = 16'h5aaa;
    defparam sub_1033_add_2_10.INJECT1_0 = "NO";
    defparam sub_1033_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_1033_add_2_8 (.A0(Count_intern_reg[6]), .B0(\H_BackPorch[3] ), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[7]), .B1(\H_BackPorch[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n7693), .COUT(n7694));
    defparam sub_1033_add_2_8.INIT0 = 16'h5999;
    defparam sub_1033_add_2_8.INIT1 = 16'h5999;
    defparam sub_1033_add_2_8.INJECT1_0 = "NO";
    defparam sub_1033_add_2_8.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1267_add_4_11 (.A0(Count_intern_reg[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7843), .S0(n45[9]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1267_add_4_11.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1267_add_4_11.INIT1 = 16'h0000;
    defparam Count_intern_reg_1267_add_4_11.INJECT1_0 = "NO";
    defparam Count_intern_reg_1267_add_4_11.INJECT1_1 = "NO";
    CCU2D sub_1033_add_2_6 (.A0(Count_intern_reg[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[5]), .B1(\H_BackPorch[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n7692), .COUT(n7693));
    defparam sub_1033_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_1033_add_2_6.INIT1 = 16'h5999;
    defparam sub_1033_add_2_6.INJECT1_0 = "NO";
    defparam sub_1033_add_2_6.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1267_add_4_9 (.A0(Count_intern_reg[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7842), .COUT(n7843), .S0(n45[7]), 
          .S1(n45[8]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1267_add_4_9.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1267_add_4_9.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_1267_add_4_9.INJECT1_0 = "NO";
    defparam Count_intern_reg_1267_add_4_9.INJECT1_1 = "NO";
    CCU2D sub_1033_add_2_4 (.A0(Count_intern_reg[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7691), .COUT(n7692));
    defparam sub_1033_add_2_4.INIT0 = 16'h5aaa;
    defparam sub_1033_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_1033_add_2_4.INJECT1_0 = "NO";
    defparam sub_1033_add_2_4.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1267_add_4_7 (.A0(Count_intern_reg[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7841), .COUT(n7842), .S0(n45[5]), 
          .S1(n45[6]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1267_add_4_7.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1267_add_4_7.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_1267_add_4_7.INJECT1_0 = "NO";
    defparam Count_intern_reg_1267_add_4_7.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1267_add_4_5 (.A0(Count_intern_reg[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7840), .COUT(n7841), .S0(n45[3]), 
          .S1(n45[4]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1267_add_4_5.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1267_add_4_5.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_1267_add_4_5.INJECT1_0 = "NO";
    defparam Count_intern_reg_1267_add_4_5.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1267_add_4_3 (.A0(Count_intern_reg[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7839), .COUT(n7840), .S0(n45[1]), 
          .S1(n45[2]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1267_add_4_3.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1267_add_4_3.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_1267_add_4_3.INJECT1_0 = "NO";
    defparam Count_intern_reg_1267_add_4_3.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1267_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7839), .S1(n45[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1267_add_4_1.INIT0 = 16'hF000;
    defparam Count_intern_reg_1267_add_4_1.INIT1 = 16'h0555;
    defparam Count_intern_reg_1267_add_4_1.INJECT1_0 = "NO";
    defparam Count_intern_reg_1267_add_4_1.INJECT1_1 = "NO";
    CCU2D Count_reg_1269_add_4_11 (.A0(Counter_X[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7838), .S0(n45_adj_1113[9]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1269_add_4_11.INIT0 = 16'hfaaa;
    defparam Count_reg_1269_add_4_11.INIT1 = 16'h0000;
    defparam Count_reg_1269_add_4_11.INJECT1_0 = "NO";
    defparam Count_reg_1269_add_4_11.INJECT1_1 = "NO";
    CCU2D Count_reg_1269_add_4_9 (.A0(Counter_X[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7837), .COUT(n7838), .S0(n45_adj_1113[7]), 
          .S1(n45_adj_1113[8]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1269_add_4_9.INIT0 = 16'hfaaa;
    defparam Count_reg_1269_add_4_9.INIT1 = 16'hfaaa;
    defparam Count_reg_1269_add_4_9.INJECT1_0 = "NO";
    defparam Count_reg_1269_add_4_9.INJECT1_1 = "NO";
    CCU2D Count_reg_1269_add_4_7 (.A0(Counter_X[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7836), .COUT(n7837), .S0(n45_adj_1113[5]), 
          .S1(n45_adj_1113[6]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1269_add_4_7.INIT0 = 16'hfaaa;
    defparam Count_reg_1269_add_4_7.INIT1 = 16'hfaaa;
    defparam Count_reg_1269_add_4_7.INJECT1_0 = "NO";
    defparam Count_reg_1269_add_4_7.INJECT1_1 = "NO";
    CCU2D Count_reg_1269_add_4_5 (.A0(Counter_X[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7835), .COUT(n7836), .S0(n45_adj_1113[3]), 
          .S1(n45_adj_1113[4]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1269_add_4_5.INIT0 = 16'hfaaa;
    defparam Count_reg_1269_add_4_5.INIT1 = 16'hfaaa;
    defparam Count_reg_1269_add_4_5.INJECT1_0 = "NO";
    defparam Count_reg_1269_add_4_5.INJECT1_1 = "NO";
    CCU2D Count_reg_1269_add_4_3 (.A0(Counter_X[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7834), .COUT(n7835), .S0(n45_adj_1113[1]), 
          .S1(n45_adj_1113[2]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1269_add_4_3.INIT0 = 16'hfaaa;
    defparam Count_reg_1269_add_4_3.INIT1 = 16'hfaaa;
    defparam Count_reg_1269_add_4_3.INJECT1_0 = "NO";
    defparam Count_reg_1269_add_4_3.INJECT1_1 = "NO";
    CCU2D Count_reg_1269_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7834), .S1(n45_adj_1113[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1269_add_4_1.INIT0 = 16'hF000;
    defparam Count_reg_1269_add_4_1.INIT1 = 16'h0555;
    defparam Count_reg_1269_add_4_1.INJECT1_0 = "NO";
    defparam Count_reg_1269_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_1033_add_2_2 (.A0(Count_intern_reg[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7691));
    defparam sub_1033_add_2_2.INIT0 = 16'h5000;
    defparam sub_1033_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_1033_add_2_2.INJECT1_0 = "NO";
    defparam sub_1033_add_2_2.INJECT1_1 = "NO";
    FD1S3IX Count_intern_reg_1267__i0 (.D(n45[0]), .CK(clk_c), .CD(n4198), 
            .Q(Count_intern_reg[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1267__i0.GSR = "ENABLED";
    FD1S3IX Count_reg_1269__i0 (.D(n45_adj_1113[0]), .CK(clk_c), .CD(n4197), 
            .Q(Counter_X[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1269__i0.GSR = "ENABLED";
    CCU2D sub_1035_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7666), .S0(n1851));
    defparam sub_1035_add_2_cout.INIT0 = 16'h0000;
    defparam sub_1035_add_2_cout.INIT1 = 16'h0000;
    defparam sub_1035_add_2_cout.INJECT1_0 = "NO";
    defparam sub_1035_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_1035_add_2_7 (.A0(Count_intern_reg[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7665), .COUT(n7666));
    defparam sub_1035_add_2_7.INIT0 = 16'hf555;
    defparam sub_1035_add_2_7.INIT1 = 16'hf555;
    defparam sub_1035_add_2_7.INJECT1_0 = "NO";
    defparam sub_1035_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1035_add_2_5 (.A0(\H_BackPorch[6] ), .B0(Count_intern_reg[6]), 
          .C0(GND_net), .D0(GND_net), .A1(\H_BackPorch[7] ), .B1(Count_intern_reg[7]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7664), .COUT(n7665));
    defparam sub_1035_add_2_5.INIT0 = 16'h5999;
    defparam sub_1035_add_2_5.INIT1 = 16'h5999;
    defparam sub_1035_add_2_5.INJECT1_0 = "NO";
    defparam sub_1035_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1035_add_2_3 (.A0(\H_BackPorch[4] ), .B0(Count_intern_reg[4]), 
          .C0(GND_net), .D0(GND_net), .A1(\H_BackPorch[5] ), .B1(Count_intern_reg[5]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7663), .COUT(n7664));
    defparam sub_1035_add_2_3.INIT0 = 16'h5999;
    defparam sub_1035_add_2_3.INIT1 = 16'h5999;
    defparam sub_1035_add_2_3.INJECT1_0 = "NO";
    defparam sub_1035_add_2_3.INJECT1_1 = "NO";
    FD1S3IX Count_reg_1269__i1 (.D(n45_adj_1113[1]), .CK(clk_c), .CD(n4197), 
            .Q(Counter_X[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1269__i1.GSR = "ENABLED";
    FD1S3IX Count_reg_1269__i2 (.D(n45_adj_1113[2]), .CK(clk_c), .CD(n4197), 
            .Q(Counter_X[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1269__i2.GSR = "ENABLED";
    FD1S3IX Count_reg_1269__i3 (.D(n45_adj_1113[3]), .CK(clk_c), .CD(n4197), 
            .Q(Counter_X[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1269__i3.GSR = "ENABLED";
    FD1S3IX Count_reg_1269__i4 (.D(n45_adj_1113[4]), .CK(clk_c), .CD(n4197), 
            .Q(Counter_X[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1269__i4.GSR = "ENABLED";
    FD1S3IX Count_reg_1269__i5 (.D(n45_adj_1113[5]), .CK(clk_c), .CD(n4197), 
            .Q(Counter_X[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1269__i5.GSR = "ENABLED";
    FD1S3IX Count_reg_1269__i6 (.D(n45_adj_1113[6]), .CK(clk_c), .CD(n4197), 
            .Q(Counter_X[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1269__i6.GSR = "ENABLED";
    FD1S3IX Count_reg_1269__i7 (.D(n45_adj_1113[7]), .CK(clk_c), .CD(n4197), 
            .Q(Counter_X[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1269__i7.GSR = "ENABLED";
    FD1S3IX Count_reg_1269__i8 (.D(n45_adj_1113[8]), .CK(clk_c), .CD(n4197), 
            .Q(Counter_X[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1269__i8.GSR = "ENABLED";
    FD1S3IX Count_reg_1269__i9 (.D(n45_adj_1113[9]), .CK(clk_c), .CD(n4197), 
            .Q(Counter_X[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1269__i9.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1267__i1 (.D(n45[1]), .CK(clk_c), .CD(n4198), 
            .Q(Count_intern_reg[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1267__i1.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1267__i2 (.D(n45[2]), .CK(clk_c), .CD(n4198), 
            .Q(Count_intern_reg[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1267__i2.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1267__i3 (.D(n45[3]), .CK(clk_c), .CD(n4198), 
            .Q(Count_intern_reg[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1267__i3.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1267__i4 (.D(n45[4]), .CK(clk_c), .CD(n4198), 
            .Q(Count_intern_reg[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1267__i4.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1267__i5 (.D(n45[5]), .CK(clk_c), .CD(n4198), 
            .Q(Count_intern_reg[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1267__i5.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1267__i6 (.D(n45[6]), .CK(clk_c), .CD(n4198), 
            .Q(Count_intern_reg[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1267__i6.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1267__i7 (.D(n45[7]), .CK(clk_c), .CD(n4198), 
            .Q(Count_intern_reg[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1267__i7.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1267__i8 (.D(n45[8]), .CK(clk_c), .CD(n4198), 
            .Q(Count_intern_reg[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1267__i8.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1267__i9 (.D(n45[9]), .CK(clk_c), .CD(n4198), 
            .Q(Count_intern_reg[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1267__i9.GSR = "ENABLED";
    CCU2D sub_1035_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\H_BackPorch[3] ), .B1(Count_intern_reg[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n7663));
    defparam sub_1035_add_2_1.INIT0 = 16'h0000;
    defparam sub_1035_add_2_1.INIT1 = 16'h5999;
    defparam sub_1035_add_2_1.INJECT1_0 = "NO";
    defparam sub_1035_add_2_1.INJECT1_1 = "NO";
    LUT4 i7472_2_lut_rep_168_2_lut (.A(n1851), .B(n1838), .Z(n9121)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i7472_2_lut_rep_168_2_lut.init = 16'h1111;
    LUT4 i7527_2_lut_3_lut_3_lut (.A(n1851), .B(HSYNC_c), .C(n1838), .Z(n4197)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i7527_2_lut_3_lut_3_lut.init = 16'hfbfb;
    CCU2D sub_1033_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7695), .S0(n1838));
    defparam sub_1033_add_2_cout.INIT0 = 16'h0000;
    defparam sub_1033_add_2_cout.INIT1 = 16'h0000;
    defparam sub_1033_add_2_cout.INJECT1_0 = "NO";
    defparam sub_1033_add_2_cout.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module CM_Config_Manager
//

module CM_Config_Manager (clk_c, UART_out_CM_data, c_addr, c_addr_3__N_470, 
            UART_out_CM_data_empty, \c_data[1] , \c_data[0] , \Config_Notification[0] , 
            c_valid, Config_Notification_Valid, Error_Valid, \c_data[2] , 
            \Config_Error[1] , \Config_Error[2] , \Config_Notification[3] , 
            n9391, \Config_Notification[1] , \c_data[13] , \c_data[12] , 
            \c_data[11] , \c_data[10] , \c_data[9] , \c_data[8] , \c_data[7] , 
            \c_data[6] , \c_data[5] , \c_data[4] , \c_data[3] , rst_n_c, 
            \c_ready[1] , rst_n_N_350, c_VGA_ready, rst_n_N_52, c_UART_ready, 
            rst_n_N_144, \leds_UART_info[7] , button_signal_DEBUG_UART, 
            LEDS_c_7, \Config_Error[0] , Load_config, rst_n_N_1047) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input [7:0]UART_out_CM_data;
    output [3:0]c_addr;
    input c_addr_3__N_470;
    input UART_out_CM_data_empty;
    output \c_data[1] ;
    output \c_data[0] ;
    output \Config_Notification[0] ;
    output c_valid;
    output Config_Notification_Valid;
    output Error_Valid;
    output \c_data[2] ;
    output \Config_Error[1] ;
    output \Config_Error[2] ;
    output \Config_Notification[3] ;
    input n9391;
    output \Config_Notification[1] ;
    output \c_data[13] ;
    output \c_data[12] ;
    output \c_data[11] ;
    output \c_data[10] ;
    output \c_data[9] ;
    output \c_data[8] ;
    output \c_data[7] ;
    output \c_data[6] ;
    output \c_data[5] ;
    output \c_data[4] ;
    output \c_data[3] ;
    input rst_n_c;
    input \c_ready[1] ;
    output rst_n_N_350;
    input c_VGA_ready;
    output rst_n_N_52;
    input c_UART_ready;
    output rst_n_N_144;
    input \leds_UART_info[7] ;
    input button_signal_DEBUG_UART;
    output LEDS_c_7;
    output \Config_Error[0] ;
    input Load_config;
    output rst_n_N_1047;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [7:0]n603 /* synthesis is_clock=1, SET_AS_NETWORK=\cm/configCM/State_nxt_2__N_488 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(21[35:44])
    wire [15:0]RXD_Data_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(24[23:35])
    
    wire clk_c_enable_220, clk_c_enable_69, clk_c_enable_208, n4942, 
        n8513, n3931, n9128, n8413;
    wire [2:0]State_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(21[24:33])
    wire [2:0]State_nxt_2__N_474;
    
    wire n9050, n9140, n8547, clk_c_enable_30, n9389, n9138, clk_c_enable_25;
    wire [13:0]c_data_nxt_13__N_517;
    
    wire Err_nxt_N_612, clk_c_enable_27, clk_c_enable_48, n32, n9146, 
        n9202, n9160, n2850;
    wire [2:0]State_nxt;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(21[35:44])
    
    wire n9201, n5, n9123, n9134, n9203, n2084, n9049, n9170, 
        n9129, n8002, clk_c_enable_33;
    wire [3:0]Config_Error_nxt_3__N_559;
    
    wire n8442, clk_c_enable_34, n8, n8468, n9127, n8418, clk_c_enable_207, 
        n3200, n4108, n8470, n9158, n40, n7883, n9126, clk_c_enable_49;
    wire [3:0]n1661;
    
    wire clk_c_enable_60, n9194, n9159, n9110, n53, n3935, n8488, 
        n16, n3927, n4;
    wire [0:0]n1617;
    
    wire n22, n23, n4_adj_1100, n20, n39, n3525, n9171, n9, 
        n8496, n3937;
    wire [3:0]n1488;
    
    wire n9165, n3920, n8986, n3921, n8541, n3693, n5_adj_1101, 
        n22_adj_1102;
    
    FD1P3IX RXD_Data_reg_i6 (.D(UART_out_CM_data[6]), .SP(clk_c_enable_220), 
            .CD(clk_c_enable_69), .CK(clk_c), .Q(RXD_Data_reg[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i6.GSR = "ENABLED";
    FD1P3IX RXD_Data_reg_i7 (.D(UART_out_CM_data[7]), .SP(clk_c_enable_220), 
            .CD(clk_c_enable_69), .CK(clk_c), .Q(RXD_Data_reg[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i7.GSR = "ENABLED";
    FD1P3IX c_addr_reg_i1 (.D(n8513), .SP(clk_c_enable_208), .CD(n4942), 
            .CK(clk_c), .Q(c_addr[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_addr_reg_i1.GSR = "ENABLED";
    FD1P3IX c_addr_reg_i2 (.D(n3931), .SP(clk_c_enable_208), .CD(n4942), 
            .CK(clk_c), .Q(c_addr[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_addr_reg_i2.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[11]), .C(n9128), 
         .D(RXD_Data_reg[14]), .Z(n8413)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h4020;
    LUT4 i1_4_lut_4_lut_4_lut (.A(State_reg[0]), .B(State_reg[1]), .C(State_reg[2]), 
         .D(c_addr_3__N_470), .Z(n603[3])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+((D)+!C)))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h2838;
    LUT4 State_reg_1__bdd_4_lut (.A(State_reg[2]), .B(State_reg[0]), .C(State_nxt_2__N_474[1]), 
         .D(UART_out_CM_data_empty), .Z(n9050)) /* synthesis lut_function=(A (B (C))+!A (B+!(D))) */ ;
    defparam State_reg_1__bdd_4_lut.init = 16'hc4d5;
    LUT4 i1_4_lut (.A(n9140), .B(RXD_Data_reg[14]), .C(n8547), .D(RXD_Data_reg[15]), 
         .Z(clk_c_enable_30)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut.init = 16'h0511;
    LUT4 i1_3_lut_rep_241 (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[12]), .C(RXD_Data_reg[11]), 
         .Z(n9389)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;
    defparam i1_3_lut_rep_241.init = 16'h5454;
    LUT4 i20_3_lut_rep_185_4_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[12]), 
         .C(RXD_Data_reg[11]), .D(RXD_Data_reg[14]), .Z(n9138)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (D)+!B (C (D))))) */ ;
    defparam i20_3_lut_rep_185_4_lut_4_lut.init = 16'h540a;
    FD1P3AX c_data_reg_i1 (.D(c_data_nxt_13__N_517[1]), .SP(clk_c_enable_25), 
            .CK(clk_c), .Q(\c_data[1] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i1.GSR = "ENABLED";
    FD1S3IX Err_reg_144 (.D(Err_nxt_N_612), .CK(clk_c), .CD(n9140), .Q(State_nxt_2__N_474[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Err_reg_144.GSR = "ENABLED";
    FD1P3AX c_data_reg_i0 (.D(c_data_nxt_13__N_517[0]), .SP(clk_c_enable_27), 
            .CK(clk_c), .Q(\c_data[0] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i0.GSR = "ENABLED";
    FD1P3AX Config_Notification_reg_i0 (.D(RXD_Data_reg[11]), .SP(clk_c_enable_48), 
            .CK(clk_c), .Q(\Config_Notification[0] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Config_Notification_reg_i0.GSR = "ENABLED";
    FD1S3IX c_valid_reg_148 (.D(c_addr_3__N_470), .CK(clk_c), .CD(n32), 
            .Q(c_valid)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_valid_reg_148.GSR = "ENABLED";
    LUT4 i45_4_lut_then_4_lut (.A(n9146), .B(RXD_Data_reg[9]), .C(RXD_Data_reg[13]), 
         .D(RXD_Data_reg[10]), .Z(n9202)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (D)))) */ ;
    defparam i45_4_lut_then_4_lut.init = 16'h4c08;
    FD1S3AX Config_Notification_Valid_reg_152 (.D(n603[5]), .CK(clk_c), 
            .Q(Config_Notification_Valid)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Config_Notification_Valid_reg_152.GSR = "ENABLED";
    FD1S3IX Error_Valid_reg_154 (.D(n2850), .CK(clk_c), .CD(n9160), .Q(Error_Valid)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Error_Valid_reg_154.GSR = "ENABLED";
    FD1S1A State_nxt_2__I_0_i1 (.D(n603[0]), .CK(n603[2]), .Q(State_nxt[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(67[2] 227[5])
    defparam State_nxt_2__I_0_i1.GSR = "DISABLED";
    LUT4 i45_4_lut_else_4_lut (.A(n9146), .B(RXD_Data_reg[9]), .C(RXD_Data_reg[10]), 
         .Z(n9201)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i45_4_lut_else_4_lut.init = 16'h4040;
    LUT4 i13_3_lut (.A(RXD_Data_reg[2]), .B(n5), .C(RXD_Data_reg[15]), 
         .Z(c_data_nxt_13__N_517[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam i13_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut (.A(RXD_Data_reg[11]), .B(RXD_Data_reg[10]), .C(n9123), 
         .D(n9146), .Z(n5)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam i2_4_lut.init = 16'h0004;
    FD1P3IX RXD_Data_reg_i3 (.D(UART_out_CM_data[3]), .SP(clk_c_enable_220), 
            .CD(clk_c_enable_69), .CK(clk_c), .Q(RXD_Data_reg[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i3.GSR = "ENABLED";
    FD1S3AX State_reg_i0 (.D(State_nxt[0]), .CK(clk_c), .Q(State_reg[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam State_reg_i0.GSR = "ENABLED";
    LUT4 i7327_3_lut_4_lut (.A(n9134), .B(n9138), .C(n9203), .D(RXD_Data_reg[11]), 
         .Z(n8547)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i7327_3_lut_4_lut.init = 16'hfffb;
    FD1P3AX c_data_reg_i2 (.D(c_data_nxt_13__N_517[2]), .SP(clk_c_enable_30), 
            .CK(clk_c), .Q(\c_data[2] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i2.GSR = "ENABLED";
    FD1S1A State_nxt_2__I_0_i3 (.D(n603[3]), .CK(n603[2]), .Q(State_nxt[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(67[2] 227[5])
    defparam State_nxt_2__I_0_i3.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut (.A(RXD_Data_reg[15]), .B(n9138), .C(RXD_Data_reg[11]), 
         .Z(n2084)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    FD1P3IX RXD_Data_reg_i4 (.D(UART_out_CM_data[4]), .SP(clk_c_enable_220), 
            .CD(clk_c_enable_69), .CK(clk_c), .Q(RXD_Data_reg[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i4.GSR = "ENABLED";
    PFUMX i7637 (.BLUT(n9050), .ALUT(n9049), .C0(State_reg[1]), .Z(n603[0]));
    LUT4 i2_3_lut_4_lut (.A(RXD_Data_reg[15]), .B(n9138), .C(n9170), .D(n9129), 
         .Z(n8002)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i2_3_lut_4_lut.init = 16'hfff7;
    FD1P3AX Config_Error_reg_i1 (.D(Config_Error_nxt_3__N_559[1]), .SP(clk_c_enable_33), 
            .CK(clk_c), .Q(\Config_Error[1] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Config_Error_reg_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_29 (.A(RXD_Data_reg[15]), .B(n9138), .C(RXD_Data_reg[8]), 
         .Z(n8442)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1_2_lut_3_lut_adj_29.init = 16'h8080;
    LUT4 i2_3_lut_4_lut_3_lut_3_lut (.A(n9140), .B(RXD_Data_reg[15]), .C(RXD_Data_reg[14]), 
         .Z(n4942)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i2_3_lut_4_lut_3_lut_3_lut.init = 16'h0101;
    LUT4 i1_2_lut_4_lut_4_lut (.A(n9140), .B(RXD_Data_reg[15]), .C(n9138), 
         .D(RXD_Data_reg[14]), .Z(clk_c_enable_208)) /* synthesis lut_function=(!(A+!(B (C)+!B !(D)))) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'h4051;
    FD1P3AX Config_Error_reg_i2 (.D(Config_Error_nxt_3__N_559[2]), .SP(clk_c_enable_34), 
            .CK(clk_c), .Q(\Config_Error[2] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Config_Error_reg_i2.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(RXD_Data_reg[11]), .B(n9146), .C(n9170), .D(n9138), 
         .Z(n8)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hef00;
    LUT4 i1_4_lut_4_lut_adj_30 (.A(n9140), .B(n8468), .C(n9127), .D(n8418), 
         .Z(clk_c_enable_207)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+!(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_30.init = 16'h5051;
    LUT4 i2_3_lut_4_lut_adj_31 (.A(n9146), .B(RXD_Data_reg[13]), .C(RXD_Data_reg[11]), 
         .D(n3200), .Z(n4108)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i2_3_lut_4_lut_adj_31.init = 16'h0002;
    LUT4 i1_4_lut_4_lut_adj_32 (.A(n9140), .B(n9127), .C(n8470), .D(n8002), 
         .Z(clk_c_enable_33)) /* synthesis lut_function=(!(A+!(B (D)+!B !(C+!(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_32.init = 16'h4500;
    LUT4 State_reg_1__bdd_2_lut (.A(State_reg[2]), .B(State_reg[0]), .Z(n9049)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam State_reg_1__bdd_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n9146), .B(n9158), .C(n9138), .D(RXD_Data_reg[15]), 
         .Z(n8468)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(C (D))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8fff;
    LUT4 i1_2_lut (.A(State_reg[2]), .B(State_reg[1]), .Z(n2850)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1_2_lut.init = 16'h8888;
    PFUMX i6 (.BLUT(n40), .ALUT(n7883), .C0(State_reg[0]), .Z(n603[5]));
    LUT4 i1_2_lut_rep_173_4_lut (.A(n9158), .B(n9389), .C(RXD_Data_reg[14]), 
         .D(RXD_Data_reg[15]), .Z(n9126)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_173_4_lut.init = 16'hca00;
    LUT4 i1_2_lut_rep_170_3_lut_4_lut (.A(n9158), .B(n9389), .C(RXD_Data_reg[14]), 
         .D(n9146), .Z(n9123)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A !(B (C))) */ ;
    defparam i1_2_lut_rep_170_3_lut_4_lut.init = 16'hbf35;
    LUT4 i3588_3_lut_rep_174_4_lut (.A(n9158), .B(n9389), .C(RXD_Data_reg[14]), 
         .D(RXD_Data_reg[15]), .Z(n9127)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i3588_3_lut_rep_174_4_lut.init = 16'h35f0;
    FD1P3IX RXD_Data_reg_i1 (.D(UART_out_CM_data[1]), .SP(clk_c_enable_220), 
            .CD(clk_c_enable_69), .CK(clk_c), .Q(RXD_Data_reg[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i1.GSR = "ENABLED";
    FD1P3IX RXD_Data_reg_i2 (.D(UART_out_CM_data[2]), .SP(clk_c_enable_220), 
            .CD(clk_c_enable_69), .CK(clk_c), .Q(RXD_Data_reg[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i2.GSR = "ENABLED";
    FD1P3AX Config_Notification_reg_i3 (.D(n9391), .SP(clk_c_enable_48), 
            .CK(clk_c), .Q(\Config_Notification[3] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Config_Notification_reg_i3.GSR = "ENABLED";
    FD1P3AX Config_Notification_reg_i1 (.D(n1661[1]), .SP(clk_c_enable_49), 
            .CK(clk_c), .Q(\Config_Notification[1] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Config_Notification_reg_i1.GSR = "ENABLED";
    FD1P3AX c_data_reg_i13 (.D(RXD_Data_reg[13]), .SP(clk_c_enable_60), 
            .CK(clk_c), .Q(\c_data[13] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i13.GSR = "ENABLED";
    FD1P3AX c_data_reg_i12 (.D(RXD_Data_reg[12]), .SP(clk_c_enable_60), 
            .CK(clk_c), .Q(\c_data[12] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i12.GSR = "ENABLED";
    FD1P3AX c_data_reg_i11 (.D(RXD_Data_reg[11]), .SP(clk_c_enable_60), 
            .CK(clk_c), .Q(\c_data[11] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i11.GSR = "ENABLED";
    FD1P3AX c_data_reg_i10 (.D(RXD_Data_reg[10]), .SP(clk_c_enable_60), 
            .CK(clk_c), .Q(\c_data[10] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i10.GSR = "ENABLED";
    FD1P3AX c_data_reg_i9 (.D(RXD_Data_reg[9]), .SP(clk_c_enable_60), .CK(clk_c), 
            .Q(\c_data[9] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i9.GSR = "ENABLED";
    FD1P3AX c_data_reg_i8 (.D(RXD_Data_reg[8]), .SP(clk_c_enable_60), .CK(clk_c), 
            .Q(\c_data[8] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i8.GSR = "ENABLED";
    FD1P3AX c_data_reg_i7 (.D(RXD_Data_reg[7]), .SP(clk_c_enable_60), .CK(clk_c), 
            .Q(\c_data[7] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i7.GSR = "ENABLED";
    FD1P3AX c_data_reg_i6 (.D(RXD_Data_reg[6]), .SP(clk_c_enable_60), .CK(clk_c), 
            .Q(\c_data[6] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i6.GSR = "ENABLED";
    FD1P3AX c_data_reg_i5 (.D(RXD_Data_reg[5]), .SP(clk_c_enable_60), .CK(clk_c), 
            .Q(\c_data[5] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i5.GSR = "ENABLED";
    FD1P3AX c_data_reg_i4 (.D(RXD_Data_reg[4]), .SP(clk_c_enable_60), .CK(clk_c), 
            .Q(\c_data[4] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i4.GSR = "ENABLED";
    FD1P3AX c_data_reg_i3 (.D(RXD_Data_reg[3]), .SP(clk_c_enable_60), .CK(clk_c), 
            .Q(\c_data[3] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i3.GSR = "ENABLED";
    FD1P3AX c_addr_reg_i3 (.D(n9194), .SP(clk_c_enable_208), .CK(clk_c), 
            .Q(c_addr[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_addr_reg_i3.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i15 (.D(UART_out_CM_data[7]), .SP(clk_c_enable_69), 
            .CK(clk_c), .Q(RXD_Data_reg[15])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i15.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i14 (.D(UART_out_CM_data[6]), .SP(clk_c_enable_69), 
            .CK(clk_c), .Q(RXD_Data_reg[14])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i14.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i13 (.D(UART_out_CM_data[5]), .SP(clk_c_enable_69), 
            .CK(clk_c), .Q(RXD_Data_reg[13])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i13.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i12 (.D(UART_out_CM_data[4]), .SP(clk_c_enable_69), 
            .CK(clk_c), .Q(RXD_Data_reg[12])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i12.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i11 (.D(UART_out_CM_data[3]), .SP(clk_c_enable_69), 
            .CK(clk_c), .Q(RXD_Data_reg[11])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i11.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i10 (.D(UART_out_CM_data[2]), .SP(clk_c_enable_69), 
            .CK(clk_c), .Q(RXD_Data_reg[10])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i10.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i9 (.D(UART_out_CM_data[1]), .SP(clk_c_enable_69), 
            .CK(clk_c), .Q(RXD_Data_reg[9])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i9.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i8 (.D(UART_out_CM_data[0]), .SP(clk_c_enable_69), 
            .CK(clk_c), .Q(RXD_Data_reg[8])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i8.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_33 (.A(State_reg[0]), .B(n9159), .C(n9110), 
         .D(RXD_Data_reg[15]), .Z(clk_c_enable_49)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_33.init = 16'h8000;
    LUT4 i1_3_lut_3_lut_4_lut (.A(State_reg[0]), .B(n9159), .C(n53), .D(n9127), 
         .Z(clk_c_enable_34)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_3_lut_3_lut_4_lut.init = 16'h8880;
    LUT4 i2_3_lut_4_lut_adj_34 (.A(State_reg[0]), .B(n9159), .C(RXD_Data_reg[15]), 
         .D(RXD_Data_reg[14]), .Z(clk_c_enable_60)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_34.init = 16'h0008;
    LUT4 i4681_3_lut (.A(UART_out_CM_data_empty), .B(State_nxt_2__N_474[1]), 
         .C(State_reg[2]), .Z(n3935)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(21[24:33])
    defparam i4681_3_lut.init = 16'hc5c5;
    LUT4 i7552_2_lut (.A(rst_n_c), .B(\c_ready[1] ), .Z(rst_n_N_350)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i7552_2_lut.init = 16'h7777;
    LUT4 i7578_2_lut (.A(rst_n_c), .B(c_VGA_ready), .Z(rst_n_N_52)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i7578_2_lut.init = 16'h7777;
    LUT4 i7271_2_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[12]), 
         .C(RXD_Data_reg[11]), .D(RXD_Data_reg[15]), .Z(n8488)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;
    defparam i7271_2_lut_4_lut.init = 16'h5400;
    LUT4 i7559_2_lut (.A(rst_n_c), .B(c_UART_ready), .Z(rst_n_N_144)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i7559_2_lut.init = 16'h7777;
    LUT4 i1_2_lut_rep_205 (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[11]), .Z(n9158)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i1_2_lut_rep_205.init = 16'h2222;
    LUT4 i7533_4_lut (.A(n9140), .B(n16), .C(RXD_Data_reg[14]), .D(n8488), 
         .Z(clk_c_enable_25)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i7533_4_lut.init = 16'h1101;
    FD1S3AX State_reg_i1 (.D(State_nxt[1]), .CK(clk_c), .Q(State_reg[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam State_reg_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_206 (.A(State_reg[1]), .B(State_reg[2]), .Z(n9159)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1_2_lut_rep_206.init = 16'h2222;
    LUT4 i2_4_lut_adj_35 (.A(n3927), .B(n4), .C(n1617[0]), .D(RXD_Data_reg[11]), 
         .Z(n7883)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(24[23:35])
    defparam i2_4_lut_adj_35.init = 16'hc088;
    LUT4 i1_4_lut_adj_36 (.A(RXD_Data_reg[15]), .B(n9158), .C(n22), .D(RXD_Data_reg[14]), 
         .Z(n16)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_36.init = 16'ha0a2;
    LUT4 i1_2_lut_3_lut_4_lut_adj_37 (.A(State_reg[1]), .B(State_reg[2]), 
         .C(n9138), .D(RXD_Data_reg[15]), .Z(n4)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1_2_lut_3_lut_4_lut_adj_37.init = 16'h2000;
    LUT4 i7521_2_lut_rep_187_3_lut (.A(State_reg[1]), .B(State_reg[2]), 
         .C(State_reg[0]), .Z(n9140)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i7521_2_lut_rep_187_3_lut.init = 16'hdfdf;
    FD1S3AX State_reg_i2 (.D(State_nxt[2]), .CK(clk_c), .Q(State_reg[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam State_reg_i2.GSR = "ENABLED";
    LUT4 i3878_3_lut (.A(rst_n_c), .B(\leds_UART_info[7] ), .C(button_signal_DEBUG_UART), 
         .Z(LEDS_c_7)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(32[6:30])
    defparam i3878_3_lut.init = 16'hc5c5;
    LUT4 i1_2_lut_rep_175_3_lut_4_lut (.A(State_reg[1]), .B(State_reg[2]), 
         .C(RXD_Data_reg[15]), .D(State_reg[0]), .Z(n9128)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1_2_lut_rep_175_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_4_lut_adj_38 (.A(RXD_Data_reg[11]), .B(n9170), .C(RXD_Data_reg[13]), 
         .D(n9146), .Z(n22)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_38.init = 16'h5044;
    LUT4 i1669_1_lut_rep_207 (.A(State_reg[0]), .Z(n9160)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1669_1_lut_rep_207.init = 16'h5555;
    LUT4 c_data_nxt_13__I_0_i2_4_lut (.A(RXD_Data_reg[1]), .B(n9138), .C(RXD_Data_reg[15]), 
         .D(n23), .Z(c_data_nxt_13__N_517[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam c_data_nxt_13__I_0_i2_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_39 (.A(RXD_Data_reg[12]), .B(RXD_Data_reg[9]), .C(n4_adj_1100), 
         .D(n20), .Z(n23)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i1_4_lut_adj_39.init = 16'hdc50;
    LUT4 i1_2_lut_2_lut (.A(State_reg[0]), .B(State_reg[1]), .Z(n39)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    LUT4 RXD_Data_reg_11__bdd_4_lut (.A(RXD_Data_reg[11]), .B(RXD_Data_reg[15]), 
         .C(RXD_Data_reg[14]), .D(RXD_Data_reg[13]), .Z(n9194)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam RXD_Data_reg_11__bdd_4_lut.init = 16'hfbff;
    LUT4 i1_4_lut_adj_40 (.A(n4108), .B(n8468), .C(RXD_Data_reg[11]), 
         .D(n3525), .Z(n8470)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i1_4_lut_adj_40.init = 16'hfeee;
    LUT4 i1_2_lut_3_lut_adj_41 (.A(State_reg[2]), .B(State_reg[1]), .C(State_reg[0]), 
         .Z(n32)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1_2_lut_3_lut_adj_41.init = 16'hfdfd;
    LUT4 i1_2_lut_3_lut_adj_42 (.A(State_reg[2]), .B(State_reg[1]), .C(c_addr_3__N_470), 
         .Z(n40)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1_2_lut_3_lut_adj_42.init = 16'h2020;
    LUT4 i1_4_lut_adj_43 (.A(n9171), .B(n8513), .C(RXD_Data_reg[11]), 
         .D(RXD_Data_reg[13]), .Z(n20)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i1_4_lut_adj_43.init = 16'hb3bb;
    LUT4 i20_3_lut_4_lut_4_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[14]), 
         .C(RXD_Data_reg[11]), .D(RXD_Data_reg[12]), .Z(n9)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i20_3_lut_4_lut_4_lut_4_lut.init = 16'hf400;
    LUT4 i1_4_lut_adj_44 (.A(n9127), .B(n8442), .C(RXD_Data_reg[9]), .D(n9), 
         .Z(Config_Error_nxt_3__N_559[1])) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(24[23:35])
    defparam i1_4_lut_adj_44.init = 16'heaaa;
    LUT4 i1_2_lut_rep_193_3_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[14]), 
         .C(RXD_Data_reg[12]), .Z(n9146)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;
    defparam i1_2_lut_rep_193_3_lut.init = 16'h6060;
    LUT4 i1_2_lut_rep_176_3_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[14]), 
         .C(RXD_Data_reg[11]), .D(RXD_Data_reg[12]), .Z(n9129)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_176_3_lut_4_lut.init = 16'hf6f0;
    LUT4 i7296_3_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[14]), 
         .C(RXD_Data_reg[12]), .D(RXD_Data_reg[11]), .Z(n8513)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i7296_3_lut_4_lut.init = 16'hf060;
    LUT4 i7279_2_lut_3_lut_4_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[14]), 
         .C(RXD_Data_reg[9]), .D(RXD_Data_reg[12]), .Z(n8496)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i7279_2_lut_3_lut_4_lut_4_lut.init = 16'hbfff;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[14]), 
         .C(RXD_Data_reg[11]), .D(RXD_Data_reg[12]), .Z(n3931)) /* synthesis lut_function=(!(A (C)+!A (B (C+(D))+!B (C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0b0f;
    LUT4 i2_2_lut_rep_181_3_lut_4_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[14]), 
         .C(RXD_Data_reg[12]), .D(RXD_Data_reg[11]), .Z(n9134)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i2_2_lut_rep_181_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 i2910_3_lut_4_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[14]), 
         .C(n9170), .D(RXD_Data_reg[12]), .Z(n3927)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C+(D))+!B (C)))) */ ;
    defparam i2910_3_lut_4_lut_4_lut.init = 16'h2b0f;
    LUT4 i1_3_lut (.A(n3525), .B(n3937), .C(RXD_Data_reg[11]), .Z(n8418)) /* synthesis lut_function=(A ((C)+!B)+!A !(B+(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i1_3_lut.init = 16'ha3a3;
    LUT4 i2920_4_lut (.A(n9170), .B(n3200), .C(n9146), .D(RXD_Data_reg[13]), 
         .Z(n3937)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i2920_4_lut.init = 16'hfaca;
    LUT4 i2_3_lut (.A(n53), .B(n9127), .C(n1488[2]), .Z(Config_Error_nxt_3__N_559[2])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i2_3_lut.init = 16'h2020;
    LUT4 i1_4_lut_adj_45 (.A(n9127), .B(n8442), .C(RXD_Data_reg[11]), 
         .D(n9165), .Z(Config_Error_nxt_3__N_559[0])) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(24[23:35])
    defparam i1_4_lut_adj_45.init = 16'haaea;
    LUT4 i3158_3_lut (.A(n3920), .B(n3525), .C(RXD_Data_reg[11]), .Z(n1488[2])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i3158_3_lut.init = 16'h3a3a;
    LUT4 i7406_3_lut_4_lut_3_lut (.A(RXD_Data_reg[12]), .B(RXD_Data_reg[8]), 
         .C(RXD_Data_reg[9]), .Z(n3525)) /* synthesis lut_function=(!(A (B (C))+!A !((C)+!B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(131[8] 144[15])
    defparam i7406_3_lut_4_lut_3_lut.init = 16'h7b7b;
    LUT4 i1_4_lut_adj_46 (.A(n9126), .B(n8986), .C(n3525), .D(RXD_Data_reg[11]), 
         .Z(n53)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_46.init = 16'h0a88;
    LUT4 i7480_2_lut_3_lut_4_lut (.A(State_reg[1]), .B(UART_out_CM_data_empty), 
         .C(State_reg[0]), .D(State_reg[2]), .Z(clk_c_enable_69)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7480_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i7542_2_lut_rep_188_3_lut (.A(State_reg[1]), .B(UART_out_CM_data_empty), 
         .C(State_reg[2]), .Z(clk_c_enable_220)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i7542_2_lut_rep_188_3_lut.init = 16'h0101;
    FD1S1I State_nxt_2__I_0_i2 (.D(n3935), .CK(n603[2]), .CD(n39), .Q(State_nxt[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(67[2] 227[5])
    defparam State_nxt_2__I_0_i2.GSR = "DISABLED";
    LUT4 RXD_Data_reg_14__I_0_4_lut (.A(RXD_Data_reg[14]), .B(n3921), .C(RXD_Data_reg[15]), 
         .D(n9138), .Z(Err_nxt_N_612)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam RXD_Data_reg_14__I_0_4_lut.init = 16'hcafa;
    LUT4 n3200_bdd_4_lut (.A(n3200), .B(n9170), .C(RXD_Data_reg[13]), 
         .D(n9146), .Z(n8986)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D)))+!A ((D)+!B))) */ ;
    defparam n3200_bdd_4_lut.init = 16'h0acc;
    LUT4 i2904_4_lut (.A(n3920), .B(RXD_Data_reg[8]), .C(RXD_Data_reg[11]), 
         .D(n9165), .Z(n3921)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i2904_4_lut.init = 16'h0aca;
    LUT4 i2903_4_lut (.A(n9170), .B(RXD_Data_reg[13]), .C(n9146), .D(n3200), 
         .Z(n3920)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i2903_4_lut.init = 16'h3a0a;
    LUT4 i1_2_lut_adj_47 (.A(RXD_Data_reg[8]), .B(RXD_Data_reg[9]), .Z(n3200)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i1_2_lut_adj_47.init = 16'h8888;
    LUT4 i2633_2_lut_rep_212 (.A(RXD_Data_reg[9]), .B(RXD_Data_reg[12]), 
         .Z(n9165)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i2633_2_lut_rep_212.init = 16'h6666;
    LUT4 i4238_2_lut_3_lut (.A(RXD_Data_reg[9]), .B(RXD_Data_reg[12]), .C(RXD_Data_reg[8]), 
         .Z(n1617[0])) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i4238_2_lut_3_lut.init = 16'h6f6f;
    FD1P3AX Config_Error_reg_i0 (.D(Config_Error_nxt_3__N_559[0]), .SP(clk_c_enable_207), 
            .CK(clk_c), .Q(\Config_Error[0] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Config_Error_reg_i0.GSR = "ENABLED";
    FD1P3AX c_addr_reg_i0 (.D(n2084), .SP(clk_c_enable_208), .CK(clk_c), 
            .Q(c_addr[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_addr_reg_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_48 (.A(n9140), .B(RXD_Data_reg[14]), .C(n8), .D(RXD_Data_reg[15]), 
         .Z(clk_c_enable_27)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_48.init = 16'h5011;
    FD1P3IX RXD_Data_reg_i0 (.D(UART_out_CM_data[0]), .SP(clk_c_enable_220), 
            .CD(clk_c_enable_69), .CK(clk_c), .Q(RXD_Data_reg[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i0.GSR = "ENABLED";
    LUT4 i32_4_lut (.A(RXD_Data_reg[0]), .B(RXD_Data_reg[8]), .C(RXD_Data_reg[15]), 
         .D(n8541), .Z(c_data_nxt_13__N_517[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(24[23:35])
    defparam i32_4_lut.init = 16'hca0a;
    LUT4 i1766_2_lut_rep_217 (.A(RXD_Data_reg[9]), .B(RXD_Data_reg[10]), 
         .Z(n9170)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(113[8] 126[15])
    defparam i1766_2_lut_rep_217.init = 16'h8888;
    LUT4 i2_2_lut_3_lut (.A(RXD_Data_reg[9]), .B(RXD_Data_reg[10]), .C(RXD_Data_reg[12]), 
         .Z(n3693)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(113[8] 126[15])
    defparam i2_2_lut_3_lut.init = 16'h0808;
    LUT4 mux_231_Mux_8_i1_3_lut_rep_218 (.A(RXD_Data_reg[9]), .B(\c_data[1] ), 
         .C(RXD_Data_reg[8]), .Z(n9171)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(131[8] 144[15])
    defparam mux_231_Mux_8_i1_3_lut_rep_218.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut (.A(RXD_Data_reg[9]), .B(\c_data[1] ), .C(RXD_Data_reg[8]), 
         .D(RXD_Data_reg[11]), .Z(n4_adj_1100)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(131[8] 144[15])
    defparam i1_2_lut_4_lut.init = 16'hca00;
    LUT4 i7321_4_lut (.A(\c_data[0] ), .B(n8496), .C(n9165), .D(RXD_Data_reg[11]), 
         .Z(n8541)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i7321_4_lut.init = 16'hfaee;
    LUT4 n1618_bdd_4_lut_7704 (.A(n1617[0]), .B(n5_adj_1101), .C(n22_adj_1102), 
         .D(RXD_Data_reg[14]), .Z(n9110)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n1618_bdd_4_lut_7704.init = 16'h88f0;
    LUT4 i1_2_lut_adj_49 (.A(rst_n_c), .B(Load_config), .Z(rst_n_N_1047)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(7[7:12])
    defparam i1_2_lut_adj_49.init = 16'hdddd;
    LUT4 i2_4_lut_4_lut (.A(RXD_Data_reg[9]), .B(RXD_Data_reg[12]), .C(n9158), 
         .D(RXD_Data_reg[10]), .Z(n22_adj_1102)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i2_4_lut_4_lut.init = 16'hd0f0;
    LUT4 i1_2_lut_adj_50 (.A(RXD_Data_reg[11]), .B(RXD_Data_reg[13]), .Z(n5_adj_1101)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_50.init = 16'h2222;
    LUT4 i1_2_lut_adj_51 (.A(State_reg[0]), .B(State_reg[1]), .Z(n603[2])) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1_2_lut_adj_51.init = 16'hbbbb;
    FD1P3IX RXD_Data_reg_i5 (.D(UART_out_CM_data[5]), .SP(clk_c_enable_220), 
            .CD(clk_c_enable_69), .CK(clk_c), .Q(RXD_Data_reg[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i5.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_52 (.A(n3693), .B(n8413), .C(n3525), .D(RXD_Data_reg[11]), 
         .Z(clk_c_enable_48)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1_4_lut_adj_52.init = 16'hc044;
    LUT4 i3147_4_lut (.A(RXD_Data_reg[12]), .B(RXD_Data_reg[9]), .C(RXD_Data_reg[8]), 
         .D(RXD_Data_reg[11]), .Z(n1661[1])) /* synthesis lut_function=(!(A (B (C (D)))+!A (B+!(C (D))))) */ ;
    defparam i3147_4_lut.init = 16'h3aaa;
    PFUMX i7676 (.BLUT(n9201), .ALUT(n9202), .C0(RXD_Data_reg[8]), .Z(n9203));
    
endmodule
//
// Verilog Description of module CM_Assign_Data
//

module CM_Assign_Data (\VGA_Notification[0] , clk_c, Data_VGA, \c_data[0] , 
            c_ready_Assign, button_signal_DEBUG_VGA, c_ready_nxt_N_906, 
            n9125, \c_data[13] , \c_data[12] , Counter_X_Valid, Counter_Y_Valid, 
            n9124, button_signal_HS, button_signal_VS, \c_data[1] , 
            n9148, n8448, Current_Qudran_Config_nxt_1__N_886, VGA_Notification_Valid, 
            \V_BackPorch[1] , clk_c_enable_93, H_Left_Margin_nxt_8__N_959, 
            \H_BackPorch[7] , \H_BackPorch[6] , n9183, \H_BackPorch[5] , 
            \H_BackPorch[4] , \H_BackPorch[3] , \V_FrontPorch_nxt_9__N_804[3] , 
            \c_data[11] , \c_data[10] , \c_data[9] , \c_data[8] , \c_data[7] , 
            \c_data[6] , \c_data[5] , \c_data[4] , \c_data[3] , \c_data[2] , 
            \VGA_Notification[3] , n9391, \VGA_Notification[1] , GND_net, 
            Counter_X, c_valid, c_valid_N_785, Counter_Y, n9153, \H_count_max[8] , 
            H_Count_Max_nxt_11__N_1022, \V_count_max[3] , V_Count_Max_nxt_11__N_1040) /* synthesis syn_module_defined=1 */ ;
    output \VGA_Notification[0] ;
    input clk_c;
    output [11:0]Data_VGA;
    input \c_data[0] ;
    output c_ready_Assign;
    input button_signal_DEBUG_VGA;
    input c_ready_nxt_N_906;
    input n9125;
    input \c_data[13] ;
    input \c_data[12] ;
    input Counter_X_Valid;
    input Counter_Y_Valid;
    input n9124;
    input button_signal_HS;
    input button_signal_VS;
    input \c_data[1] ;
    input n9148;
    input n8448;
    output Current_Qudran_Config_nxt_1__N_886;
    output VGA_Notification_Valid;
    output \V_BackPorch[1] ;
    input clk_c_enable_93;
    input H_Left_Margin_nxt_8__N_959;
    output \H_BackPorch[7] ;
    output \H_BackPorch[6] ;
    input n9183;
    output \H_BackPorch[5] ;
    output \H_BackPorch[4] ;
    output \H_BackPorch[3] ;
    output \V_FrontPorch_nxt_9__N_804[3] ;
    input \c_data[11] ;
    input \c_data[10] ;
    input \c_data[9] ;
    input \c_data[8] ;
    input \c_data[7] ;
    input \c_data[6] ;
    input \c_data[5] ;
    input \c_data[4] ;
    input \c_data[3] ;
    input \c_data[2] ;
    output \VGA_Notification[3] ;
    input n9391;
    output \VGA_Notification[1] ;
    input GND_net;
    input [9:0]Counter_X;
    input c_valid;
    output c_valid_N_785;
    input [9:0]Counter_Y;
    input n9153;
    input \H_count_max[8] ;
    output H_Count_Max_nxt_11__N_1022;
    input \V_count_max[3] ;
    output V_Count_Max_nxt_11__N_1040;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [11:0]n1177;
    wire [11:0]n1266;
    
    wire n8580;
    wire [11:0]n1161;
    
    wire clk_c_enable_157;
    wire [1:0]Current_Qudran_Config_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(48[26:51])
    
    wire clk_c_enable_151;
    wire [11:0]Left_UP_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(40[23:34])
    
    wire clk_c_enable_139;
    wire [11:0]Left_DOWN_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(41[23:36])
    
    wire clk_c_enable_128;
    wire [11:0]Right_UP_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(42[23:35])
    
    wire clk_c_enable_117;
    wire [11:0]Right_DOWN_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(43[23:37])
    
    wire clk_c_enable_106, clk_c_enable_95;
    wire [1:0]Current_Qudran_Config_nxt_1__N_757;
    wire [1:0]Previous_Qudran_Config_reg;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(49[26:52])
    
    wire n8089;
    wire [11:0]n1190;
    
    wire n1337;
    wire [11:0]n1232;
    
    wire n8492, n523, n521, n9199, n9198;
    wire [3:0]VGA_Notification_nxt_3__N_889;
    
    wire n8486, n1329, n6, n13, n8067, n8964, n9133, n15, n8069, 
        n1343, VGA_Notification_nxt_3__N_893, n5, n11, n8634, n8963, 
        n16;
    wire [7:0]H_BackPorch_nxt_7__N_774;
    
    wire n9187, n9, n7717, n7716, n7715, n7714, n7713, n8965, 
        n7700, n7699, n7698, n7697, n7696;
    
    PFUMX mux_731_i4 (.BLUT(n1177[3]), .ALUT(n1266[3]), .C0(n8580), .Z(n1161[3]));
    FD1P3AX VGA_Notification_reg_i0_i0 (.D(Current_Qudran_Config_reg[0]), 
            .SP(clk_c_enable_157), .CK(clk_c), .Q(\VGA_Notification[0] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam VGA_Notification_reg_i0_i0.GSR = "ENABLED";
    PFUMX mux_731_i1 (.BLUT(n1177[0]), .ALUT(n1266[0]), .C0(n8580), .Z(n1161[0]));
    FD1P3AX Data_VGA_reg_i0_i0 (.D(n1161[0]), .SP(clk_c_enable_151), .CK(clk_c), 
            .Q(Data_VGA[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i0 (.D(\c_data[0] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i0 (.D(\c_data[0] ), .SP(clk_c_enable_128), 
            .CK(clk_c), .Q(Left_DOWN_reg[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i0 (.D(\c_data[0] ), .SP(clk_c_enable_117), 
            .CK(clk_c), .Q(Right_UP_reg[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i0 (.D(\c_data[0] ), .SP(clk_c_enable_106), 
            .CK(clk_c), .Q(Right_DOWN_reg[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX Current_Qudran_Config_reg_i0_i0 (.D(Current_Qudran_Config_nxt_1__N_757[0]), 
            .SP(clk_c_enable_95), .CK(clk_c), .Q(Current_Qudran_Config_reg[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Current_Qudran_Config_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX Previous_Qudran_Config_reg_i0_i0 (.D(Current_Qudran_Config_reg[0]), 
            .SP(clk_c_enable_95), .CK(clk_c), .Q(Previous_Qudran_Config_reg[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Previous_Qudran_Config_reg_i0_i0.GSR = "ENABLED";
    PFUMX mux_731_i12 (.BLUT(n1177[11]), .ALUT(n8089), .C0(n8580), .Z(n1161[11]));
    FD1S3JX c_ready_reg_118 (.D(c_ready_nxt_N_906), .CK(clk_c), .PD(button_signal_DEBUG_VGA), 
            .Q(c_ready_Assign)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam c_ready_reg_118.GSR = "ENABLED";
    PFUMX mux_742_i2 (.BLUT(n1177[1]), .ALUT(n1190[1]), .C0(n1337), .Z(n1232[1]));
    LUT4 i1_2_lut_3_lut_4_lut (.A(n9125), .B(button_signal_DEBUG_VGA), .C(\c_data[13] ), 
         .D(\c_data[12] ), .Z(clk_c_enable_106)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_4_lut_then_4_lut (.A(n8492), .B(Current_Qudran_Config_reg[0]), 
         .C(n523), .D(n521), .Z(n9199)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (D)))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0015;
    LUT4 i1_4_lut_else_4_lut (.A(n8492), .B(Current_Qudran_Config_reg[0]), 
         .C(n523), .Z(n9198)) /* synthesis lut_function=(!(A+(B (C)))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h1515;
    LUT4 i7494_2_lut_3_lut_4_lut (.A(n9125), .B(button_signal_DEBUG_VGA), 
         .C(\c_data[13] ), .D(\c_data[12] ), .Z(clk_c_enable_139)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7494_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i7456_2_lut_3_lut_4_lut (.A(n9125), .B(button_signal_DEBUG_VGA), 
         .C(\c_data[13] ), .D(\c_data[12] ), .Z(clk_c_enable_128)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i7456_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i4345_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[6]), .D(button_signal_DEBUG_VGA), .Z(n1190[6])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i4345_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i3_4_lut (.A(VGA_Notification_nxt_3__N_889[1]), .B(n8486), .C(n521), 
         .D(n8492), .Z(n1329)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0020;
    LUT4 i7269_2_lut (.A(n523), .B(Current_Qudran_Config_reg[0]), .Z(n8486)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7269_2_lut.init = 16'h8888;
    LUT4 i7275_2_lut_3_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), .C(button_signal_DEBUG_VGA), 
         .Z(n8492)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i7275_2_lut_3_lut.init = 16'hf7f7;
    LUT4 i7467_4_lut_rep_199_2_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .Z(clk_c_enable_151)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i7467_4_lut_rep_199_2_lut.init = 16'h8888;
    LUT4 i4348_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[9]), .D(button_signal_DEBUG_VGA), .Z(n1190[9])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i4348_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i4341_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[2]), .D(button_signal_DEBUG_VGA), .Z(n1190[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i4341_2_lut_3_lut_4_lut.init = 16'h70f0;
    PFUMX i30 (.BLUT(n6), .ALUT(n13), .C0(n8580), .Z(n8067));
    LUT4 n7_bdd_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[4]), .D(button_signal_DEBUG_VGA), .Z(n8964)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam n7_bdd_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i1804_4_lut (.A(n9124), .B(button_signal_HS), .C(button_signal_VS), 
         .D(\c_data[1] ), .Z(Current_Qudran_Config_nxt_1__N_757[1])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(204[9] 211[7])
    defparam i1804_4_lut.init = 16'hcecc;
    LUT4 i7582_2_lut_3_lut_4_lut (.A(n9148), .B(n8448), .C(button_signal_DEBUG_VGA), 
         .D(Current_Qudran_Config_nxt_1__N_886), .Z(clk_c_enable_95)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;
    defparam i7582_2_lut_3_lut_4_lut.init = 16'h0f04;
    LUT4 i4344_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[5]), .D(button_signal_DEBUG_VGA), .Z(n1190[5])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i4344_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i1_2_lut_rep_180_2_lut_2_lut_3_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(button_signal_DEBUG_VGA), .Z(n9133)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i1_2_lut_rep_180_2_lut_2_lut_3_lut.init = 16'h8080;
    LUT4 i4340_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[1]), .D(button_signal_DEBUG_VGA), .Z(n1190[1])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i4340_2_lut_3_lut_4_lut.init = 16'h70f0;
    PFUMX i34 (.BLUT(n1177[4]), .ALUT(n15), .C0(n8580), .Z(n8069));
    LUT4 mux_731_i11_4_lut (.A(n9133), .B(Left_UP_reg[10]), .C(n1343), 
         .D(n1232[10]), .Z(n1161[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_731_i11_4_lut.init = 16'hcfca;
    LUT4 mux_731_i10_4_lut (.A(n9133), .B(Left_UP_reg[9]), .C(n1343), 
         .D(n1232[9]), .Z(n1161[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_731_i10_4_lut.init = 16'hcfca;
    LUT4 mux_731_i9_4_lut (.A(n9133), .B(Left_UP_reg[8]), .C(n1343), .D(n1232[8]), 
         .Z(n1161[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_731_i9_4_lut.init = 16'hcfca;
    LUT4 mux_731_i7_4_lut (.A(n9133), .B(Left_UP_reg[6]), .C(n1343), .D(n1232[6]), 
         .Z(n1161[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_731_i7_4_lut.init = 16'hcfca;
    LUT4 mux_731_i6_4_lut (.A(n9133), .B(Left_UP_reg[5]), .C(n1343), .D(n1232[5]), 
         .Z(n1161[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_731_i6_4_lut.init = 16'hcfca;
    LUT4 i4347_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[8]), .D(button_signal_DEBUG_VGA), .Z(n1190[8])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i4347_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i4349_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[10]), .D(button_signal_DEBUG_VGA), .Z(n1190[10])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i4349_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 mux_731_i3_4_lut (.A(n1232[2]), .B(Left_UP_reg[2]), .C(n1343), 
         .D(n9133), .Z(n1161[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_731_i3_4_lut.init = 16'hc0ca;
    FD1S3IX VGA_Notification_Valid_reg_119 (.D(VGA_Notification_nxt_3__N_893), 
            .CK(clk_c), .CD(button_signal_DEBUG_VGA), .Q(VGA_Notification_Valid)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam VGA_Notification_Valid_reg_119.GSR = "ENABLED";
    LUT4 mux_731_i2_4_lut (.A(n1232[1]), .B(Left_UP_reg[1]), .C(n1343), 
         .D(n9133), .Z(n1161[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_731_i2_4_lut.init = 16'hc0ca;
    PFUMX mux_742_i11 (.BLUT(n1177[10]), .ALUT(n1190[10]), .C0(n1337), 
          .Z(n1232[10]));
    LUT4 i3_4_lut_adj_26 (.A(n5), .B(clk_c_enable_151), .C(n11), .D(n8634), 
         .Z(n1337)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam i3_4_lut_adj_26.init = 16'h0080;
    PFUMX mux_742_i10 (.BLUT(n1177[9]), .ALUT(n1190[9]), .C0(n1337), .Z(n1232[9]));
    LUT4 n7_bdd_2_lut_7592 (.A(n521), .B(n523), .Z(n8963)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam n7_bdd_2_lut_7592.init = 16'hbbbb;
    PFUMX mux_742_i9 (.BLUT(n1177[8]), .ALUT(n1190[8]), .C0(n1337), .Z(n1232[8]));
    PFUMX mux_742_i7 (.BLUT(n1177[6]), .ALUT(n1190[6]), .C0(n1337), .Z(n1232[6]));
    LUT4 i1_2_lut (.A(VGA_Notification_nxt_3__N_889[1]), .B(Current_Qudran_Config_reg[0]), 
         .Z(n11)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(48[26:51])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i7436_2_lut (.A(n521), .B(n523), .Z(n8634)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam i7436_2_lut.init = 16'h6666;
    LUT4 Horizontal_Split_I_0_2_lut (.A(button_signal_HS), .B(button_signal_VS), 
         .Z(Current_Qudran_Config_nxt_1__N_886)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(199[7:40])
    defparam Horizontal_Split_I_0_2_lut.init = 16'heeee;
    PFUMX mux_742_i6 (.BLUT(n1177[5]), .ALUT(n1190[5]), .C0(n1337), .Z(n1232[5]));
    PFUMX mux_742_i3 (.BLUT(n1177[2]), .ALUT(n1190[2]), .C0(n1337), .Z(n1232[2]));
    LUT4 i1_2_lut_3_lut_4_lut_adj_27 (.A(button_signal_DEBUG_VGA), .B(clk_c_enable_151), 
         .C(n523), .D(n521), .Z(n5)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(C+(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam i1_2_lut_3_lut_4_lut_adj_27.init = 16'h7770;
    LUT4 i31_4_lut_4_lut_4_lut_4_lut (.A(button_signal_DEBUG_VGA), .B(clk_c_enable_151), 
         .C(Right_DOWN_reg[7]), .D(n521), .Z(n16)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam i31_4_lut_4_lut_4_lut_4_lut.init = 16'hf870;
    FD1P3AY V_BackPorch_reg_i0_i1 (.D(H_Left_Margin_nxt_8__N_959), .SP(clk_c_enable_93), 
            .CK(clk_c), .Q(\V_BackPorch[1] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam V_BackPorch_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX H_BackPorch_reg_i0_i7 (.D(\c_data[1] ), .SP(clk_c_enable_93), 
            .CK(clk_c), .Q(\H_BackPorch[7] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam H_BackPorch_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX H_BackPorch_reg_i0_i6 (.D(n9183), .SP(clk_c_enable_93), .CK(clk_c), 
            .Q(\H_BackPorch[6] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam H_BackPorch_reg_i0_i6.GSR = "ENABLED";
    FD1P3AY H_BackPorch_reg_i0_i5 (.D(H_BackPorch_nxt_7__N_774[5]), .SP(clk_c_enable_93), 
            .CK(clk_c), .Q(\H_BackPorch[5] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam H_BackPorch_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX H_BackPorch_reg_i0_i4 (.D(n9187), .SP(clk_c_enable_93), .CK(clk_c), 
            .Q(\H_BackPorch[4] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam H_BackPorch_reg_i0_i4.GSR = "ENABLED";
    FD1P3AY H_BackPorch_reg_i0_i3 (.D(\V_FrontPorch_nxt_9__N_804[3] ), .SP(clk_c_enable_93), 
            .CK(clk_c), .Q(\H_BackPorch[3] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam H_BackPorch_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX Previous_Qudran_Config_reg_i0_i1 (.D(VGA_Notification_nxt_3__N_889[1]), 
            .SP(clk_c_enable_95), .CK(clk_c), .Q(Previous_Qudran_Config_reg[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Previous_Qudran_Config_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX Current_Qudran_Config_reg_i0_i1 (.D(Current_Qudran_Config_nxt_1__N_757[1]), 
            .SP(clk_c_enable_95), .CK(clk_c), .Q(VGA_Notification_nxt_3__N_889[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Current_Qudran_Config_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i11 (.D(\c_data[11] ), .SP(clk_c_enable_106), 
            .CK(clk_c), .Q(Right_DOWN_reg[11])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i10 (.D(\c_data[10] ), .SP(clk_c_enable_106), 
            .CK(clk_c), .Q(Right_DOWN_reg[10])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i9 (.D(\c_data[9] ), .SP(clk_c_enable_106), 
            .CK(clk_c), .Q(Right_DOWN_reg[9])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i8 (.D(\c_data[8] ), .SP(clk_c_enable_106), 
            .CK(clk_c), .Q(Right_DOWN_reg[8])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i7 (.D(\c_data[7] ), .SP(clk_c_enable_106), 
            .CK(clk_c), .Q(Right_DOWN_reg[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i6 (.D(\c_data[6] ), .SP(clk_c_enable_106), 
            .CK(clk_c), .Q(Right_DOWN_reg[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i5 (.D(\c_data[5] ), .SP(clk_c_enable_106), 
            .CK(clk_c), .Q(Right_DOWN_reg[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i4 (.D(\c_data[4] ), .SP(clk_c_enable_106), 
            .CK(clk_c), .Q(Right_DOWN_reg[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i3 (.D(\c_data[3] ), .SP(clk_c_enable_106), 
            .CK(clk_c), .Q(Right_DOWN_reg[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i2 (.D(\c_data[2] ), .SP(clk_c_enable_106), 
            .CK(clk_c), .Q(Right_DOWN_reg[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i1 (.D(\c_data[1] ), .SP(clk_c_enable_106), 
            .CK(clk_c), .Q(Right_DOWN_reg[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i11 (.D(\c_data[11] ), .SP(clk_c_enable_117), 
            .CK(clk_c), .Q(Right_UP_reg[11])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i10 (.D(\c_data[10] ), .SP(clk_c_enable_117), 
            .CK(clk_c), .Q(Right_UP_reg[10])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i9 (.D(\c_data[9] ), .SP(clk_c_enable_117), 
            .CK(clk_c), .Q(Right_UP_reg[9])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i8 (.D(\c_data[8] ), .SP(clk_c_enable_117), 
            .CK(clk_c), .Q(Right_UP_reg[8])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i7 (.D(\c_data[7] ), .SP(clk_c_enable_117), 
            .CK(clk_c), .Q(Right_UP_reg[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i6 (.D(\c_data[6] ), .SP(clk_c_enable_117), 
            .CK(clk_c), .Q(Right_UP_reg[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i5 (.D(\c_data[5] ), .SP(clk_c_enable_117), 
            .CK(clk_c), .Q(Right_UP_reg[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i4 (.D(\c_data[4] ), .SP(clk_c_enable_117), 
            .CK(clk_c), .Q(Right_UP_reg[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i3 (.D(\c_data[3] ), .SP(clk_c_enable_117), 
            .CK(clk_c), .Q(Right_UP_reg[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i2 (.D(\c_data[2] ), .SP(clk_c_enable_117), 
            .CK(clk_c), .Q(Right_UP_reg[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i1 (.D(\c_data[1] ), .SP(clk_c_enable_117), 
            .CK(clk_c), .Q(Right_UP_reg[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i11 (.D(\c_data[11] ), .SP(clk_c_enable_128), 
            .CK(clk_c), .Q(Left_DOWN_reg[11])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i10 (.D(\c_data[10] ), .SP(clk_c_enable_128), 
            .CK(clk_c), .Q(Left_DOWN_reg[10])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i9 (.D(\c_data[9] ), .SP(clk_c_enable_128), 
            .CK(clk_c), .Q(Left_DOWN_reg[9])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i8 (.D(\c_data[8] ), .SP(clk_c_enable_128), 
            .CK(clk_c), .Q(Left_DOWN_reg[8])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i7 (.D(\c_data[7] ), .SP(clk_c_enable_128), 
            .CK(clk_c), .Q(Left_DOWN_reg[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i6 (.D(\c_data[6] ), .SP(clk_c_enable_128), 
            .CK(clk_c), .Q(Left_DOWN_reg[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i5 (.D(\c_data[5] ), .SP(clk_c_enable_128), 
            .CK(clk_c), .Q(Left_DOWN_reg[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i4 (.D(\c_data[4] ), .SP(clk_c_enable_128), 
            .CK(clk_c), .Q(Left_DOWN_reg[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i3 (.D(\c_data[3] ), .SP(clk_c_enable_128), 
            .CK(clk_c), .Q(Left_DOWN_reg[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i2 (.D(\c_data[2] ), .SP(clk_c_enable_128), 
            .CK(clk_c), .Q(Left_DOWN_reg[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i1 (.D(\c_data[1] ), .SP(clk_c_enable_128), 
            .CK(clk_c), .Q(Left_DOWN_reg[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i11 (.D(\c_data[11] ), .SP(clk_c_enable_139), 
            .CK(clk_c), .Q(Left_UP_reg[11])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i10 (.D(\c_data[10] ), .SP(clk_c_enable_139), 
            .CK(clk_c), .Q(Left_UP_reg[10])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i9 (.D(\c_data[9] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[9])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i8 (.D(\c_data[8] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[8])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i7 (.D(\c_data[7] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i6 (.D(\c_data[6] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i5 (.D(\c_data[5] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i4 (.D(\c_data[4] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i3 (.D(\c_data[3] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i2 (.D(\c_data[2] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i1 (.D(\c_data[1] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i11 (.D(n1161[11]), .SP(clk_c_enable_151), .CK(clk_c), 
            .Q(Data_VGA[11])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i11.GSR = "ENABLED";
    LUT4 mux_742_i1_4_lut_4_lut_4_lut_4_lut_4_lut (.A(button_signal_DEBUG_VGA), 
         .B(clk_c_enable_151), .C(Right_DOWN_reg[0]), .D(n523), .Z(n1232[0])) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_742_i1_4_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h70f8;
    LUT4 i7477_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(button_signal_DEBUG_VGA), 
         .B(clk_c_enable_151), .C(n1337), .D(n1343), .Z(n8580)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam i7477_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hfff8;
    FD1P3AX Data_VGA_reg_i0_i10 (.D(n1161[10]), .SP(clk_c_enable_151), .CK(clk_c), 
            .Q(Data_VGA[10])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i9 (.D(n1161[9]), .SP(clk_c_enable_151), .CK(clk_c), 
            .Q(Data_VGA[9])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i8 (.D(n1161[8]), .SP(clk_c_enable_151), .CK(clk_c), 
            .Q(Data_VGA[8])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i7 (.D(n8067), .SP(clk_c_enable_151), .CK(clk_c), 
            .Q(Data_VGA[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i6 (.D(n1161[6]), .SP(clk_c_enable_151), .CK(clk_c), 
            .Q(Data_VGA[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i5 (.D(n1161[5]), .SP(clk_c_enable_151), .CK(clk_c), 
            .Q(Data_VGA[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i4 (.D(n8069), .SP(clk_c_enable_151), .CK(clk_c), 
            .Q(Data_VGA[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i3 (.D(n1161[3]), .SP(clk_c_enable_151), .CK(clk_c), 
            .Q(Data_VGA[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i2 (.D(n1161[2]), .SP(clk_c_enable_151), .CK(clk_c), 
            .Q(Data_VGA[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i1 (.D(n1161[1]), .SP(clk_c_enable_151), .CK(clk_c), 
            .Q(Data_VGA[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX VGA_Notification_reg_i0_i3 (.D(n9391), .SP(clk_c_enable_157), 
            .CK(clk_c), .Q(\VGA_Notification[3] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam VGA_Notification_reg_i0_i3.GSR = "ENABLED";
    LUT4 i23_4_lut_4_lut_4_lut_4_lut (.A(button_signal_DEBUG_VGA), .B(clk_c_enable_151), 
         .C(n521), .D(Right_DOWN_reg[11]), .Z(n9)) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam i23_4_lut_4_lut_4_lut_4_lut.init = 16'h7f08;
    LUT4 mux_742_i4_4_lut_4_lut_4_lut_4_lut_4_lut (.A(button_signal_DEBUG_VGA), 
         .B(clk_c_enable_151), .C(Right_DOWN_reg[3]), .D(n523), .Z(n1232[3])) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_742_i4_4_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h70f8;
    FD1P3AX VGA_Notification_reg_i0_i1 (.D(VGA_Notification_nxt_3__N_889[1]), 
            .SP(clk_c_enable_157), .CK(clk_c), .Q(\VGA_Notification[1] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam VGA_Notification_reg_i0_i1.GSR = "ENABLED";
    CCU2D sub_1030_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7717), .S0(n523));
    defparam sub_1030_add_2_cout.INIT0 = 16'h0000;
    defparam sub_1030_add_2_cout.INIT1 = 16'h0000;
    defparam sub_1030_add_2_cout.INJECT1_0 = "NO";
    defparam sub_1030_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_1030_add_2_10 (.A0(Counter_X[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7716), .COUT(n7717));
    defparam sub_1030_add_2_10.INIT0 = 16'h5aaa;
    defparam sub_1030_add_2_10.INIT1 = 16'h5555;
    defparam sub_1030_add_2_10.INJECT1_0 = "NO";
    defparam sub_1030_add_2_10.INJECT1_1 = "NO";
    LUT4 mux_735_i6_3_lut (.A(Right_UP_reg[5]), .B(Left_DOWN_reg[5]), .C(n1329), 
         .Z(n1177[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_735_i6_3_lut.init = 16'hcaca;
    CCU2D sub_1030_add_2_8 (.A0(Counter_X[6]), .B0(\H_BackPorch[7] ), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[7]), .B1(\H_BackPorch[4] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n7715), .COUT(n7716));
    defparam sub_1030_add_2_8.INIT0 = 16'h5999;
    defparam sub_1030_add_2_8.INIT1 = 16'h5999;
    defparam sub_1030_add_2_8.INJECT1_0 = "NO";
    defparam sub_1030_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_1030_add_2_6 (.A0(Counter_X[4]), .B0(\H_BackPorch[3] ), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[5]), .B1(\H_BackPorch[3] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n7714), .COUT(n7715));
    defparam sub_1030_add_2_6.INIT0 = 16'h5999;
    defparam sub_1030_add_2_6.INIT1 = 16'h5999;
    defparam sub_1030_add_2_6.INJECT1_0 = "NO";
    defparam sub_1030_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_1030_add_2_4 (.A0(Counter_X[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7713), .COUT(n7714));
    defparam sub_1030_add_2_4.INIT0 = 16'h5aaa;
    defparam sub_1030_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_1030_add_2_4.INJECT1_0 = "NO";
    defparam sub_1030_add_2_4.INJECT1_1 = "NO";
    LUT4 mux_735_i7_3_lut (.A(Right_UP_reg[6]), .B(Left_DOWN_reg[6]), .C(n1329), 
         .Z(n1177[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_735_i7_3_lut.init = 16'hcaca;
    LUT4 mux_735_i9_3_lut (.A(Right_UP_reg[8]), .B(Left_DOWN_reg[8]), .C(n1329), 
         .Z(n1177[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_735_i9_3_lut.init = 16'hcaca;
    LUT4 i4148_2_lut (.A(\c_data[0] ), .B(\c_data[1] ), .Z(\V_FrontPorch_nxt_9__N_804[3] )) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam i4148_2_lut.init = 16'hdddd;
    LUT4 mux_735_i10_3_lut (.A(Right_UP_reg[9]), .B(Left_DOWN_reg[9]), .C(n1329), 
         .Z(n1177[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_735_i10_3_lut.init = 16'hcaca;
    LUT4 mux_735_i11_3_lut (.A(Right_UP_reg[10]), .B(Left_DOWN_reg[10]), 
         .C(n1329), .Z(n1177[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_735_i11_3_lut.init = 16'hcaca;
    CCU2D sub_1030_add_2_2 (.A0(Counter_X[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7713));
    defparam sub_1030_add_2_2.INIT0 = 16'h5000;
    defparam sub_1030_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_1030_add_2_2.INJECT1_0 = "NO";
    defparam sub_1030_add_2_2.INJECT1_1 = "NO";
    LUT4 i36_3_lut (.A(n8965), .B(Left_UP_reg[4]), .C(n1343), .Z(n15)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam i36_3_lut.init = 16'hcaca;
    LUT4 mux_735_i5_3_lut (.A(Right_UP_reg[4]), .B(Left_DOWN_reg[4]), .C(n1329), 
         .Z(n1177[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_735_i5_3_lut.init = 16'hcaca;
    LUT4 c_valid_I_0_1_lut (.A(c_valid), .Z(c_valid_N_785)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(144[36:54])
    defparam c_valid_I_0_1_lut.init = 16'h5555;
    LUT4 i32_3_lut (.A(n16), .B(Left_UP_reg[7]), .C(n1343), .Z(n13)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam i32_3_lut.init = 16'hcaca;
    LUT4 i10_3_lut (.A(Right_UP_reg[7]), .B(Left_DOWN_reg[7]), .C(n1329), 
         .Z(n6)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i10_3_lut.init = 16'hcaca;
    CCU2D sub_1032_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7700), .S0(n521));
    defparam sub_1032_add_2_cout.INIT0 = 16'h0000;
    defparam sub_1032_add_2_cout.INIT1 = 16'h0000;
    defparam sub_1032_add_2_cout.INJECT1_0 = "NO";
    defparam sub_1032_add_2_cout.INJECT1_1 = "NO";
    PFUMX i7593 (.BLUT(n8964), .ALUT(n8963), .C0(n9133), .Z(n8965));
    LUT4 i450_2_lut (.A(VGA_Notification_nxt_3__N_893), .B(button_signal_DEBUG_VGA), 
         .Z(clk_c_enable_157)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam i450_2_lut.init = 16'h2222;
    LUT4 Previous_Qudran_Config_reg_1__I_0_i3_4_lut (.A(Previous_Qudran_Config_reg[0]), 
         .B(Previous_Qudran_Config_reg[1]), .C(Current_Qudran_Config_reg[0]), 
         .D(VGA_Notification_nxt_3__N_889[1]), .Z(VGA_Notification_nxt_3__N_893)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(214[7:62])
    defparam Previous_Qudran_Config_reg_1__I_0_i3_4_lut.init = 16'h7bde;
    LUT4 i22_3_lut (.A(n9), .B(Left_UP_reg[11]), .C(n1343), .Z(n8089)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam i22_3_lut.init = 16'hcaca;
    LUT4 mux_735_i2_3_lut (.A(Right_UP_reg[1]), .B(Left_DOWN_reg[1]), .C(n1329), 
         .Z(n1177[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_735_i2_3_lut.init = 16'hcaca;
    LUT4 mux_735_i12_3_lut (.A(Right_UP_reg[11]), .B(Left_DOWN_reg[11]), 
         .C(n1329), .Z(n1177[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_735_i12_3_lut.init = 16'hcaca;
    CCU2D sub_1032_add_2_10 (.A0(Counter_Y[8]), .B0(\H_BackPorch[4] ), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7699), .COUT(n7700));
    defparam sub_1032_add_2_10.INIT0 = 16'h5999;
    defparam sub_1032_add_2_10.INIT1 = 16'h5555;
    defparam sub_1032_add_2_10.INJECT1_0 = "NO";
    defparam sub_1032_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_1032_add_2_8 (.A0(Counter_Y[6]), .B0(\H_BackPorch[3] ), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[7]), .B1(\H_BackPorch[5] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n7698), .COUT(n7699));
    defparam sub_1032_add_2_8.INIT0 = 16'h5999;
    defparam sub_1032_add_2_8.INIT1 = 16'h5999;
    defparam sub_1032_add_2_8.INJECT1_0 = "NO";
    defparam sub_1032_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_1032_add_2_6 (.A0(Counter_Y[4]), .B0(\H_BackPorch[7] ), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7697), .COUT(n7698));
    defparam sub_1032_add_2_6.INIT0 = 16'h5999;
    defparam sub_1032_add_2_6.INIT1 = 16'h5aaa;
    defparam sub_1032_add_2_6.INJECT1_0 = "NO";
    defparam sub_1032_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_1032_add_2_4 (.A0(Counter_Y[2]), .B0(\H_BackPorch[3] ), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7696), .COUT(n7697));
    defparam sub_1032_add_2_4.INIT0 = 16'h5999;
    defparam sub_1032_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_1032_add_2_4.INJECT1_0 = "NO";
    defparam sub_1032_add_2_4.INJECT1_1 = "NO";
    LUT4 mux_752_i1_3_lut (.A(n1232[0]), .B(Left_UP_reg[0]), .C(n1343), 
         .Z(n1266[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_752_i1_3_lut.init = 16'hcaca;
    CCU2D sub_1032_add_2_2 (.A0(Counter_Y[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7696));
    defparam sub_1032_add_2_2.INIT0 = 16'h5000;
    defparam sub_1032_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_1032_add_2_2.INJECT1_0 = "NO";
    defparam sub_1032_add_2_2.INJECT1_1 = "NO";
    LUT4 i4278_2_lut_rep_234 (.A(\c_data[0] ), .B(\c_data[1] ), .Z(n9187)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam i4278_2_lut_rep_234.init = 16'heeee;
    LUT4 i4449_1_lut_2_lut (.A(\c_data[0] ), .B(\c_data[1] ), .Z(H_BackPorch_nxt_7__N_774[5])) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam i4449_1_lut_2_lut.init = 16'h1111;
    LUT4 H_count_max_8__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(\H_count_max[8] ), .Z(H_Count_Max_nxt_11__N_1022)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_count_max_8__I_0_3_lut_4_lut.init = 16'h1f10;
    LUT4 mux_735_i1_3_lut (.A(Right_UP_reg[0]), .B(Left_DOWN_reg[0]), .C(n1329), 
         .Z(n1177[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_735_i1_3_lut.init = 16'hcaca;
    LUT4 V_count_max_3__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n9153), .D(\V_count_max[3] ), .Z(V_Count_Max_nxt_11__N_1040)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_count_max_3__I_0_3_lut_4_lut.init = 16'h1f10;
    LUT4 mux_752_i4_3_lut (.A(n1232[3]), .B(Left_UP_reg[3]), .C(n1343), 
         .Z(n1266[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_752_i4_3_lut.init = 16'hcaca;
    LUT4 mux_735_i3_3_lut (.A(Right_UP_reg[2]), .B(Left_DOWN_reg[2]), .C(n1329), 
         .Z(n1177[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_735_i3_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_28 (.A(n9125), .B(button_signal_DEBUG_VGA), 
         .C(\c_data[13] ), .D(\c_data[12] ), .Z(clk_c_enable_117)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_28.init = 16'h0100;
    LUT4 mux_735_i4_3_lut (.A(Right_UP_reg[3]), .B(Left_DOWN_reg[3]), .C(n1329), 
         .Z(n1177[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_735_i4_3_lut.init = 16'hcaca;
    LUT4 i1484_4_lut (.A(n9124), .B(button_signal_VS), .C(button_signal_HS), 
         .D(\c_data[0] ), .Z(Current_Qudran_Config_nxt_1__N_757[0])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cm_assign_data.v(204[9] 211[7])
    defparam i1484_4_lut.init = 16'hcecc;
    PFUMX i7674 (.BLUT(n9198), .ALUT(n9199), .C0(VGA_Notification_nxt_3__N_889[1]), 
          .Z(n1343));
    
endmodule
//
// Verilog Description of module CD
//

module CD (GND_net, clk_VGA, clk_c, rst_n_N_52, counter_31__N_85, 
           clk_UART, rst_n_N_144, clkout_N_203, counter, n127, \counter_23__N_178[10] , 
           \counter_23__N_178[8] , \counter_23__N_178[9] , \counter_23__N_178[6] , 
           \counter_23__N_178[7] , \counter_23__N_178[4] , \counter_23__N_178[5] , 
           \counter_23__N_178[2] , \counter_23__N_178[3] , \counter_23__N_178[1] , 
           n101, clk_LM, counter_31__N_85_adj_1, clk_DB, counter_31__N_85_adj_2, 
           \V_FrontPorch_nxt_9__N_804[3] , c_VGA_ready, n5259, c_UART_ready, 
           c_valid_N_785, n9112, \c_data[1] , \c_data[2] , \c_data[0] , 
           c_addr, c_valid, n9125, H_BackPorch_nxt_7__N_782, Current_Qudran_Config_nxt_1__N_886, 
           n8448, n3408, n9189, H_Left_Margin_nxt_8__N_959, \baudrate_next_23__N_262[6] , 
           \c_data[1]_derived_1 , n9163, clk_VGA_enable_1, n9147, c_ready_next_N_346, 
           n9148, n9124) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output clk_VGA;
    input clk_c;
    input rst_n_N_52;
    output counter_31__N_85;
    output clk_UART;
    input rst_n_N_144;
    input clkout_N_203;
    output [23:0]counter;
    input [23:0]n127;
    output \counter_23__N_178[10] ;
    output \counter_23__N_178[8] ;
    output \counter_23__N_178[9] ;
    output \counter_23__N_178[6] ;
    output \counter_23__N_178[7] ;
    output \counter_23__N_178[4] ;
    output \counter_23__N_178[5] ;
    output \counter_23__N_178[2] ;
    output \counter_23__N_178[3] ;
    output \counter_23__N_178[1] ;
    output [23:0]n101;
    output clk_LM;
    output counter_31__N_85_adj_1;
    output clk_DB;
    output counter_31__N_85_adj_2;
    input \V_FrontPorch_nxt_9__N_804[3] ;
    output c_VGA_ready;
    input n5259;
    output c_UART_ready;
    input c_valid_N_785;
    input n9112;
    input \c_data[1] ;
    input \c_data[2] ;
    input \c_data[0] ;
    input [3:0]c_addr;
    input c_valid;
    output n9125;
    output H_BackPorch_nxt_7__N_782;
    input Current_Qudran_Config_nxt_1__N_886;
    input n8448;
    output n3408;
    input n9189;
    input H_Left_Margin_nxt_8__N_959;
    input \baudrate_next_23__N_262[6] ;
    input \c_data[1]_derived_1 ;
    output n9163;
    output clk_VGA_enable_1;
    output n9147;
    output c_ready_next_N_346;
    output n9148;
    output n9124;
    
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(36[6:13])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(37[6:14])
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(39[6:12])
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(38[6:12])
    wire [31:0]resolution;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd.v(39[32:42])
    wire [23:0]baudrate;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd.v(38[32:40])
    
    \CD_counter(WIDTH=32)  CNT_VGA (.GND_net(GND_net), .clk_VGA(clk_VGA), 
            .clk_c(clk_c), .rst_n_N_52(rst_n_N_52), .counter_31__N_85(counter_31__N_85), 
            .\resolution[1] (resolution[1]), .\resolution[0] (resolution[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd.v(41[43:126])
    \CD_counter(WIDTH=24)  CNT_UART (.clk_UART(clk_UART), .clk_c(clk_c), 
            .rst_n_N_144(rst_n_N_144), .clkout_N_203(clkout_N_203), .counter({counter}), 
            .n127({n127}), .GND_net(GND_net), .\counter_23__N_178[10] (\counter_23__N_178[10] ), 
            .\baudrate[8] (baudrate[8]), .\counter_23__N_178[8] (\counter_23__N_178[8] ), 
            .\counter_23__N_178[9] (\counter_23__N_178[9] ), .\baudrate[6] (baudrate[6]), 
            .\baudrate[7] (baudrate[7]), .\counter_23__N_178[6] (\counter_23__N_178[6] ), 
            .\counter_23__N_178[7] (\counter_23__N_178[7] ), .\baudrate[4] (baudrate[4]), 
            .\baudrate[5] (baudrate[5]), .\counter_23__N_178[4] (\counter_23__N_178[4] ), 
            .\counter_23__N_178[5] (\counter_23__N_178[5] ), .\baudrate[2] (baudrate[2]), 
            .\baudrate[3] (baudrate[3]), .\counter_23__N_178[2] (\counter_23__N_178[2] ), 
            .\counter_23__N_178[3] (\counter_23__N_178[3] ), .\baudrate[1] (baudrate[1]), 
            .\counter_23__N_178[1] (\counter_23__N_178[1] ), .n101({n101})) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd.v(42[44:128])
    \CD_counter(WIDTH=32)_U5  CNT_LM (.clk_LM(clk_LM), .clk_c(clk_c), .GND_net(GND_net), 
            .counter_31__N_85(counter_31__N_85_adj_1)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd.v(43[51:125])
    \CD_counter(WIDTH=32)_U6  CNT_DB (.GND_net(GND_net), .clk_DB(clk_DB), 
            .clk_c(clk_c), .counter_31__N_85(counter_31__N_85_adj_2)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd.v(44[49:121])
    CD_config CLOCK_DIVIDER_CONFIG (.\resolution[0] (resolution[0]), .clk_c(clk_c), 
            .\V_FrontPorch_nxt_9__N_804[3] (\V_FrontPorch_nxt_9__N_804[3] ), 
            .c_VGA_ready(c_VGA_ready), .clk_VGA(clk_VGA), .n5259(n5259), 
            .c_UART_ready(c_UART_ready), .c_valid_N_785(c_valid_N_785), 
            .\baudrate[2] (baudrate[2]), .n9112(n9112), .\c_data[1] (\c_data[1] ), 
            .\c_data[2] (\c_data[2] ), .\c_data[0] (\c_data[0] ), .c_addr({c_addr}), 
            .c_valid(c_valid), .n9125(n9125), .H_BackPorch_nxt_7__N_782(H_BackPorch_nxt_7__N_782), 
            .Current_Qudran_Config_nxt_1__N_886(Current_Qudran_Config_nxt_1__N_886), 
            .n8448(n8448), .n3408(n3408), .\baudrate[5] (baudrate[5]), 
            .n9189(n9189), .\resolution[1] (resolution[1]), .H_Left_Margin_nxt_8__N_959(H_Left_Margin_nxt_8__N_959), 
            .\baudrate[8] (baudrate[8]), .\baudrate[7] (baudrate[7]), .\baudrate[6] (baudrate[6]), 
            .\baudrate_next_23__N_262[6] (\baudrate_next_23__N_262[6] ), .\baudrate[4] (baudrate[4]), 
            .\baudrate[3] (baudrate[3]), .\c_data[1]_derived_1 (\c_data[1]_derived_1 ), 
            .n9163(n9163), .clk_VGA_enable_1(clk_VGA_enable_1), .n9147(n9147), 
            .c_ready_next_N_346(c_ready_next_N_346), .n9148(n9148), .n9124(n9124), 
            .\baudrate[1] (baudrate[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd.v(46[11] 49[51])
    
endmodule
//
// Verilog Description of module \CD_counter(WIDTH=32) 
//

module \CD_counter(WIDTH=32)  (GND_net, clk_VGA, clk_c, rst_n_N_52, 
            counter_31__N_85, \resolution[1] , \resolution[0] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output clk_VGA;
    input clk_c;
    input rst_n_N_52;
    output counter_31__N_85;
    input \resolution[1] ;
    input \resolution[0] ;
    
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(36[6:13])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire n7752;
    wire [31:0]counter;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(19[19:26])
    wire [31:0]n133;
    
    wire n7753, clkout_N_118;
    wire [31:0]n167;
    
    wire n7801, n7800, n7799, n7798, n7797, n7796, n7795, n7794, 
        n7793, n7792, n7791, n7790, n7789, n7788, n7787, n7786, 
        n7767, n7766, n7765, n7764, n7763, n7762, n7761, n7760, 
        n7759, n7758, n7757, n7756, n7755, n7754;
    
    CCU2D counter_1249_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7752), .COUT(n7753), .S0(n133[1]), .S1(n133[2]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_1249_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_1249_add_4_3.INJECT1_0 = "NO";
    defparam counter_1249_add_4_3.INJECT1_1 = "NO";
    FD1S3DX clkout_17 (.D(clkout_N_118), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(clk_VGA)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=43, LSE_RCOL=126, LSE_LLINE=41, LSE_RLINE=41 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(25[13] 28[7])
    defparam clkout_17.GSR = "DISABLED";
    CCU2D counter_1249_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7752), .S1(n133[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249_add_4_1.INIT0 = 16'hF000;
    defparam counter_1249_add_4_1.INIT1 = 16'h0555;
    defparam counter_1249_add_4_1.INJECT1_0 = "NO";
    defparam counter_1249_add_4_1.INJECT1_1 = "NO";
    FD1S3DX counter_1249__i0 (.D(n167[0]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i0.GSR = "DISABLED";
    LUT4 i4306_2_lut (.A(n133[1]), .B(counter_31__N_85), .Z(n167[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4306_2_lut.init = 16'h2222;
    LUT4 i4307_2_lut (.A(n133[2]), .B(counter_31__N_85), .Z(n167[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4307_2_lut.init = 16'h2222;
    LUT4 i4308_2_lut (.A(n133[3]), .B(counter_31__N_85), .Z(n167[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4308_2_lut.init = 16'h2222;
    LUT4 i4309_2_lut (.A(n133[4]), .B(counter_31__N_85), .Z(n167[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4309_2_lut.init = 16'h2222;
    LUT4 i4310_2_lut (.A(n133[5]), .B(counter_31__N_85), .Z(n167[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4310_2_lut.init = 16'h2222;
    LUT4 i4311_2_lut (.A(n133[6]), .B(counter_31__N_85), .Z(n167[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4311_2_lut.init = 16'h2222;
    LUT4 i4312_2_lut (.A(n133[7]), .B(counter_31__N_85), .Z(n167[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4312_2_lut.init = 16'h2222;
    LUT4 i4313_2_lut (.A(n133[8]), .B(counter_31__N_85), .Z(n167[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4313_2_lut.init = 16'h2222;
    LUT4 i4314_2_lut (.A(n133[9]), .B(counter_31__N_85), .Z(n167[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4314_2_lut.init = 16'h2222;
    LUT4 i4315_2_lut (.A(n133[10]), .B(counter_31__N_85), .Z(n167[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4315_2_lut.init = 16'h2222;
    LUT4 i4316_2_lut (.A(n133[11]), .B(counter_31__N_85), .Z(n167[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4316_2_lut.init = 16'h2222;
    LUT4 i4317_2_lut (.A(n133[12]), .B(counter_31__N_85), .Z(n167[12])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4317_2_lut.init = 16'h2222;
    LUT4 i4318_2_lut (.A(n133[13]), .B(counter_31__N_85), .Z(n167[13])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4318_2_lut.init = 16'h2222;
    LUT4 i4319_2_lut (.A(n133[14]), .B(counter_31__N_85), .Z(n167[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4319_2_lut.init = 16'h2222;
    LUT4 i4320_2_lut (.A(n133[15]), .B(counter_31__N_85), .Z(n167[15])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4320_2_lut.init = 16'h2222;
    LUT4 i4321_2_lut (.A(n133[16]), .B(counter_31__N_85), .Z(n167[16])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4321_2_lut.init = 16'h2222;
    LUT4 i4322_2_lut (.A(n133[17]), .B(counter_31__N_85), .Z(n167[17])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4322_2_lut.init = 16'h2222;
    LUT4 i4323_2_lut (.A(n133[18]), .B(counter_31__N_85), .Z(n167[18])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4323_2_lut.init = 16'h2222;
    LUT4 i4324_2_lut (.A(n133[19]), .B(counter_31__N_85), .Z(n167[19])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4324_2_lut.init = 16'h2222;
    LUT4 i4325_2_lut (.A(n133[20]), .B(counter_31__N_85), .Z(n167[20])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4325_2_lut.init = 16'h2222;
    LUT4 i4326_2_lut (.A(n133[21]), .B(counter_31__N_85), .Z(n167[21])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4326_2_lut.init = 16'h2222;
    LUT4 i4327_2_lut (.A(n133[22]), .B(counter_31__N_85), .Z(n167[22])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4327_2_lut.init = 16'h2222;
    LUT4 i4328_2_lut (.A(n133[23]), .B(counter_31__N_85), .Z(n167[23])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4328_2_lut.init = 16'h2222;
    LUT4 i4329_2_lut (.A(n133[24]), .B(counter_31__N_85), .Z(n167[24])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4329_2_lut.init = 16'h2222;
    CCU2D sub_1026_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7801), .S0(counter_31__N_85));
    defparam sub_1026_add_2_cout.INIT0 = 16'h0000;
    defparam sub_1026_add_2_cout.INIT1 = 16'h0000;
    defparam sub_1026_add_2_cout.INJECT1_0 = "NO";
    defparam sub_1026_add_2_cout.INJECT1_1 = "NO";
    LUT4 i4330_2_lut (.A(n133[25]), .B(counter_31__N_85), .Z(n167[25])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4330_2_lut.init = 16'h2222;
    CCU2D sub_1026_add_2_32 (.A0(\resolution[1] ), .B0(\resolution[0] ), 
          .C0(counter[30]), .D0(GND_net), .A1(\resolution[1] ), .B1(\resolution[0] ), 
          .C1(counter[31]), .D1(GND_net), .CIN(n7800), .COUT(n7801));
    defparam sub_1026_add_2_32.INIT0 = 16'h1e1e;
    defparam sub_1026_add_2_32.INIT1 = 16'h1e1e;
    defparam sub_1026_add_2_32.INJECT1_0 = "NO";
    defparam sub_1026_add_2_32.INJECT1_1 = "NO";
    LUT4 i4331_2_lut (.A(n133[26]), .B(counter_31__N_85), .Z(n167[26])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4331_2_lut.init = 16'h2222;
    CCU2D sub_1026_add_2_30 (.A0(\resolution[1] ), .B0(\resolution[0] ), 
          .C0(counter[28]), .D0(GND_net), .A1(\resolution[1] ), .B1(\resolution[0] ), 
          .C1(counter[29]), .D1(GND_net), .CIN(n7799), .COUT(n7800));
    defparam sub_1026_add_2_30.INIT0 = 16'h1e1e;
    defparam sub_1026_add_2_30.INIT1 = 16'h1e1e;
    defparam sub_1026_add_2_30.INJECT1_0 = "NO";
    defparam sub_1026_add_2_30.INJECT1_1 = "NO";
    CCU2D sub_1026_add_2_28 (.A0(\resolution[1] ), .B0(\resolution[0] ), 
          .C0(counter[26]), .D0(GND_net), .A1(\resolution[1] ), .B1(\resolution[0] ), 
          .C1(counter[27]), .D1(GND_net), .CIN(n7798), .COUT(n7799));
    defparam sub_1026_add_2_28.INIT0 = 16'h1e1e;
    defparam sub_1026_add_2_28.INIT1 = 16'h1e1e;
    defparam sub_1026_add_2_28.INJECT1_0 = "NO";
    defparam sub_1026_add_2_28.INJECT1_1 = "NO";
    CCU2D sub_1026_add_2_26 (.A0(\resolution[1] ), .B0(\resolution[0] ), 
          .C0(counter[24]), .D0(GND_net), .A1(\resolution[1] ), .B1(\resolution[0] ), 
          .C1(counter[25]), .D1(GND_net), .CIN(n7797), .COUT(n7798));
    defparam sub_1026_add_2_26.INIT0 = 16'h1e1e;
    defparam sub_1026_add_2_26.INIT1 = 16'h1e1e;
    defparam sub_1026_add_2_26.INJECT1_0 = "NO";
    defparam sub_1026_add_2_26.INJECT1_1 = "NO";
    LUT4 i4332_2_lut (.A(n133[27]), .B(counter_31__N_85), .Z(n167[27])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4332_2_lut.init = 16'h2222;
    CCU2D sub_1026_add_2_24 (.A0(\resolution[1] ), .B0(\resolution[0] ), 
          .C0(counter[22]), .D0(GND_net), .A1(\resolution[1] ), .B1(\resolution[0] ), 
          .C1(counter[23]), .D1(GND_net), .CIN(n7796), .COUT(n7797));
    defparam sub_1026_add_2_24.INIT0 = 16'h1e1e;
    defparam sub_1026_add_2_24.INIT1 = 16'h1e1e;
    defparam sub_1026_add_2_24.INJECT1_0 = "NO";
    defparam sub_1026_add_2_24.INJECT1_1 = "NO";
    CCU2D sub_1026_add_2_22 (.A0(\resolution[1] ), .B0(\resolution[0] ), 
          .C0(counter[20]), .D0(GND_net), .A1(\resolution[1] ), .B1(\resolution[0] ), 
          .C1(counter[21]), .D1(GND_net), .CIN(n7795), .COUT(n7796));
    defparam sub_1026_add_2_22.INIT0 = 16'h1e1e;
    defparam sub_1026_add_2_22.INIT1 = 16'h1e1e;
    defparam sub_1026_add_2_22.INJECT1_0 = "NO";
    defparam sub_1026_add_2_22.INJECT1_1 = "NO";
    CCU2D sub_1026_add_2_20 (.A0(\resolution[1] ), .B0(\resolution[0] ), 
          .C0(counter[18]), .D0(GND_net), .A1(\resolution[1] ), .B1(\resolution[0] ), 
          .C1(counter[19]), .D1(GND_net), .CIN(n7794), .COUT(n7795));
    defparam sub_1026_add_2_20.INIT0 = 16'h1e1e;
    defparam sub_1026_add_2_20.INIT1 = 16'h1e1e;
    defparam sub_1026_add_2_20.INJECT1_0 = "NO";
    defparam sub_1026_add_2_20.INJECT1_1 = "NO";
    CCU2D sub_1026_add_2_18 (.A0(\resolution[1] ), .B0(\resolution[0] ), 
          .C0(counter[16]), .D0(GND_net), .A1(\resolution[1] ), .B1(\resolution[0] ), 
          .C1(counter[17]), .D1(GND_net), .CIN(n7793), .COUT(n7794));
    defparam sub_1026_add_2_18.INIT0 = 16'h1e1e;
    defparam sub_1026_add_2_18.INIT1 = 16'h1e1e;
    defparam sub_1026_add_2_18.INJECT1_0 = "NO";
    defparam sub_1026_add_2_18.INJECT1_1 = "NO";
    LUT4 i4333_2_lut (.A(n133[28]), .B(counter_31__N_85), .Z(n167[28])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4333_2_lut.init = 16'h2222;
    CCU2D sub_1026_add_2_16 (.A0(\resolution[1] ), .B0(\resolution[0] ), 
          .C0(counter[14]), .D0(GND_net), .A1(\resolution[1] ), .B1(\resolution[0] ), 
          .C1(counter[15]), .D1(GND_net), .CIN(n7792), .COUT(n7793));
    defparam sub_1026_add_2_16.INIT0 = 16'h1e1e;
    defparam sub_1026_add_2_16.INIT1 = 16'h1e1e;
    defparam sub_1026_add_2_16.INJECT1_0 = "NO";
    defparam sub_1026_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_1026_add_2_14 (.A0(\resolution[1] ), .B0(\resolution[0] ), 
          .C0(counter[12]), .D0(GND_net), .A1(\resolution[1] ), .B1(\resolution[0] ), 
          .C1(counter[13]), .D1(GND_net), .CIN(n7791), .COUT(n7792));
    defparam sub_1026_add_2_14.INIT0 = 16'h1e1e;
    defparam sub_1026_add_2_14.INIT1 = 16'h1e1e;
    defparam sub_1026_add_2_14.INJECT1_0 = "NO";
    defparam sub_1026_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_1026_add_2_12 (.A0(\resolution[1] ), .B0(\resolution[0] ), 
          .C0(counter[10]), .D0(GND_net), .A1(\resolution[1] ), .B1(\resolution[0] ), 
          .C1(counter[11]), .D1(GND_net), .CIN(n7790), .COUT(n7791));
    defparam sub_1026_add_2_12.INIT0 = 16'h1e1e;
    defparam sub_1026_add_2_12.INIT1 = 16'h1e1e;
    defparam sub_1026_add_2_12.INJECT1_0 = "NO";
    defparam sub_1026_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_1026_add_2_10 (.A0(\resolution[1] ), .B0(\resolution[0] ), 
          .C0(counter[8]), .D0(GND_net), .A1(\resolution[1] ), .B1(\resolution[0] ), 
          .C1(counter[9]), .D1(GND_net), .CIN(n7789), .COUT(n7790));
    defparam sub_1026_add_2_10.INIT0 = 16'h1e1e;
    defparam sub_1026_add_2_10.INIT1 = 16'h1e1e;
    defparam sub_1026_add_2_10.INJECT1_0 = "NO";
    defparam sub_1026_add_2_10.INJECT1_1 = "NO";
    LUT4 i4334_2_lut (.A(n133[29]), .B(counter_31__N_85), .Z(n167[29])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4334_2_lut.init = 16'h2222;
    LUT4 clkout_I_0_2_lut (.A(clk_VGA), .B(counter_31__N_85), .Z(clkout_N_118)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(27[16:57])
    defparam clkout_I_0_2_lut.init = 16'h6666;
    LUT4 i4335_2_lut (.A(n133[30]), .B(counter_31__N_85), .Z(n167[30])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4335_2_lut.init = 16'h2222;
    CCU2D sub_1026_add_2_8 (.A0(\resolution[1] ), .B0(\resolution[0] ), 
          .C0(counter[6]), .D0(GND_net), .A1(\resolution[1] ), .B1(\resolution[0] ), 
          .C1(counter[7]), .D1(GND_net), .CIN(n7788), .COUT(n7789));
    defparam sub_1026_add_2_8.INIT0 = 16'h1e1e;
    defparam sub_1026_add_2_8.INIT1 = 16'h1e1e;
    defparam sub_1026_add_2_8.INJECT1_0 = "NO";
    defparam sub_1026_add_2_8.INJECT1_1 = "NO";
    LUT4 i4336_2_lut (.A(n133[31]), .B(counter_31__N_85), .Z(n167[31])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4336_2_lut.init = 16'h2222;
    CCU2D sub_1026_add_2_6 (.A0(\resolution[1] ), .B0(\resolution[0] ), 
          .C0(counter[4]), .D0(GND_net), .A1(\resolution[1] ), .B1(\resolution[0] ), 
          .C1(counter[5]), .D1(GND_net), .CIN(n7787), .COUT(n7788));
    defparam sub_1026_add_2_6.INIT0 = 16'h1e1e;
    defparam sub_1026_add_2_6.INIT1 = 16'h1e1e;
    defparam sub_1026_add_2_6.INJECT1_0 = "NO";
    defparam sub_1026_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_1026_add_2_4 (.A0(\resolution[1] ), .B0(\resolution[0] ), 
          .C0(counter[2]), .D0(GND_net), .A1(\resolution[1] ), .B1(\resolution[0] ), 
          .C1(counter[3]), .D1(GND_net), .CIN(n7786), .COUT(n7787));
    defparam sub_1026_add_2_4.INIT0 = 16'h1e1e;
    defparam sub_1026_add_2_4.INIT1 = 16'h1e1e;
    defparam sub_1026_add_2_4.INJECT1_0 = "NO";
    defparam sub_1026_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_1026_add_2_2 (.A0(counter[0]), .B0(\resolution[0] ), .C0(GND_net), 
          .D0(GND_net), .A1(\resolution[1] ), .B1(\resolution[0] ), .C1(counter[1]), 
          .D1(GND_net), .COUT(n7786));
    defparam sub_1026_add_2_2.INIT0 = 16'h1000;
    defparam sub_1026_add_2_2.INIT1 = 16'h9696;
    defparam sub_1026_add_2_2.INJECT1_0 = "NO";
    defparam sub_1026_add_2_2.INJECT1_1 = "NO";
    LUT4 i4217_2_lut (.A(n133[0]), .B(counter_31__N_85), .Z(n167[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i4217_2_lut.init = 16'h2222;
    FD1S3DX counter_1249__i1 (.D(n167[1]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i1.GSR = "DISABLED";
    FD1S3DX counter_1249__i2 (.D(n167[2]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i2.GSR = "DISABLED";
    FD1S3DX counter_1249__i3 (.D(n167[3]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i3.GSR = "DISABLED";
    FD1S3DX counter_1249__i4 (.D(n167[4]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i4.GSR = "DISABLED";
    FD1S3DX counter_1249__i5 (.D(n167[5]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i5.GSR = "DISABLED";
    FD1S3DX counter_1249__i6 (.D(n167[6]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i6.GSR = "DISABLED";
    FD1S3DX counter_1249__i7 (.D(n167[7]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i7.GSR = "DISABLED";
    FD1S3DX counter_1249__i8 (.D(n167[8]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i8.GSR = "DISABLED";
    FD1S3DX counter_1249__i9 (.D(n167[9]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i9.GSR = "DISABLED";
    FD1S3DX counter_1249__i10 (.D(n167[10]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i10.GSR = "DISABLED";
    FD1S3DX counter_1249__i11 (.D(n167[11]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i11.GSR = "DISABLED";
    FD1S3DX counter_1249__i12 (.D(n167[12]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i12.GSR = "DISABLED";
    FD1S3DX counter_1249__i13 (.D(n167[13]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i13.GSR = "DISABLED";
    FD1S3DX counter_1249__i14 (.D(n167[14]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i14.GSR = "DISABLED";
    FD1S3DX counter_1249__i15 (.D(n167[15]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i15.GSR = "DISABLED";
    FD1S3DX counter_1249__i16 (.D(n167[16]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i16.GSR = "DISABLED";
    FD1S3DX counter_1249__i17 (.D(n167[17]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i17.GSR = "DISABLED";
    FD1S3DX counter_1249__i18 (.D(n167[18]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i18.GSR = "DISABLED";
    FD1S3DX counter_1249__i19 (.D(n167[19]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i19.GSR = "DISABLED";
    FD1S3DX counter_1249__i20 (.D(n167[20]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i20.GSR = "DISABLED";
    FD1S3DX counter_1249__i21 (.D(n167[21]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i21.GSR = "DISABLED";
    FD1S3DX counter_1249__i22 (.D(n167[22]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i22.GSR = "DISABLED";
    FD1S3DX counter_1249__i23 (.D(n167[23]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i23.GSR = "DISABLED";
    FD1S3DX counter_1249__i24 (.D(n167[24]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i24.GSR = "DISABLED";
    FD1S3DX counter_1249__i25 (.D(n167[25]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i25.GSR = "DISABLED";
    FD1S3DX counter_1249__i26 (.D(n167[26]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i26.GSR = "DISABLED";
    FD1S3DX counter_1249__i27 (.D(n167[27]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i27.GSR = "DISABLED";
    FD1S3DX counter_1249__i28 (.D(n167[28]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i28.GSR = "DISABLED";
    FD1S3DX counter_1249__i29 (.D(n167[29]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i29.GSR = "DISABLED";
    FD1S3DX counter_1249__i30 (.D(n167[30]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i30.GSR = "DISABLED";
    FD1S3DX counter_1249__i31 (.D(n167[31]), .CK(clk_c), .CD(rst_n_N_52), 
            .Q(counter[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249__i31.GSR = "DISABLED";
    CCU2D counter_1249_add_4_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7767), .S0(n133[31]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249_add_4_33.INIT0 = 16'hfaaa;
    defparam counter_1249_add_4_33.INIT1 = 16'h0000;
    defparam counter_1249_add_4_33.INJECT1_0 = "NO";
    defparam counter_1249_add_4_33.INJECT1_1 = "NO";
    CCU2D counter_1249_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7766), .COUT(n7767), .S0(n133[29]), .S1(n133[30]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249_add_4_31.INIT0 = 16'hfaaa;
    defparam counter_1249_add_4_31.INIT1 = 16'hfaaa;
    defparam counter_1249_add_4_31.INJECT1_0 = "NO";
    defparam counter_1249_add_4_31.INJECT1_1 = "NO";
    CCU2D counter_1249_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7765), .COUT(n7766), .S0(n133[27]), .S1(n133[28]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249_add_4_29.INIT0 = 16'hfaaa;
    defparam counter_1249_add_4_29.INIT1 = 16'hfaaa;
    defparam counter_1249_add_4_29.INJECT1_0 = "NO";
    defparam counter_1249_add_4_29.INJECT1_1 = "NO";
    CCU2D counter_1249_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7764), .COUT(n7765), .S0(n133[25]), .S1(n133[26]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249_add_4_27.INIT0 = 16'hfaaa;
    defparam counter_1249_add_4_27.INIT1 = 16'hfaaa;
    defparam counter_1249_add_4_27.INJECT1_0 = "NO";
    defparam counter_1249_add_4_27.INJECT1_1 = "NO";
    CCU2D counter_1249_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7763), .COUT(n7764), .S0(n133[23]), .S1(n133[24]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_1249_add_4_25.INIT1 = 16'hfaaa;
    defparam counter_1249_add_4_25.INJECT1_0 = "NO";
    defparam counter_1249_add_4_25.INJECT1_1 = "NO";
    CCU2D counter_1249_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7762), .COUT(n7763), .S0(n133[21]), .S1(n133[22]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_1249_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_1249_add_4_23.INJECT1_0 = "NO";
    defparam counter_1249_add_4_23.INJECT1_1 = "NO";
    CCU2D counter_1249_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7761), .COUT(n7762), .S0(n133[19]), .S1(n133[20]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_1249_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_1249_add_4_21.INJECT1_0 = "NO";
    defparam counter_1249_add_4_21.INJECT1_1 = "NO";
    CCU2D counter_1249_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7760), .COUT(n7761), .S0(n133[17]), .S1(n133[18]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_1249_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_1249_add_4_19.INJECT1_0 = "NO";
    defparam counter_1249_add_4_19.INJECT1_1 = "NO";
    CCU2D counter_1249_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7759), .COUT(n7760), .S0(n133[15]), .S1(n133[16]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_1249_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_1249_add_4_17.INJECT1_0 = "NO";
    defparam counter_1249_add_4_17.INJECT1_1 = "NO";
    CCU2D counter_1249_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7758), .COUT(n7759), .S0(n133[13]), .S1(n133[14]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_1249_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_1249_add_4_15.INJECT1_0 = "NO";
    defparam counter_1249_add_4_15.INJECT1_1 = "NO";
    CCU2D counter_1249_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7757), .COUT(n7758), .S0(n133[11]), .S1(n133[12]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_1249_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_1249_add_4_13.INJECT1_0 = "NO";
    defparam counter_1249_add_4_13.INJECT1_1 = "NO";
    CCU2D counter_1249_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7756), .COUT(n7757), .S0(n133[9]), .S1(n133[10]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_1249_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_1249_add_4_11.INJECT1_0 = "NO";
    defparam counter_1249_add_4_11.INJECT1_1 = "NO";
    CCU2D counter_1249_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7755), .COUT(n7756), .S0(n133[7]), .S1(n133[8]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_1249_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_1249_add_4_9.INJECT1_0 = "NO";
    defparam counter_1249_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_1249_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7754), .COUT(n7755), .S0(n133[5]), .S1(n133[6]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_1249_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_1249_add_4_7.INJECT1_0 = "NO";
    defparam counter_1249_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_1249_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7753), .COUT(n7754), .S0(n133[3]), .S1(n133[4]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1249_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_1249_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_1249_add_4_5.INJECT1_0 = "NO";
    defparam counter_1249_add_4_5.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \CD_counter(WIDTH=24) 
//

module \CD_counter(WIDTH=24)  (clk_UART, clk_c, rst_n_N_144, clkout_N_203, 
            counter, n127, GND_net, \counter_23__N_178[10] , \baudrate[8] , 
            \counter_23__N_178[8] , \counter_23__N_178[9] , \baudrate[6] , 
            \baudrate[7] , \counter_23__N_178[6] , \counter_23__N_178[7] , 
            \baudrate[4] , \baudrate[5] , \counter_23__N_178[4] , \counter_23__N_178[5] , 
            \baudrate[2] , \baudrate[3] , \counter_23__N_178[2] , \counter_23__N_178[3] , 
            \baudrate[1] , \counter_23__N_178[1] , n101) /* synthesis syn_module_defined=1 */ ;
    output clk_UART;
    input clk_c;
    input rst_n_N_144;
    input clkout_N_203;
    output [23:0]counter;
    input [23:0]n127;
    input GND_net;
    output \counter_23__N_178[10] ;
    input \baudrate[8] ;
    output \counter_23__N_178[8] ;
    output \counter_23__N_178[9] ;
    input \baudrate[6] ;
    input \baudrate[7] ;
    output \counter_23__N_178[6] ;
    output \counter_23__N_178[7] ;
    input \baudrate[4] ;
    input \baudrate[5] ;
    output \counter_23__N_178[4] ;
    output \counter_23__N_178[5] ;
    input \baudrate[2] ;
    input \baudrate[3] ;
    output \counter_23__N_178[2] ;
    output \counter_23__N_178[3] ;
    input \baudrate[1] ;
    output \counter_23__N_178[1] ;
    output [23:0]n101;
    
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(37[6:14])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire n7690, n7689, n7688, n7687, n7686, n7785, n7784, n7783, 
        n7782, n7781, n7780, n7779, n7778, n7777, n7776, n7775, 
        n7774;
    
    FD1S3DX clkout_17 (.D(clkout_N_203), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(clk_UART)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=44, LSE_RCOL=128, LSE_LLINE=42, LSE_RLINE=42 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(25[13] 28[7])
    defparam clkout_17.GSR = "DISABLED";
    FD1S3DX counter_1250__i0 (.D(n127[0]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i0.GSR = "DISABLED";
    CCU2D limit_23__I_0_add_2_11 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7690), .S0(\counter_23__N_178[10] ));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_11.INIT0 = 16'hffff;
    defparam limit_23__I_0_add_2_11.INIT1 = 16'h0000;
    defparam limit_23__I_0_add_2_11.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_11.INJECT1_1 = "NO";
    CCU2D limit_23__I_0_add_2_9 (.A0(\baudrate[8] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7689), .COUT(n7690), .S0(\counter_23__N_178[8] ), .S1(\counter_23__N_178[9] ));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_9.INIT0 = 16'h5555;
    defparam limit_23__I_0_add_2_9.INIT1 = 16'hffff;
    defparam limit_23__I_0_add_2_9.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2D limit_23__I_0_add_2_7 (.A0(\baudrate[6] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\baudrate[7] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7688), .COUT(n7689), .S0(\counter_23__N_178[6] ), 
          .S1(\counter_23__N_178[7] ));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_7.INIT0 = 16'h5555;
    defparam limit_23__I_0_add_2_7.INIT1 = 16'h5555;
    defparam limit_23__I_0_add_2_7.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2D limit_23__I_0_add_2_5 (.A0(\baudrate[4] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\baudrate[5] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7687), .COUT(n7688), .S0(\counter_23__N_178[4] ), 
          .S1(\counter_23__N_178[5] ));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_5.INIT0 = 16'h5555;
    defparam limit_23__I_0_add_2_5.INIT1 = 16'h5555;
    defparam limit_23__I_0_add_2_5.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2D limit_23__I_0_add_2_3 (.A0(\baudrate[2] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\baudrate[3] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7686), .COUT(n7687), .S0(\counter_23__N_178[2] ), 
          .S1(\counter_23__N_178[3] ));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_3.INIT0 = 16'h5555;
    defparam limit_23__I_0_add_2_3.INIT1 = 16'h5555;
    defparam limit_23__I_0_add_2_3.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2D limit_23__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\baudrate[1] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7686), .S1(\counter_23__N_178[1] ));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_1.INIT0 = 16'hF000;
    defparam limit_23__I_0_add_2_1.INIT1 = 16'h5555;
    defparam limit_23__I_0_add_2_1.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2D counter_1250_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7785), .S0(n101[23]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_1250_add_4_25.INIT1 = 16'h0000;
    defparam counter_1250_add_4_25.INJECT1_0 = "NO";
    defparam counter_1250_add_4_25.INJECT1_1 = "NO";
    CCU2D counter_1250_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7784), .COUT(n7785), .S0(n101[21]), .S1(n101[22]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_1250_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_1250_add_4_23.INJECT1_0 = "NO";
    defparam counter_1250_add_4_23.INJECT1_1 = "NO";
    CCU2D counter_1250_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7783), .COUT(n7784), .S0(n101[19]), .S1(n101[20]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_1250_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_1250_add_4_21.INJECT1_0 = "NO";
    defparam counter_1250_add_4_21.INJECT1_1 = "NO";
    CCU2D counter_1250_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7782), .COUT(n7783), .S0(n101[17]), .S1(n101[18]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_1250_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_1250_add_4_19.INJECT1_0 = "NO";
    defparam counter_1250_add_4_19.INJECT1_1 = "NO";
    CCU2D counter_1250_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7781), .COUT(n7782), .S0(n101[15]), .S1(n101[16]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_1250_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_1250_add_4_17.INJECT1_0 = "NO";
    defparam counter_1250_add_4_17.INJECT1_1 = "NO";
    CCU2D counter_1250_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7780), .COUT(n7781), .S0(n101[13]), .S1(n101[14]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_1250_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_1250_add_4_15.INJECT1_0 = "NO";
    defparam counter_1250_add_4_15.INJECT1_1 = "NO";
    CCU2D counter_1250_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7779), .COUT(n7780), .S0(n101[11]), .S1(n101[12]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_1250_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_1250_add_4_13.INJECT1_0 = "NO";
    defparam counter_1250_add_4_13.INJECT1_1 = "NO";
    CCU2D counter_1250_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7778), .COUT(n7779), .S0(n101[9]), .S1(n101[10]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_1250_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_1250_add_4_11.INJECT1_0 = "NO";
    defparam counter_1250_add_4_11.INJECT1_1 = "NO";
    CCU2D counter_1250_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7777), .COUT(n7778), .S0(n101[7]), .S1(n101[8]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_1250_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_1250_add_4_9.INJECT1_0 = "NO";
    defparam counter_1250_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_1250_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7776), .COUT(n7777), .S0(n101[5]), .S1(n101[6]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_1250_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_1250_add_4_7.INJECT1_0 = "NO";
    defparam counter_1250_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_1250_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7775), .COUT(n7776), .S0(n101[3]), .S1(n101[4]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_1250_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_1250_add_4_5.INJECT1_0 = "NO";
    defparam counter_1250_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_1250_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7774), .COUT(n7775), .S0(n101[1]), .S1(n101[2]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_1250_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_1250_add_4_3.INJECT1_0 = "NO";
    defparam counter_1250_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_1250_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7774), .S1(n101[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250_add_4_1.INIT0 = 16'hF000;
    defparam counter_1250_add_4_1.INIT1 = 16'h0555;
    defparam counter_1250_add_4_1.INJECT1_0 = "NO";
    defparam counter_1250_add_4_1.INJECT1_1 = "NO";
    FD1S3DX counter_1250__i1 (.D(n127[1]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i1.GSR = "DISABLED";
    FD1S3DX counter_1250__i2 (.D(n127[2]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i2.GSR = "DISABLED";
    FD1S3DX counter_1250__i3 (.D(n127[3]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i3.GSR = "DISABLED";
    FD1S3DX counter_1250__i4 (.D(n127[4]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i4.GSR = "DISABLED";
    FD1S3DX counter_1250__i5 (.D(n127[5]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i5.GSR = "DISABLED";
    FD1S3DX counter_1250__i6 (.D(n127[6]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i6.GSR = "DISABLED";
    FD1S3DX counter_1250__i7 (.D(n127[7]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i7.GSR = "DISABLED";
    FD1S3DX counter_1250__i8 (.D(n127[8]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i8.GSR = "DISABLED";
    FD1S3DX counter_1250__i9 (.D(n127[9]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i9.GSR = "DISABLED";
    FD1S3DX counter_1250__i10 (.D(n127[10]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i10.GSR = "DISABLED";
    FD1S3DX counter_1250__i11 (.D(n127[11]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i11.GSR = "DISABLED";
    FD1S3DX counter_1250__i12 (.D(n127[12]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i12.GSR = "DISABLED";
    FD1S3DX counter_1250__i13 (.D(n127[13]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i13.GSR = "DISABLED";
    FD1S3DX counter_1250__i14 (.D(n127[14]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i14.GSR = "DISABLED";
    FD1S3DX counter_1250__i15 (.D(n127[15]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i15.GSR = "DISABLED";
    FD1S3DX counter_1250__i16 (.D(n127[16]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i16.GSR = "DISABLED";
    FD1S3DX counter_1250__i17 (.D(n127[17]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i17.GSR = "DISABLED";
    FD1S3DX counter_1250__i18 (.D(n127[18]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i18.GSR = "DISABLED";
    FD1S3DX counter_1250__i19 (.D(n127[19]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i19.GSR = "DISABLED";
    FD1S3DX counter_1250__i20 (.D(n127[20]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i20.GSR = "DISABLED";
    FD1S3DX counter_1250__i21 (.D(n127[21]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i21.GSR = "DISABLED";
    FD1S3DX counter_1250__i22 (.D(n127[22]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i22.GSR = "DISABLED";
    FD1S3DX counter_1250__i23 (.D(n127[23]), .CK(clk_c), .CD(rst_n_N_144), 
            .Q(counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1250__i23.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module \CD_counter(WIDTH=32)_U5 
//

module \CD_counter(WIDTH=32)_U5  (clk_LM, clk_c, GND_net, counter_31__N_85) /* synthesis syn_module_defined=1 */ ;
    output clk_LM;
    input clk_c;
    input GND_net;
    output counter_31__N_85;
    
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(39[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire clkout_N_118, n7675;
    wire [31:0]counter;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(19[19:26])
    
    wire n7676;
    wire [31:0]n233;
    wire [31:0]n133;
    
    wire n7685, n7684, n7683, n7682, n7875, n7874, n7873, n7872, 
        n7871, n7681, n7870, n7869, n7868, n7867, n7866, n7865, 
        n7864, n7680, n7679, n7863, n7678, n7677, n7862, n7672, 
        n7861, n7673, n7860, n7674;
    
    FD1S3AX clkout_17 (.D(clkout_N_118), .CK(clk_c), .Q(clk_LM)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=51, LSE_RCOL=125, LSE_LLINE=43, LSE_RLINE=43 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(25[13] 28[7])
    defparam clkout_17.GSR = "ENABLED";
    CCU2D sub_1027_add_2_10 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7675), .COUT(n7676));
    defparam sub_1027_add_2_10.INIT0 = 16'h5555;
    defparam sub_1027_add_2_10.INIT1 = 16'h5555;
    defparam sub_1027_add_2_10.INJECT1_0 = "NO";
    defparam sub_1027_add_2_10.INJECT1_1 = "NO";
    FD1S3IX counter_1251__i0 (.D(n133[0]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(n233[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i0.GSR = "ENABLED";
    CCU2D sub_1027_add_2_30 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7685), .S1(counter_31__N_85));
    defparam sub_1027_add_2_30.INIT0 = 16'h5555;
    defparam sub_1027_add_2_30.INIT1 = 16'h0000;
    defparam sub_1027_add_2_30.INJECT1_0 = "NO";
    defparam sub_1027_add_2_30.INJECT1_1 = "NO";
    CCU2D sub_1027_add_2_28 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7684), .COUT(n7685));
    defparam sub_1027_add_2_28.INIT0 = 16'h5555;
    defparam sub_1027_add_2_28.INIT1 = 16'h5555;
    defparam sub_1027_add_2_28.INJECT1_0 = "NO";
    defparam sub_1027_add_2_28.INJECT1_1 = "NO";
    CCU2D sub_1027_add_2_26 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7683), .COUT(n7684));
    defparam sub_1027_add_2_26.INIT0 = 16'h5555;
    defparam sub_1027_add_2_26.INIT1 = 16'h5555;
    defparam sub_1027_add_2_26.INJECT1_0 = "NO";
    defparam sub_1027_add_2_26.INJECT1_1 = "NO";
    CCU2D sub_1027_add_2_24 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7682), .COUT(n7683));
    defparam sub_1027_add_2_24.INIT0 = 16'h5555;
    defparam sub_1027_add_2_24.INIT1 = 16'h5555;
    defparam sub_1027_add_2_24.INJECT1_0 = "NO";
    defparam sub_1027_add_2_24.INJECT1_1 = "NO";
    LUT4 clkout_I_0_2_lut (.A(clk_LM), .B(counter_31__N_85), .Z(clkout_N_118)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(27[16:57])
    defparam clkout_I_0_2_lut.init = 16'h6666;
    CCU2D counter_1251_add_4_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7875), .S0(n133[31]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251_add_4_33.INIT0 = 16'hfaaa;
    defparam counter_1251_add_4_33.INIT1 = 16'h0000;
    defparam counter_1251_add_4_33.INJECT1_0 = "NO";
    defparam counter_1251_add_4_33.INJECT1_1 = "NO";
    CCU2D counter_1251_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7874), .COUT(n7875), .S0(n133[29]), .S1(n133[30]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251_add_4_31.INIT0 = 16'hfaaa;
    defparam counter_1251_add_4_31.INIT1 = 16'hfaaa;
    defparam counter_1251_add_4_31.INJECT1_0 = "NO";
    defparam counter_1251_add_4_31.INJECT1_1 = "NO";
    CCU2D counter_1251_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7873), .COUT(n7874), .S0(n133[27]), .S1(n133[28]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251_add_4_29.INIT0 = 16'hfaaa;
    defparam counter_1251_add_4_29.INIT1 = 16'hfaaa;
    defparam counter_1251_add_4_29.INJECT1_0 = "NO";
    defparam counter_1251_add_4_29.INJECT1_1 = "NO";
    CCU2D counter_1251_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7872), .COUT(n7873), .S0(n133[25]), .S1(n133[26]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251_add_4_27.INIT0 = 16'hfaaa;
    defparam counter_1251_add_4_27.INIT1 = 16'hfaaa;
    defparam counter_1251_add_4_27.INJECT1_0 = "NO";
    defparam counter_1251_add_4_27.INJECT1_1 = "NO";
    CCU2D counter_1251_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7871), .COUT(n7872), .S0(n133[23]), .S1(n133[24]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_1251_add_4_25.INIT1 = 16'hfaaa;
    defparam counter_1251_add_4_25.INJECT1_0 = "NO";
    defparam counter_1251_add_4_25.INJECT1_1 = "NO";
    CCU2D sub_1027_add_2_22 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7681), .COUT(n7682));
    defparam sub_1027_add_2_22.INIT0 = 16'h5555;
    defparam sub_1027_add_2_22.INIT1 = 16'h5555;
    defparam sub_1027_add_2_22.INJECT1_0 = "NO";
    defparam sub_1027_add_2_22.INJECT1_1 = "NO";
    CCU2D counter_1251_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7870), .COUT(n7871), .S0(n133[21]), .S1(n133[22]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_1251_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_1251_add_4_23.INJECT1_0 = "NO";
    defparam counter_1251_add_4_23.INJECT1_1 = "NO";
    CCU2D counter_1251_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7869), .COUT(n7870), .S0(n133[19]), .S1(n133[20]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_1251_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_1251_add_4_21.INJECT1_0 = "NO";
    defparam counter_1251_add_4_21.INJECT1_1 = "NO";
    CCU2D counter_1251_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7868), .COUT(n7869), .S0(n133[17]), .S1(n133[18]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_1251_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_1251_add_4_19.INJECT1_0 = "NO";
    defparam counter_1251_add_4_19.INJECT1_1 = "NO";
    CCU2D counter_1251_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7867), .COUT(n7868), .S0(n133[15]), .S1(n133[16]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_1251_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_1251_add_4_17.INJECT1_0 = "NO";
    defparam counter_1251_add_4_17.INJECT1_1 = "NO";
    CCU2D counter_1251_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7866), .COUT(n7867), .S0(n133[13]), .S1(n133[14]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_1251_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_1251_add_4_15.INJECT1_0 = "NO";
    defparam counter_1251_add_4_15.INJECT1_1 = "NO";
    CCU2D counter_1251_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7865), .COUT(n7866), .S0(n133[11]), .S1(n133[12]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_1251_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_1251_add_4_13.INJECT1_0 = "NO";
    defparam counter_1251_add_4_13.INJECT1_1 = "NO";
    CCU2D counter_1251_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7864), .COUT(n7865), .S0(n133[9]), .S1(n133[10]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_1251_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_1251_add_4_11.INJECT1_0 = "NO";
    defparam counter_1251_add_4_11.INJECT1_1 = "NO";
    CCU2D sub_1027_add_2_20 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7680), .COUT(n7681));
    defparam sub_1027_add_2_20.INIT0 = 16'h5555;
    defparam sub_1027_add_2_20.INIT1 = 16'h5555;
    defparam sub_1027_add_2_20.INJECT1_0 = "NO";
    defparam sub_1027_add_2_20.INJECT1_1 = "NO";
    CCU2D sub_1027_add_2_18 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7679), .COUT(n7680));
    defparam sub_1027_add_2_18.INIT0 = 16'h5555;
    defparam sub_1027_add_2_18.INIT1 = 16'h5555;
    defparam sub_1027_add_2_18.INJECT1_0 = "NO";
    defparam sub_1027_add_2_18.INJECT1_1 = "NO";
    CCU2D counter_1251_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7863), .COUT(n7864), .S0(n133[7]), .S1(n133[8]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_1251_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_1251_add_4_9.INJECT1_0 = "NO";
    defparam counter_1251_add_4_9.INJECT1_1 = "NO";
    CCU2D sub_1027_add_2_16 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7678), .COUT(n7679));
    defparam sub_1027_add_2_16.INIT0 = 16'h5555;
    defparam sub_1027_add_2_16.INIT1 = 16'h5555;
    defparam sub_1027_add_2_16.INJECT1_0 = "NO";
    defparam sub_1027_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_1027_add_2_14 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7677), .COUT(n7678));
    defparam sub_1027_add_2_14.INIT0 = 16'h5555;
    defparam sub_1027_add_2_14.INIT1 = 16'h5555;
    defparam sub_1027_add_2_14.INJECT1_0 = "NO";
    defparam sub_1027_add_2_14.INJECT1_1 = "NO";
    CCU2D counter_1251_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7862), .COUT(n7863), .S0(n133[5]), .S1(n133[6]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_1251_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_1251_add_4_7.INJECT1_0 = "NO";
    defparam counter_1251_add_4_7.INJECT1_1 = "NO";
    CCU2D sub_1027_add_2_12 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7676), .COUT(n7677));
    defparam sub_1027_add_2_12.INIT0 = 16'h5555;
    defparam sub_1027_add_2_12.INIT1 = 16'h5555;
    defparam sub_1027_add_2_12.INJECT1_0 = "NO";
    defparam sub_1027_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_1027_add_2_2 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7672));
    defparam sub_1027_add_2_2.INIT0 = 16'h5000;
    defparam sub_1027_add_2_2.INIT1 = 16'h5555;
    defparam sub_1027_add_2_2.INJECT1_0 = "NO";
    defparam sub_1027_add_2_2.INJECT1_1 = "NO";
    CCU2D counter_1251_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7861), .COUT(n7862), .S0(n133[3]), .S1(n133[4]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_1251_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_1251_add_4_5.INJECT1_0 = "NO";
    defparam counter_1251_add_4_5.INJECT1_1 = "NO";
    CCU2D sub_1027_add_2_4 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7672), .COUT(n7673));
    defparam sub_1027_add_2_4.INIT0 = 16'h5555;
    defparam sub_1027_add_2_4.INIT1 = 16'h5555;
    defparam sub_1027_add_2_4.INJECT1_0 = "NO";
    defparam sub_1027_add_2_4.INJECT1_1 = "NO";
    CCU2D counter_1251_add_4_3 (.A0(n233[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7860), .COUT(n7861), .S0(n133[1]), .S1(n133[2]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_1251_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_1251_add_4_3.INJECT1_0 = "NO";
    defparam counter_1251_add_4_3.INJECT1_1 = "NO";
    CCU2D sub_1027_add_2_8 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7674), .COUT(n7675));
    defparam sub_1027_add_2_8.INIT0 = 16'h5555;
    defparam sub_1027_add_2_8.INIT1 = 16'h5555;
    defparam sub_1027_add_2_8.INJECT1_0 = "NO";
    defparam sub_1027_add_2_8.INJECT1_1 = "NO";
    CCU2D counter_1251_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n7860), .S1(n133[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251_add_4_1.INIT0 = 16'hF000;
    defparam counter_1251_add_4_1.INIT1 = 16'h0555;
    defparam counter_1251_add_4_1.INJECT1_0 = "NO";
    defparam counter_1251_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_1027_add_2_6 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7673), .COUT(n7674));
    defparam sub_1027_add_2_6.INIT0 = 16'h5555;
    defparam sub_1027_add_2_6.INIT1 = 16'h5aaa;
    defparam sub_1027_add_2_6.INJECT1_0 = "NO";
    defparam sub_1027_add_2_6.INJECT1_1 = "NO";
    FD1S3IX counter_1251__i1 (.D(n133[1]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(n233[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i1.GSR = "ENABLED";
    FD1S3IX counter_1251__i2 (.D(n133[2]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(n233[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i2.GSR = "ENABLED";
    FD1S3IX counter_1251__i3 (.D(n133[3]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i3.GSR = "ENABLED";
    FD1S3IX counter_1251__i4 (.D(n133[4]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i4.GSR = "ENABLED";
    FD1S3IX counter_1251__i5 (.D(n133[5]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i5.GSR = "ENABLED";
    FD1S3IX counter_1251__i6 (.D(n133[6]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i6.GSR = "ENABLED";
    FD1S3IX counter_1251__i7 (.D(n133[7]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i7.GSR = "ENABLED";
    FD1S3IX counter_1251__i8 (.D(n133[8]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i8.GSR = "ENABLED";
    FD1S3IX counter_1251__i9 (.D(n133[9]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i9.GSR = "ENABLED";
    FD1S3IX counter_1251__i10 (.D(n133[10]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i10.GSR = "ENABLED";
    FD1S3IX counter_1251__i11 (.D(n133[11]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i11.GSR = "ENABLED";
    FD1S3IX counter_1251__i12 (.D(n133[12]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i12.GSR = "ENABLED";
    FD1S3IX counter_1251__i13 (.D(n133[13]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i13.GSR = "ENABLED";
    FD1S3IX counter_1251__i14 (.D(n133[14]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i14.GSR = "ENABLED";
    FD1S3IX counter_1251__i15 (.D(n133[15]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i15.GSR = "ENABLED";
    FD1S3IX counter_1251__i16 (.D(n133[16]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i16.GSR = "ENABLED";
    FD1S3IX counter_1251__i17 (.D(n133[17]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i17.GSR = "ENABLED";
    FD1S3IX counter_1251__i18 (.D(n133[18]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i18.GSR = "ENABLED";
    FD1S3IX counter_1251__i19 (.D(n133[19]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i19.GSR = "ENABLED";
    FD1S3IX counter_1251__i20 (.D(n133[20]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i20.GSR = "ENABLED";
    FD1S3IX counter_1251__i21 (.D(n133[21]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i21.GSR = "ENABLED";
    FD1S3IX counter_1251__i22 (.D(n133[22]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i22.GSR = "ENABLED";
    FD1S3IX counter_1251__i23 (.D(n133[23]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i23.GSR = "ENABLED";
    FD1S3IX counter_1251__i24 (.D(n133[24]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i24.GSR = "ENABLED";
    FD1S3IX counter_1251__i25 (.D(n133[25]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i25.GSR = "ENABLED";
    FD1S3IX counter_1251__i26 (.D(n133[26]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i26.GSR = "ENABLED";
    FD1S3IX counter_1251__i27 (.D(n133[27]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i27.GSR = "ENABLED";
    FD1S3IX counter_1251__i28 (.D(n133[28]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i28.GSR = "ENABLED";
    FD1S3IX counter_1251__i29 (.D(n133[29]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i29.GSR = "ENABLED";
    FD1S3IX counter_1251__i30 (.D(n133[30]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i30.GSR = "ENABLED";
    FD1S3IX counter_1251__i31 (.D(n133[31]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1251__i31.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \CD_counter(WIDTH=32)_U6 
//

module \CD_counter(WIDTH=32)_U6  (GND_net, clk_DB, clk_c, counter_31__N_85) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output clk_DB;
    input clk_c;
    output counter_31__N_85;
    
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(38[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire n7845;
    wire [31:0]counter;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(19[19:26])
    wire [31:0]n133;
    
    wire n7846, clkout_N_118, n7844, n7751, n7750, n7749, n7748, 
        n7747, n7746, n7745, n7744, n7743, n7742, n7741, n7740, 
        n7739, n7738, n7737, n7736, n7859, n7858, n7857, n7856, 
        n7855, n7854, n7853, n7852, n7851, n7850, n7849, n7848, 
        n7847;
    
    CCU2D counter_1252_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7845), .COUT(n7846), .S0(n133[3]), .S1(n133[4]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_1252_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_1252_add_4_5.INJECT1_0 = "NO";
    defparam counter_1252_add_4_5.INJECT1_1 = "NO";
    FD1S3AX clkout_17 (.D(clkout_N_118), .CK(clk_c), .Q(clk_DB)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=49, LSE_RCOL=121, LSE_LLINE=44, LSE_RLINE=44 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(25[13] 28[7])
    defparam clkout_17.GSR = "ENABLED";
    CCU2D counter_1252_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7844), .COUT(n7845), .S0(n133[1]), .S1(n133[2]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_1252_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_1252_add_4_3.INJECT1_0 = "NO";
    defparam counter_1252_add_4_3.INJECT1_1 = "NO";
    CCU2D sub_1028_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7751), .S0(counter_31__N_85));
    defparam sub_1028_add_2_cout.INIT0 = 16'h0000;
    defparam sub_1028_add_2_cout.INIT1 = 16'h0000;
    defparam sub_1028_add_2_cout.INJECT1_0 = "NO";
    defparam sub_1028_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_1028_add_2_32 (.A0(counter[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7750), .COUT(n7751));
    defparam sub_1028_add_2_32.INIT0 = 16'h5555;
    defparam sub_1028_add_2_32.INIT1 = 16'h5555;
    defparam sub_1028_add_2_32.INJECT1_0 = "NO";
    defparam sub_1028_add_2_32.INJECT1_1 = "NO";
    CCU2D counter_1252_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7844), .S1(n133[0]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252_add_4_1.INIT0 = 16'hF000;
    defparam counter_1252_add_4_1.INIT1 = 16'h0555;
    defparam counter_1252_add_4_1.INJECT1_0 = "NO";
    defparam counter_1252_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_1028_add_2_30 (.A0(counter[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7749), .COUT(n7750));
    defparam sub_1028_add_2_30.INIT0 = 16'h5555;
    defparam sub_1028_add_2_30.INIT1 = 16'h5555;
    defparam sub_1028_add_2_30.INJECT1_0 = "NO";
    defparam sub_1028_add_2_30.INJECT1_1 = "NO";
    CCU2D sub_1028_add_2_28 (.A0(counter[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7748), .COUT(n7749));
    defparam sub_1028_add_2_28.INIT0 = 16'h5555;
    defparam sub_1028_add_2_28.INIT1 = 16'h5555;
    defparam sub_1028_add_2_28.INJECT1_0 = "NO";
    defparam sub_1028_add_2_28.INJECT1_1 = "NO";
    CCU2D sub_1028_add_2_26 (.A0(counter[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7747), .COUT(n7748));
    defparam sub_1028_add_2_26.INIT0 = 16'h5555;
    defparam sub_1028_add_2_26.INIT1 = 16'h5555;
    defparam sub_1028_add_2_26.INJECT1_0 = "NO";
    defparam sub_1028_add_2_26.INJECT1_1 = "NO";
    CCU2D sub_1028_add_2_24 (.A0(counter[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7746), .COUT(n7747));
    defparam sub_1028_add_2_24.INIT0 = 16'h5555;
    defparam sub_1028_add_2_24.INIT1 = 16'h5555;
    defparam sub_1028_add_2_24.INJECT1_0 = "NO";
    defparam sub_1028_add_2_24.INJECT1_1 = "NO";
    CCU2D sub_1028_add_2_22 (.A0(counter[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7745), .COUT(n7746));
    defparam sub_1028_add_2_22.INIT0 = 16'h5555;
    defparam sub_1028_add_2_22.INIT1 = 16'h5555;
    defparam sub_1028_add_2_22.INJECT1_0 = "NO";
    defparam sub_1028_add_2_22.INJECT1_1 = "NO";
    CCU2D sub_1028_add_2_20 (.A0(counter[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7744), .COUT(n7745));
    defparam sub_1028_add_2_20.INIT0 = 16'h5555;
    defparam sub_1028_add_2_20.INIT1 = 16'h5555;
    defparam sub_1028_add_2_20.INJECT1_0 = "NO";
    defparam sub_1028_add_2_20.INJECT1_1 = "NO";
    CCU2D sub_1028_add_2_18 (.A0(counter[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7743), .COUT(n7744));
    defparam sub_1028_add_2_18.INIT0 = 16'h5555;
    defparam sub_1028_add_2_18.INIT1 = 16'h5555;
    defparam sub_1028_add_2_18.INJECT1_0 = "NO";
    defparam sub_1028_add_2_18.INJECT1_1 = "NO";
    CCU2D sub_1028_add_2_16 (.A0(counter[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7742), .COUT(n7743));
    defparam sub_1028_add_2_16.INIT0 = 16'h5555;
    defparam sub_1028_add_2_16.INIT1 = 16'h5555;
    defparam sub_1028_add_2_16.INJECT1_0 = "NO";
    defparam sub_1028_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_1028_add_2_14 (.A0(counter[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7741), .COUT(n7742));
    defparam sub_1028_add_2_14.INIT0 = 16'h5555;
    defparam sub_1028_add_2_14.INIT1 = 16'h5555;
    defparam sub_1028_add_2_14.INJECT1_0 = "NO";
    defparam sub_1028_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_1028_add_2_12 (.A0(counter[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7740), .COUT(n7741));
    defparam sub_1028_add_2_12.INIT0 = 16'h5555;
    defparam sub_1028_add_2_12.INIT1 = 16'h5555;
    defparam sub_1028_add_2_12.INJECT1_0 = "NO";
    defparam sub_1028_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_1028_add_2_10 (.A0(counter[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7739), .COUT(n7740));
    defparam sub_1028_add_2_10.INIT0 = 16'h5555;
    defparam sub_1028_add_2_10.INIT1 = 16'h5555;
    defparam sub_1028_add_2_10.INJECT1_0 = "NO";
    defparam sub_1028_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_1028_add_2_8 (.A0(counter[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7738), .COUT(n7739));
    defparam sub_1028_add_2_8.INIT0 = 16'h5aaa;
    defparam sub_1028_add_2_8.INIT1 = 16'h5555;
    defparam sub_1028_add_2_8.INJECT1_0 = "NO";
    defparam sub_1028_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_1028_add_2_6 (.A0(counter[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7737), .COUT(n7738));
    defparam sub_1028_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_1028_add_2_6.INIT1 = 16'h5555;
    defparam sub_1028_add_2_6.INJECT1_0 = "NO";
    defparam sub_1028_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_1028_add_2_4 (.A0(counter[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7736), .COUT(n7737));
    defparam sub_1028_add_2_4.INIT0 = 16'h5555;
    defparam sub_1028_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_1028_add_2_4.INJECT1_0 = "NO";
    defparam sub_1028_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_1028_add_2_2 (.A0(counter[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7736));
    defparam sub_1028_add_2_2.INIT0 = 16'h5000;
    defparam sub_1028_add_2_2.INIT1 = 16'h5555;
    defparam sub_1028_add_2_2.INJECT1_0 = "NO";
    defparam sub_1028_add_2_2.INJECT1_1 = "NO";
    FD1S3IX counter_1252__i0 (.D(n133[0]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i0.GSR = "ENABLED";
    CCU2D counter_1252_add_4_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7859), .S0(n133[31]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252_add_4_33.INIT0 = 16'hfaaa;
    defparam counter_1252_add_4_33.INIT1 = 16'h0000;
    defparam counter_1252_add_4_33.INJECT1_0 = "NO";
    defparam counter_1252_add_4_33.INJECT1_1 = "NO";
    LUT4 clkout_I_0_2_lut (.A(clk_DB), .B(counter_31__N_85), .Z(clkout_N_118)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(27[16:57])
    defparam clkout_I_0_2_lut.init = 16'h6666;
    FD1S3IX counter_1252__i1 (.D(n133[1]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i1.GSR = "ENABLED";
    FD1S3IX counter_1252__i2 (.D(n133[2]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i2.GSR = "ENABLED";
    FD1S3IX counter_1252__i3 (.D(n133[3]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i3.GSR = "ENABLED";
    FD1S3IX counter_1252__i4 (.D(n133[4]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i4.GSR = "ENABLED";
    FD1S3IX counter_1252__i5 (.D(n133[5]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i5.GSR = "ENABLED";
    FD1S3IX counter_1252__i6 (.D(n133[6]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i6.GSR = "ENABLED";
    FD1S3IX counter_1252__i7 (.D(n133[7]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i7.GSR = "ENABLED";
    FD1S3IX counter_1252__i8 (.D(n133[8]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i8.GSR = "ENABLED";
    FD1S3IX counter_1252__i9 (.D(n133[9]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i9.GSR = "ENABLED";
    FD1S3IX counter_1252__i10 (.D(n133[10]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i10.GSR = "ENABLED";
    FD1S3IX counter_1252__i11 (.D(n133[11]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i11.GSR = "ENABLED";
    FD1S3IX counter_1252__i12 (.D(n133[12]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i12.GSR = "ENABLED";
    FD1S3IX counter_1252__i13 (.D(n133[13]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i13.GSR = "ENABLED";
    FD1S3IX counter_1252__i14 (.D(n133[14]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i14.GSR = "ENABLED";
    FD1S3IX counter_1252__i15 (.D(n133[15]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i15.GSR = "ENABLED";
    FD1S3IX counter_1252__i16 (.D(n133[16]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i16.GSR = "ENABLED";
    FD1S3IX counter_1252__i17 (.D(n133[17]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i17.GSR = "ENABLED";
    FD1S3IX counter_1252__i18 (.D(n133[18]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i18.GSR = "ENABLED";
    FD1S3IX counter_1252__i19 (.D(n133[19]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i19.GSR = "ENABLED";
    FD1S3IX counter_1252__i20 (.D(n133[20]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i20.GSR = "ENABLED";
    FD1S3IX counter_1252__i21 (.D(n133[21]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i21.GSR = "ENABLED";
    FD1S3IX counter_1252__i22 (.D(n133[22]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i22.GSR = "ENABLED";
    FD1S3IX counter_1252__i23 (.D(n133[23]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i23.GSR = "ENABLED";
    FD1S3IX counter_1252__i24 (.D(n133[24]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i24.GSR = "ENABLED";
    FD1S3IX counter_1252__i25 (.D(n133[25]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i25.GSR = "ENABLED";
    FD1S3IX counter_1252__i26 (.D(n133[26]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i26.GSR = "ENABLED";
    FD1S3IX counter_1252__i27 (.D(n133[27]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i27.GSR = "ENABLED";
    FD1S3IX counter_1252__i28 (.D(n133[28]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i28.GSR = "ENABLED";
    FD1S3IX counter_1252__i29 (.D(n133[29]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i29.GSR = "ENABLED";
    FD1S3IX counter_1252__i30 (.D(n133[30]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i30.GSR = "ENABLED";
    FD1S3IX counter_1252__i31 (.D(n133[31]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252__i31.GSR = "ENABLED";
    CCU2D counter_1252_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7858), .COUT(n7859), .S0(n133[29]), .S1(n133[30]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252_add_4_31.INIT0 = 16'hfaaa;
    defparam counter_1252_add_4_31.INIT1 = 16'hfaaa;
    defparam counter_1252_add_4_31.INJECT1_0 = "NO";
    defparam counter_1252_add_4_31.INJECT1_1 = "NO";
    CCU2D counter_1252_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7857), .COUT(n7858), .S0(n133[27]), .S1(n133[28]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252_add_4_29.INIT0 = 16'hfaaa;
    defparam counter_1252_add_4_29.INIT1 = 16'hfaaa;
    defparam counter_1252_add_4_29.INJECT1_0 = "NO";
    defparam counter_1252_add_4_29.INJECT1_1 = "NO";
    CCU2D counter_1252_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7856), .COUT(n7857), .S0(n133[25]), .S1(n133[26]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252_add_4_27.INIT0 = 16'hfaaa;
    defparam counter_1252_add_4_27.INIT1 = 16'hfaaa;
    defparam counter_1252_add_4_27.INJECT1_0 = "NO";
    defparam counter_1252_add_4_27.INJECT1_1 = "NO";
    CCU2D counter_1252_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7855), .COUT(n7856), .S0(n133[23]), .S1(n133[24]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_1252_add_4_25.INIT1 = 16'hfaaa;
    defparam counter_1252_add_4_25.INJECT1_0 = "NO";
    defparam counter_1252_add_4_25.INJECT1_1 = "NO";
    CCU2D counter_1252_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7854), .COUT(n7855), .S0(n133[21]), .S1(n133[22]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_1252_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_1252_add_4_23.INJECT1_0 = "NO";
    defparam counter_1252_add_4_23.INJECT1_1 = "NO";
    CCU2D counter_1252_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7853), .COUT(n7854), .S0(n133[19]), .S1(n133[20]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_1252_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_1252_add_4_21.INJECT1_0 = "NO";
    defparam counter_1252_add_4_21.INJECT1_1 = "NO";
    CCU2D counter_1252_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7852), .COUT(n7853), .S0(n133[17]), .S1(n133[18]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_1252_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_1252_add_4_19.INJECT1_0 = "NO";
    defparam counter_1252_add_4_19.INJECT1_1 = "NO";
    CCU2D counter_1252_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7851), .COUT(n7852), .S0(n133[15]), .S1(n133[16]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_1252_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_1252_add_4_17.INJECT1_0 = "NO";
    defparam counter_1252_add_4_17.INJECT1_1 = "NO";
    CCU2D counter_1252_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7850), .COUT(n7851), .S0(n133[13]), .S1(n133[14]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_1252_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_1252_add_4_15.INJECT1_0 = "NO";
    defparam counter_1252_add_4_15.INJECT1_1 = "NO";
    CCU2D counter_1252_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7849), .COUT(n7850), .S0(n133[11]), .S1(n133[12]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_1252_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_1252_add_4_13.INJECT1_0 = "NO";
    defparam counter_1252_add_4_13.INJECT1_1 = "NO";
    CCU2D counter_1252_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7848), .COUT(n7849), .S0(n133[9]), .S1(n133[10]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_1252_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_1252_add_4_11.INJECT1_0 = "NO";
    defparam counter_1252_add_4_11.INJECT1_1 = "NO";
    CCU2D counter_1252_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7847), .COUT(n7848), .S0(n133[7]), .S1(n133[8]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_1252_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_1252_add_4_9.INJECT1_0 = "NO";
    defparam counter_1252_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_1252_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7846), .COUT(n7847), .S0(n133[5]), .S1(n133[6]));   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1252_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_1252_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_1252_add_4_7.INJECT1_0 = "NO";
    defparam counter_1252_add_4_7.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module CD_config
//

module CD_config (\resolution[0] , clk_c, \V_FrontPorch_nxt_9__N_804[3] , 
            c_VGA_ready, clk_VGA, n5259, c_UART_ready, c_valid_N_785, 
            \baudrate[2] , n9112, \c_data[1] , \c_data[2] , \c_data[0] , 
            c_addr, c_valid, n9125, H_BackPorch_nxt_7__N_782, Current_Qudran_Config_nxt_1__N_886, 
            n8448, n3408, \baudrate[5] , n9189, \resolution[1] , H_Left_Margin_nxt_8__N_959, 
            \baudrate[8] , \baudrate[7] , \baudrate[6] , \baudrate_next_23__N_262[6] , 
            \baudrate[4] , \baudrate[3] , \c_data[1]_derived_1 , n9163, 
            clk_VGA_enable_1, n9147, c_ready_next_N_346, n9148, n9124, 
            \baudrate[1] ) /* synthesis syn_module_defined=1 */ ;
    output \resolution[0] ;
    input clk_c;
    input \V_FrontPorch_nxt_9__N_804[3] ;
    output c_VGA_ready;
    input clk_VGA;
    input n5259;
    output c_UART_ready;
    input c_valid_N_785;
    output \baudrate[2] ;
    input n9112;
    input \c_data[1] ;
    input \c_data[2] ;
    input \c_data[0] ;
    input [3:0]c_addr;
    input c_valid;
    output n9125;
    output H_BackPorch_nxt_7__N_782;
    input Current_Qudran_Config_nxt_1__N_886;
    input n8448;
    output n3408;
    output \baudrate[5] ;
    input n9189;
    output \resolution[1] ;
    input H_Left_Margin_nxt_8__N_959;
    output \baudrate[8] ;
    output \baudrate[7] ;
    output \baudrate[6] ;
    input \baudrate_next_23__N_262[6] ;
    output \baudrate[4] ;
    output \baudrate[3] ;
    input \c_data[1]_derived_1 ;
    output n9163;
    output clk_VGA_enable_1;
    output n9147;
    output c_ready_next_N_346;
    output n9148;
    output n9124;
    output \baudrate[1] ;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cs.v(36[6:13])
    
    wire clk_c_enable_158, n9142, n9130, clk_c_enable_219, n4223, 
        n4176;
    wire [23:0]baudrate_next_23__N_262;
    
    wire n9164, n4221, n4220, n4225;
    
    FD1P3AY resolution_reg_i0_i0 (.D(\V_FrontPorch_nxt_9__N_804[3] ), .SP(clk_c_enable_158), 
            .CK(clk_c), .Q(\resolution[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam resolution_reg_i0_i0.GSR = "ENABLED";
    FD1S3JX c_VGA_ready_reg_27 (.D(n5259), .CK(clk_VGA), .PD(n9142), .Q(c_VGA_ready)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam c_VGA_ready_reg_27.GSR = "ENABLED";
    FD1S3JX c_UART_ready_reg_28 (.D(n9130), .CK(clk_VGA), .PD(c_valid_N_785), 
            .Q(c_UART_ready)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam c_UART_ready_reg_28.GSR = "ENABLED";
    FD1P3IX baudrate_reg_i0_i2 (.D(n4176), .SP(clk_c_enable_219), .CD(n4223), 
            .CK(clk_c), .Q(\baudrate[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i2.GSR = "ENABLED";
    LUT4 i1_4_lut_rep_158 (.A(n9112), .B(\c_data[1] ), .C(n9130), .D(\c_data[2] ), 
         .Z(clk_c_enable_219)) /* synthesis lut_function=(!((B (C+(D))+!B (C))+!A)) */ ;
    defparam i1_4_lut_rep_158.init = 16'h020a;
    LUT4 i3139_2_lut (.A(\c_data[0] ), .B(\c_data[2] ), .Z(baudrate_next_23__N_262[4])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(62[6] 69[13])
    defparam i3139_2_lut.init = 16'h6666;
    LUT4 i7483_2_lut (.A(\c_data[0] ), .B(\c_data[2] ), .Z(baudrate_next_23__N_262[3])) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i7483_2_lut.init = 16'h1111;
    LUT4 i4172_2_lut_rep_172_4_lut (.A(n9164), .B(c_addr[1]), .C(c_addr[0]), 
         .D(c_valid), .Z(n9125)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(71[16:46])
    defparam i4172_2_lut_rep_172_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut (.A(c_valid), .B(n9164), .C(c_addr[1]), .D(c_addr[0]), 
         .Z(H_BackPorch_nxt_7__N_782)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(71[16:46])
    defparam i2_3_lut_4_lut.init = 16'h1000;
    LUT4 i2403_2_lut_3_lut_4_lut (.A(c_valid), .B(n9164), .C(Current_Qudran_Config_nxt_1__N_886), 
         .D(n8448), .Z(n3408)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(71[16:46])
    defparam i2403_2_lut_3_lut_4_lut.init = 16'h0100;
    FD1P3JX baudrate_reg_i0_i5 (.D(n9189), .SP(clk_c_enable_219), .PD(n4221), 
            .CK(clk_c), .Q(\baudrate[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i5.GSR = "ENABLED";
    FD1P3AY resolution_reg_i0_i1 (.D(H_Left_Margin_nxt_8__N_959), .SP(clk_c_enable_158), 
            .CK(clk_c), .Q(\resolution[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam resolution_reg_i0_i1.GSR = "ENABLED";
    FD1P3IX baudrate_reg_i0_i8 (.D(\c_data[0] ), .SP(clk_c_enable_219), 
            .CD(n4220), .CK(clk_c), .Q(\baudrate[8] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i8.GSR = "ENABLED";
    LUT4 i3205_2_lut (.A(clk_c_enable_219), .B(\c_data[0] ), .Z(n4223)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam i3205_2_lut.init = 16'h2222;
    LUT4 i7545_2_lut (.A(\c_data[1] ), .B(\c_data[2] ), .Z(n4176)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(62[6] 69[13])
    defparam i7545_2_lut.init = 16'h1111;
    FD1P3AX baudrate_reg_i0_i7 (.D(\c_data[2] ), .SP(clk_c_enable_219), 
            .CK(clk_c), .Q(\baudrate[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX baudrate_reg_i0_i6 (.D(\baudrate_next_23__N_262[6] ), .SP(clk_c_enable_219), 
            .CK(clk_c), .Q(\baudrate[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX baudrate_reg_i0_i4 (.D(baudrate_next_23__N_262[4]), .SP(clk_c_enable_219), 
            .CK(clk_c), .Q(\baudrate[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i4.GSR = "ENABLED";
    FD1P3AY baudrate_reg_i0_i3 (.D(baudrate_next_23__N_262[3]), .SP(clk_c_enable_219), 
            .CK(clk_c), .Q(\baudrate[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i3.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(\c_data[1]_derived_1 ), .B(n9142), .C(n9112), .D(n9130), 
         .Z(clk_c_enable_158)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h2000;
    LUT4 i3202_2_lut_3_lut (.A(n9112), .B(n9130), .C(\c_data[2] ), .Z(n4220)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i3202_2_lut_3_lut.init = 16'h0202;
    LUT4 c_addr_3__I_0_30_i6_2_lut_rep_210 (.A(c_addr[2]), .B(c_addr[3]), 
         .Z(n9163)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(61[7:36])
    defparam c_addr_3__I_0_30_i6_2_lut_rep_210.init = 16'hdddd;
    LUT4 i1_3_lut_4_lut (.A(c_addr[2]), .B(c_addr[3]), .C(n8448), .D(c_valid), 
         .Z(clk_VGA_enable_1)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(61[7:36])
    defparam i1_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_177_3_lut_4_lut (.A(c_addr[2]), .B(c_addr[3]), .C(c_addr[1]), 
         .D(c_addr[0]), .Z(n9130)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(61[7:36])
    defparam i1_2_lut_rep_177_3_lut_4_lut.init = 16'hfffd;
    LUT4 i2_3_lut_rep_194_4_lut (.A(c_addr[2]), .B(c_addr[3]), .C(c_addr[1]), 
         .D(c_addr[0]), .Z(n9147)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(61[7:36])
    defparam i2_3_lut_rep_194_4_lut.init = 16'hfdff;
    LUT4 i4201_3_lut_4_lut_3_lut_4_lut (.A(c_addr[2]), .B(c_addr[3]), .C(c_addr[1]), 
         .D(c_addr[0]), .Z(c_ready_next_N_346)) /* synthesis lut_function=((B+(C (D)+!C !(D)))+!A) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(61[7:36])
    defparam i4201_3_lut_4_lut_3_lut_4_lut.init = 16'hfddf;
    LUT4 i1_2_lut_rep_211 (.A(c_addr[2]), .B(c_addr[3]), .Z(n9164)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(71[16:46])
    defparam i1_2_lut_rep_211.init = 16'hbbbb;
    LUT4 i2_3_lut_rep_189_4_lut (.A(c_addr[2]), .B(c_addr[3]), .C(c_addr[0]), 
         .D(c_addr[1]), .Z(n9142)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(71[16:46])
    defparam i2_3_lut_rep_189_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_rep_195_3_lut (.A(c_addr[2]), .B(c_addr[3]), .C(c_valid), 
         .Z(n9148)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(71[16:46])
    defparam i1_2_lut_rep_195_3_lut.init = 16'hfbfb;
    LUT4 i1_2_lut_rep_171_3_lut_4_lut (.A(c_addr[2]), .B(c_addr[3]), .C(n8448), 
         .D(c_valid), .Z(n9124)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(71[16:46])
    defparam i1_2_lut_rep_171_3_lut_4_lut.init = 16'h0040;
    LUT4 i3203_2_lut_4_lut (.A(n9112), .B(\c_data[1] ), .C(n9130), .D(\c_data[2] ), 
         .Z(n4221)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i3203_2_lut_4_lut.init = 16'h0200;
    LUT4 i3207_2_lut (.A(clk_c_enable_219), .B(\c_data[0] ), .Z(n4225)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam i3207_2_lut.init = 16'h8888;
    FD1P3IX baudrate_reg_i0_i1 (.D(n4176), .SP(clk_c_enable_219), .CD(n4225), 
            .CK(clk_c), .Q(\baudrate[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/licenta_sistem_digital/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i1.GSR = "ENABLED";
    
endmodule

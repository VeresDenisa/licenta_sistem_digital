`define ASSInfo(msg = "") \
    $info($sformatf("%s: %m: %s", "PASS ASSERTION", msg))

module assertion_LM (
    input clk,
    input rst_n,

    input UART_data_debug_switch,

    input [7:0] UART_data,
    input UART_data_valid,

    input [3:0] CM_errors,
    input CM_errors_valid,

    input [1:0] UART_errors,
    input UART_errors_valid,

    input [7:0] config_notification,

    input [7:0] leds
    );

    property WRITE_CM_ERROR;
        @(posedge clk) disable iff (!rst_n)
        ~UART_data_debug_switch & ~CM_errors_valid |=> leds[3:0] == $past(CM_errors);
    endproperty : WRITE_CM_ERROR

    property WRITE_UART_ERROR;
        @(posedge clk) disable iff (!rst_n)
        ~UART_data_debug_switch & ~UART_errors_valid |=> leds[5:4] == $past(UART_errors);
    endproperty : WRITE_UART_ERROR

    property WRITE_UART_DATA;
        @(posedge clk) disable iff (!rst_n)
        UART_data_debug_switch & ~UART_data_valid |=> leds[7:0] == $past(UART_data);
    endproperty : WRITE_UART_DATA

    property WRITE_RESET;
        @(posedge clk) ~UART_data_debug_switch |-> leds[7] == ~rst_n;
    endproperty : WRITE_RESET

    property WRITE_SWITCH;
        @(posedge clk) disable iff (!rst_n)
        ~UART_data_debug_switch |-> leds[6] == ~UART_data_debug_switch;
    endproperty : WRITE_SWITCH


    ASSERTION_1_WRITE_CM_ERROR: assert property (WRITE_CM_ERROR) `ASSInfo("ASSERTION 1: WRITE_CM_ERROR!");
        else $error("ERROR ASSERTION 1: WRITE_CM_ERROR!");

    ASSERTION_2_WRITE_UART_ERROR: assert property (WRITE_UART_ERROR) `ASSInfo("ASSERTION 2: WRITE_UART_ERROR!");
        else $error("ERROR ASSERTION 2: WRITE_UART_ERROR!");

    ASSERTION_3_WRITE_UART_DATA: assert property (WRITE_UART_DATA) `ASSInfo("ASSERTION 3: WRITE_UART_DATA!");
        else $error("ERROR ASSERTION 3: WRITE_UART_DATA!");

    ASSERTION_4_WRITE_RESET: assert property (WRITE_RESET) `ASSInfo("ASSERTION 4: WRITE_RESET!");
        else $error("ERROR ASSERTION 4: WRITE_RESET!");

    ASSERTION_5_WRITE_SWITCH: assert property (WRITE_SWITCH) `ASSInfo("ASSERTION 5: WRITE_SWITCH!");
        else $error("ERROR ASSERTION 5: WRITE_SWITCH!");

endmodule : assertion_LM
`define ASSInfo(msg = "") \
    $info($sformatf("%s: %m: %s", "PASS ASSERTION", msg))

module assertion_UART (
    input clk,
    input rst_n,

    input clkinVGA,

    input in,

    input [4-1:0]c_addr,
    input [8-1:0]c_data,
    input c_valid,
    input c_ready,

    input [2-1:0] error,
    input valid_error,

    input [8-1:0] out,
    input valid_out
    );

    reg done_ff, done_nxt;
    reg error_ff, error_nxt;
    reg [1:0] state_ff, state_nxt;
    reg [3:0] counter_ff, counter_nxt;
    reg [3:0] data_counter_ff, data_counter_nxt;


    always @(posedge clk or negedge rst_n) begin
        if(!rst_n | (c_valid === 1'b1)) begin
            done_ff         <= 'b0;
            error_ff        <= 'b0;
            state_ff        <= 'b0;
            counter_ff      <= 'b0;
            data_counter_ff <= 'b0;
        end
        else begin
            done_ff         <= done_nxt;
            error_ff        <= error_nxt;
            state_ff        <= state_nxt;
            counter_ff      <= counter_nxt;
            data_counter_ff <= data_counter_nxt;
        end
    end

    always @(*) begin
        done_nxt         = done_ff;
        error_nxt        = error_ff;
        state_nxt        = state_ff;
        counter_nxt      = counter_ff;
        data_counter_nxt = data_counter_ff;

        case(state_ff)
            'b00: begin
                error_nxt = 1'b0;
                done_nxt = 1'b0;
                if(~in) counter_nxt++;
                else counter_nxt = 'b0;
                if(counter_ff >= 15) begin 
                    state_nxt = 'b01;
                    counter_nxt = 'b0;
                end
            end
            'b01: begin
                counter_nxt++;
                if(counter_ff >= 15) begin
                    data_counter_nxt++;
                    counter_nxt = 'b0;
                end
                if(data_counter_ff >= 8) begin
                    counter_nxt = 'b0;
                    state_nxt = 'b10;
                    data_counter_nxt = 'b0;
                end
            end
            'b10: begin
                if(in) counter_nxt++;
                else begin 
                    counter_nxt = 'b0;
                    error_nxt = 1'b1;
                    state_nxt = 'b00;
                end
                if(counter_ff >= 15) begin 
                    state_nxt = 'b00;
                    counter_nxt = 'b0;
                    done_nxt = 1'b1;
                end
            end         
        endcase
    end

    property VALID_OUT;
        @(posedge clk) disable iff (!rst_n || (c_valid === 1'b1))
        $rose(done_ff) |=> ##[20:40] $rose(valid_out);
    endproperty : VALID_OUT

    property VALID_ERROR;
        @(posedge clk) disable iff (!rst_n || (c_valid === 1'b1))
        $rose(error_ff) |=> ##[20:40] $rose(valid_error);
    endproperty : VALID_ERROR

    ASSERTION_1_VALID_OUT: assert property (VALID_OUT) `ASSInfo("ASSERTION 1: VALID_OUT!");
        else $error("ERROR ASSERTION 1: VALID_OUT!");

    ASSERTION_1_VALID_ERROR: assert property (VALID_ERROR) `ASSInfo("ASSERTION 1: VALID_ERROR!");
        else $error("ERROR ASSERTION 1: VALID_ERROR!");

endmodule : assertion_UART
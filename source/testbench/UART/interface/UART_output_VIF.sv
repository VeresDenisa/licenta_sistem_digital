import item_pack::*;

interface UART_output_VIF(input bit clk);
    logic [1:0] error;
    logic valid_error;
    logic [7:0] out;
    logic valid_out;

    clocking driver@(posedge clk);
        output error;
        output valid_error;
        output out;
        output valid_out;
    endclocking

    clocking monitor@(posedge clk);
        input error;
        input valid_error;
        input out;
        input valid_out;
    endclocking

    task send(UART_output_item t);
        @(driver);
        driver.error       <= t.error;
        driver.valid_error <= t.valid_error;
        driver.out         <= t.out;
        driver.valid_out   <= t.valid_out;
    endtask : send

    function automatic void receive(ref UART_output_item t);
        t.error       = monitor.error;
        t.valid_error = monitor.valid_error;
        t.out         = monitor.out;
        t.valid_out   = monitor.valid_out;
    endfunction
endinterface : UART_output_VIF
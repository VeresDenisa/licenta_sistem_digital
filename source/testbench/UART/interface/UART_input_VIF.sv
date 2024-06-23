import item_pack::*;

interface UART_input_VIF(input bit clk);
    logic in;

    clocking driver@(posedge clk);
        output in;
    endclocking

    clocking monitor@(posedge clk);
        input in;
    endclocking

    task send(UART_input_frame t);
        @(driver);
        driver.in <= t.START;
        repeat(16) @(driver);

        for(int i = 0; i < 8; i++) begin
            driver.in <= t.DATA[i];
            repeat(16) @(driver);
        end

        if(t.parity_config[1] == 1'b1) begin
            driver.in <= t.PARITY;
            repeat(16) @(driver);
        end

        driver.in <= t.STOP[0];
        repeat(16) @(driver);

        driver.in <= t.STOP[1];
        repeat(16) @(driver);

        driver.in <= 1'b1;
        repeat(48) @(driver);
    endtask : send

    function automatic void receive(ref UART_input_item t);
        t.in = monitor.in;
    endfunction
endinterface : UART_input_VIF
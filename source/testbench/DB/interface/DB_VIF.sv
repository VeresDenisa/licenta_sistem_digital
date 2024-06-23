import item_pack::*;

interface DB_VIF(input bit clk);
    logic HS;
    logic VS;
    logic DF_UART;
    logic DF_VGA;

    clocking driver@(posedge clk);
        output HS;
        output VS;
        output DF_UART;
        output DF_VGA;
    endclocking

    clocking monitor@(posedge clk);
        input HS;
        input VS;
        input DF_UART;
        input DF_VGA;
    endclocking

    task send(DB_item t);
        @(driver);
        driver.HS      <= t.HS;
        driver.VS      <= t.VS;
        driver.DF_UART <= t.DF_UART;
        driver.DF_VGA  <= t.DF_VGA;
    endtask : send

    function automatic void receive(ref DB_item t);
        t.HS      = monitor.HS;
        t.VS      = monitor.VS;
        t.DF_UART = monitor.DF_UART;
        t.DF_VGA  = monitor.DF_VGA;
    endfunction
endinterface : DB_VIF
import item_pack::*;

interface CM_input_VIF(input bit clk);

    logic Empty;
	logic [7:0] RXD_Data;
	logic Vertical_Split;
	logic Horizontal_Split;
	logic VGA_debug;
	logic HSync;
	logic VSync;

    clocking driver@(posedge clk);
        output Empty;
        output RXD_Data;
        output Vertical_Split;
        output Horizontal_Split;
        output VGA_debug;
        output HSync;
        output VSync;
    endclocking

    clocking monitor@(posedge clk);
        input Empty;
        input RXD_Data;
        input Vertical_Split;
        input Horizontal_Split;
        input VGA_debug;
        input HSync;
        input VSync;
    endclocking

    task send(CM_input_item t);
        @(driver);
        driver.Empty            <= t.Empty;
        driver.RXD_Data         <= t.RXD_Data;
        driver.Vertical_Split   <= t.Vertical_Split;
        driver.Horizontal_Split <= t.Horizontal_Split;
        driver.VGA_debug        <= t.VGA_debug;
        driver.HSync            <= t.HSync;
        driver.VSync            <= t.VSync;
    endtask : send

    function automatic void receive(ref CM_input_item t);
        t.Empty            = monitor.Empty;
        t.RXD_Data         = monitor.RXD_Data;
        t.Vertical_Split   = monitor.Vertical_Split;
        t.Horizontal_Split = monitor.Horizontal_Split;
        t.VGA_debug        = monitor.VGA_debug;
        t.HSync            = monitor.HSync;
        t.VSync            = monitor.VSync;
    endfunction
endinterface : CM_input_VIF
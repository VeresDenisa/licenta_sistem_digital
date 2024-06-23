import item_pack::*;

interface CD_VIF(input bit clk);
    logic clk_VGA;
    logic clk_UART;
    logic clk_LM;
    logic clk_DB;

    clocking monitor@(posedge clk);
        input clk_VGA;
        input clk_UART;
        input clk_LM;
        input clk_DB;
    endclocking

    function automatic void receive(ref CD_item t);
        t.clk_VGA  = monitor.clk_VGA;
        t.clk_UART = monitor.clk_UART;
        t.clk_LM   = monitor.clk_LM;
        t.clk_DB   = monitor.clk_DB;
    endfunction
endinterface : CD_VIF
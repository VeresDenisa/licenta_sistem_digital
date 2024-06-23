import item_pack::*;

interface VGA_output_VIF(input bit clk);
    logic HSync;
	logic VSync;
	logic [3:0] RED;
	logic [3:0] GREEN;
	logic [3:0] BLUE;

    clocking monitor@(posedge clk);
        input HSync;
        input VSync;
        input RED;
        input GREEN;
        input BLUE;
    endclocking

    function automatic void receive(ref VGA_output_item t);
        t.HSync = monitor.HSync;
        t.VSync = monitor.VSync;
        t.RED   = monitor.RED;
        t.GREEN = monitor.GREEN;
        t.BLUE  = monitor.BLUE;
    endfunction
endinterface : VGA_output_VIF
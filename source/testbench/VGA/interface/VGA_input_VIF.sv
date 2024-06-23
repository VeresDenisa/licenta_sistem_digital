import item_pack::*;

interface VGA_input_VIF(input bit clk);
    logic [11:0] data_in;

    clocking driver@(posedge clk);
        output data_in;
    endclocking

    clocking monitor@(posedge clk);
        input data_in;
    endclocking

    task send(VGA_input_item t);
        @(driver);
        driver.data_in <= t.data_in;
    endtask : send

    function automatic void receive(ref VGA_input_item t);
        t.data_in = monitor.data_in;
    endfunction
endinterface : VGA_input_VIF
import item_pack::*;

interface CONF_input_VIF(input bit clk);

    logic c_ready;

	logic [3:0] c_addr;
	logic [13:0] c_data;
	logic c_valid;

    clocking driver@(posedge clk);
        output c_addr;
        output c_data;
        output c_valid;
    endclocking

    clocking monitor@(posedge clk);
        input c_ready;
        input c_addr;
        input c_data;
        input c_valid;
    endclocking

    task send(CONF_item t);
        @(driver);
        driver.c_addr  <= t.c_addr;
        driver.c_data  <= t.c_data;
        driver.c_valid <= t.c_valid;
    endtask : send

    function automatic void receive(ref CONF_item t);
        t.c_ready = monitor.c_ready;
        t.c_addr  = monitor.c_addr;
        t.c_data  = monitor.c_data;
        t.c_valid = monitor.c_valid;
    endfunction
endinterface : CONF_input_VIF
covergroup CD_covergroup (ref CD_item item);
    clk_VGA_cvp  : coverpoint item.clk_VGA  { bins value_binary[2] = {0, 1}; }
    clk_UART_cvp : coverpoint item.clk_UART { bins value_binary[2] = {0, 1}; }
    clk_LM_cvp   : coverpoint item.clk_LM   { bins value_binary[2] = {0, 1}; }
    clk_DB_cvp   : coverpoint item.clk_DB   { bins value_binary[2] = {0, 1}; }

    clks_cross : cross clk_VGA_cvp, clk_UART_cvp, clk_LM_cvp, clk_DB_cvp {}
endgroup : CD_covergroup
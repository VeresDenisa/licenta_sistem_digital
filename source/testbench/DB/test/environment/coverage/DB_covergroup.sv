covergroup DB_covergroup (ref DB_item item);
    HS_cvp      : coverpoint item.HS      { bins value_binary[2] = {0, 1}; }
    VS_cvp      : coverpoint item.VS      { bins value_binary[2] = {0, 1}; }
    DF_UART_cvp : coverpoint item.DF_UART { bins value_binary[2] = {0, 1}; }
    DF_VGA_cvp  : coverpoint item.DF_VGA  { bins value_binary[2] = {0, 1}; }

    HS_VS_cross : cross HS_cvp, VS_cvp {}
    UART_VGA_cross : cross DF_UART_cvp, DF_VGA_cvp {}
endgroup : DB_covergroup
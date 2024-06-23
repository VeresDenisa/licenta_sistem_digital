covergroup UART_covergroup (ref UART_output_item item);
    error_cvp : coverpoint item.error { bins values[3] = {0, 1, 2}; }
    out_cvp   : coverpoint item.out { 
        bins limit_values[4] = {'h00, 'h55, 'hAA, 'hFF};
        bins inter_values[3] = {['h00 : 'h54], ['h56 : 'hA9], ['hAB : 'hFE]}; 
    }
    valid_error_cvp : coverpoint item.valid_error { bins value_binary[1] = {1}; }
    valid_out_cvp   : coverpoint item.valid_out   { bins value_binary[1] = {1}; }

    data_cross  : cross error_cvp, valid_error_cvp {}
    error_cross : cross out_cvp, valid_out_cvp {}
endgroup : UART_covergroup
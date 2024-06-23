covergroup CM_input_covergroup (ref CM_input_item item);
    HSync_cvp : coverpoint item.HSync { bins value_binary[2] = {0, 1}; }
    VSync_cvp : coverpoint item.VSync { bins value_binary[2] = {0, 1}; }  

    Vertical_Split_cvp   : coverpoint item.Vertical_Split { bins value_binary[2] = {0, 1}; }
    Horizontal_Split_cvp : coverpoint item.Horizontal_Split { bins value_binary[2] = {0, 1}; }  

    Empty_cvp     : coverpoint item.Empty { bins value_binary[2] = {0, 1}; } 
    VGA_debug_cvp : coverpoint item.VGA_debug { bins value_binary[2] = {0, 1}; }  

    RXD_Data_cvp   : coverpoint item.RXD_Data { 
        bins inter_values[3] = {['h00 : 'h55], ['h56 : 'hAA], ['hAB : 'hFF]}; 
    }
endgroup : CM_input_covergroup 
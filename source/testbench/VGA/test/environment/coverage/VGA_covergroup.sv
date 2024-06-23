covergroup VGA_covergroup (ref VGA_output_item item);
    RED_cvp   : coverpoint item.RED { 
        bins limit_values[4] = {'h0, 'h5, 'hA, 'hF};
        bins inter_values[3] = {['h0 : 'h4], ['h6 : 'h9], ['hB : 'hE]}; 
    }
    GREEN_cvp : coverpoint item.GREEN { 
        bins limit_values[4] = {'h0, 'h5, 'hA, 'hF};
        bins inter_values[3] = {['h0 : 'h4], ['h6 : 'h9], ['hB : 'hE]}; 
    }
    BLUE_cvp  : coverpoint item.BLUE { 
        bins limit_values[4] = {'h0, 'h5, 'hA, 'hF};
        bins inter_values[3] = {['h0 : 'h4], ['h6 : 'h9], ['hB : 'hE]}; 
    }
    
    HSync_cvp : coverpoint item.HSync { bins value_binary[2] = {0, 1}; }
    VSync_cvp : coverpoint item.VSync { bins value_binary[2] = {0, 1}; }        
endgroup : VGA_covergroup
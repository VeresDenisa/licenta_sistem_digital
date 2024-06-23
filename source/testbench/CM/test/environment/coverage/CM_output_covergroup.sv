covergroup CM_output_covergroup (ref CM_output_item item);
    Config_Notification_Valid_cvp : coverpoint item.Config_Notification_Valid { bins value_binary[2] = {0, 1}; } 
    VGA_Notification_Valid_cvp    : coverpoint item.VGA_Notification_Valid    { bins value_binary[2] = {0, 1}; }  
    Error_Valid_cvp               : coverpoint item.Error_Valid               { bins value_binary[2] = {0, 1}; }  

    Data_VGA_cvp : coverpoint item.Data_VGA { 
        bins values05[8] = {'h000, 'h005, 'h050, 'h055, 'h500, 'h505, 'h550, 'h555}; 
        bins values0A[8] = {'h000, 'h00A, 'h0A0, 'h0AA, 'hA00, 'hA0A, 'hAA0, 'hAAA}; 
        bins values0F[8] = {'h000, 'h00F, 'h0F0, 'h0FF, 'hF00, 'hF0F, 'hFF0, 'hFFF}; 
        bins values5A[8] = {'h555, 'h55A, 'h5A5, 'h5AA, 'hA55, 'hA5A, 'hAA5, 'hAAA}; 
        bins values5F[8] = {'h555, 'h55F, 'h5F5, 'h5FF, 'hF55, 'hF5F, 'hFF5, 'hFFF}; 
        bins valuesAF[8] = {'hAAA, 'hAAF, 'hAFA, 'hAFF, 'hFAA, 'hFAF, 'hFFA, 'hFFF}; 
    } 
endgroup : CM_output_covergroup
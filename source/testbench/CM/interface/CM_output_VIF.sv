import item_pack::*;

interface CM_output_VIF(input bit clk);

    logic [7:0] Config_Status;

	logic [3:0] Config_Notification;
	logic Config_Notification_Valid;

	logic [3:0] Config_Error;
	logic Error_Valid;

	logic [3:0] VGA_Notification;
	logic VGA_Notification_Valid;

	logic [11:0] Data_VGA;

    clocking driver@(posedge clk);
        output Config_Status;
        output Config_Notification;
        output Config_Notification_Valid;
        output Config_Error;
        output Error_Valid;
        output VGA_Notification;
        output VGA_Notification_Valid;
        output Data_VGA;  
    endclocking

    clocking monitor@(posedge clk);
        input Config_Status;
        input Config_Notification;
        input Config_Notification_Valid;
        input Config_Error;
        input Error_Valid;
        input VGA_Notification;
        input VGA_Notification_Valid;
        input Data_VGA;
    endclocking

    task send(CM_output_item t);
        @(driver);
        driver.Config_Status             <= t.Config_Status;
        driver.Config_Notification       <= t.Config_Notification;
        driver.Config_Notification_Valid <= t.Config_Notification_Valid;
        driver.Config_Error              <= t.Config_Error;
        driver.Error_Valid               <= t.Error_Valid;
        driver.VGA_Notification          <= t.VGA_Notification;
        driver.VGA_Notification_Valid    <= t.VGA_Notification_Valid;
        driver.Data_VGA                  <= t.Data_VGA;
    endtask : send

    function automatic void receive(ref CM_output_item t);
        t.Config_Status             = monitor.Config_Status;
        t.Config_Notification       = monitor.Config_Notification;
        t.Config_Notification_Valid = monitor.Config_Notification_Valid;
        t.Config_Error              = monitor.Config_Error;
        t.Error_Valid               = monitor.Error_Valid;
        t.VGA_Notification          = monitor.VGA_Notification;
        t.VGA_Notification_Valid    = monitor.VGA_Notification_Valid;
        t.Data_VGA                  = monitor.Data_VGA;
    endfunction
endinterface : CM_output_VIF
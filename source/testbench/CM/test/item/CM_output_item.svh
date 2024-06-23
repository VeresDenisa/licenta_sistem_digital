class CM_output_item extends uvm_sequence_item;
    `uvm_object_utils(CM_output_item);

    rand logic [7:0] Config_Status;

	rand logic [3:0] Config_Notification;
	rand logic Config_Notification_Valid;

	rand logic [3:0] Config_Error;
	rand logic Error_Valid;

	rand logic [3:0] VGA_Notification;
	rand logic VGA_Notification_Valid;

	rand logic [11:0] Data_VGA;
    
    function new(string name = "CM_output_item");
        super.new(name);
    endfunction : new
    
    extern function string convert2string(); 

    extern function bit  compare(CM_output_item item);
    extern function void copy(CM_output_item item); 
    extern function void setDefault(); 
    extern function bit  equalDefault(); 
endclass : CM_output_item


function bit CM_output_item::compare(CM_output_item item);
    if(this.Config_Status             !== item.Config_Status)             return 1'b0;
    if(this.Config_Notification       !== item.Config_Notification)       return 1'b0;
    if(this.Config_Notification_Valid !== item.Config_Notification_Valid) return 1'b0;
    if(this.Config_Error              !== item.Config_Error)              return 1'b0;
    if(this.Error_Valid               !== item.Error_Valid)               return 1'b0;
    if(this.VGA_Notification          !== item.VGA_Notification)          return 1'b0;
    if(this.VGA_Notification_Valid    !== item.VGA_Notification_Valid)    return 1'b0;
    if(this.Data_VGA                  !== item.Data_VGA)                  return 1'b0;
    return 1'b1;
endfunction : compare

function void CM_output_item::copy(CM_output_item item);
    this.Config_Status             = item.Config_Status;
    this.Config_Notification       = item.Config_Notification;
    this.Config_Notification_Valid = item.Config_Notification_Valid;
    this.Config_Error              = item.Config_Error;
    this.Error_Valid               = item.Error_Valid;
    this.VGA_Notification          = item.VGA_Notification;
    this.VGA_Notification_Valid    = item.VGA_Notification_Valid;
    this.Data_VGA                  = item.Data_VGA;
endfunction : copy

function void CM_output_item::setDefault();
    this.Config_Status             = 'b0;
    this.Config_Notification       = 'b0;
    this.Config_Notification_Valid = 'b0;
    this.Config_Error              = 'b0;
    this.Error_Valid               = 'b0;
    this.VGA_Notification          = 'b0;
    this.VGA_Notification_Valid    = 'b0;
    this.Data_VGA                  = 'b0;
endfunction : setDefault

function bit CM_output_item::equalDefault();
    if(this.Config_Status             !== 'b0) return 1'b0;
    if(this.Config_Notification       !== 'b0) return 1'b0;
    if(this.Config_Notification_Valid !== 'b0) return 1'b0;
    if(this.Config_Error              !== 'b0) return 1'b0;
    if(this.Error_Valid               !== 'b0) return 1'b0;
    if(this.VGA_Notification          !== 'b0) return 1'b0;
    if(this.VGA_Notification_Valid    !== 'b0) return 1'b0;
    if(this.Data_VGA                  !== 'b0) return 1'b0;
  return 1'b1;
endfunction : equalDefault

function string CM_output_item::convert2string();
    return $sformatf("Config_Status:%0b, Config_Notification:%0b, Config_Notification_Valid:%0b, Config_Error:%0b, Error_Valid:%0b, VGA_Notification:%0b, VGA_Notification_Valid:%0b, Data_VGA:%0b", Config_Status, Config_Notification, Config_Notification_Valid, Config_Error, Error_Valid, VGA_Notification, VGA_Notification_Valid, Data_VGA);
endfunction : convert2string
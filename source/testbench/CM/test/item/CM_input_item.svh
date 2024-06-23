class CM_input_item extends uvm_sequence_item;
    `uvm_object_utils(CM_input_item);

    rand logic Empty;
	rand logic [7:0] RXD_Data;
	rand logic Vertical_Split;
	rand logic Horizontal_Split;
	rand logic VGA_debug;
	rand logic HSync;
	rand logic VSync;
    
    function new(string name = "CM_input_item");
        super.new(name);
    endfunction : new
    
    extern function string convert2string(); 

    extern function bit  compare(CM_input_item item);
    extern function void copy(CM_input_item item); 
    extern function void setDefault(); 
    extern function bit  equalDefault(); 
endclass : CM_input_item


function bit CM_input_item::compare(CM_input_item item);
    if(this.Empty            !== item.Empty)            return 1'b0;
    if(this.RXD_Data         !== item.RXD_Data)         return 1'b0;
    if(this.Vertical_Split   !== item.Vertical_Split)   return 1'b0;
    if(this.Horizontal_Split !== item.Horizontal_Split) return 1'b0;
    if(this.VGA_debug        !== item.VGA_debug)        return 1'b0;
    if(this.HSync            !== item.HSync)            return 1'b0;
    if(this.VSync            !== item.VSync)            return 1'b0;
    return 1'b1;
endfunction : compare

function void CM_input_item::copy(CM_input_item item);
    this.Empty            = item.Empty;
    this.RXD_Data         = item.RXD_Data;
    this.Vertical_Split   = item.Vertical_Split;
    this.Horizontal_Split = item.Horizontal_Split;
    this.VGA_debug        = item.VGA_debug;
    this.HSync            = item.HSync;
    this.VSync            = item.VSync;
endfunction : copy

function void CM_input_item::setDefault();
    this.Empty            = 'b0;
    this.RXD_Data         = 'b0;
    this.Vertical_Split   = 'b0;
    this.Horizontal_Split = 'b0;
    this.VGA_debug        = 'b0;
    this.HSync            = 'b0;
    this.VSync            = 'b0;
endfunction : setDefault

function bit CM_input_item::equalDefault();
    if(this.Empty            !== 'b0) return 1'b0;
    if(this.RXD_Data         !== 'b0) return 1'b0;
    if(this.Vertical_Split   !== 'b0) return 1'b0;
    if(this.Horizontal_Split !== 'b0) return 1'b0;
    if(this.VGA_debug        !== 'b0) return 1'b0;
    if(this.HSync            !== 'b0) return 1'b0;
    if(this.VSync            !== 'b0) return 1'b0;
  return 1'b1;
endfunction : equalDefault

function string CM_input_item::convert2string();
    return $sformatf("Empty:%0b, RXD_Data:%0b, Vertical_Split:%0b, Horizontal_Split:%0b, VGA_debug:%0b, HSync:%0b, VSync:%0b", Empty, RXD_Data, Vertical_Split, Horizontal_Split, VGA_debug, HSync, VSync);
endfunction : convert2string
class VGA_output_item extends uvm_sequence_item;
    `uvm_object_utils(VGA_output_item);

    rand logic HSync;
	rand logic VSync;
	rand logic [3:0] RED;
	rand logic [3:0] GREEN;
	rand logic [3:0] BLUE;
    
    function new(string name = "VGA_output_item");
        super.new(name);
    endfunction : new
    
    extern function string convert2string(); 

    extern function bit  compare(VGA_output_item item);
    extern function void copy(VGA_output_item item); 
    extern function void setDefault(); 
    extern function bit  equalDefault(); 
endclass : VGA_output_item


function bit VGA_output_item::compare(VGA_output_item item);
    if(this.HSync !== item.HSync) return 1'b0;
    if(this.VSync !== item.VSync) return 1'b0;
    if(this.RED   !== item.RED)   return 1'b0;
    if(this.GREEN !== item.GREEN) return 1'b0;
    if(this.BLUE  !== item.BLUE)  return 1'b0;
    return 1'b1;
endfunction : compare

function void VGA_output_item::copy(VGA_output_item item);
    this.HSync = item.HSync;
    this.VSync = item.VSync;
    this.RED   = item.RED;
    this.GREEN = item.GREEN;
    this.BLUE  = item.BLUE;
endfunction : copy

function void VGA_output_item::setDefault();
    this.HSync = 'b0;
    this.VSync = 'b0;
    this.RED   = 'b0;
    this.GREEN = 'b0;
    this.BLUE  = 'b0;
endfunction : setDefault

function bit VGA_output_item::equalDefault();
    if(this.HSync !== 'b0) return 1'b0;
    if(this.VSync !== 'b0) return 1'b0;
    if(this.RED   !== 'b0) return 1'b0;
    if(this.GREEN !== 'b0) return 1'b0;
    if(this.BLUE  !== 'b0) return 1'b0;
  return 1'b1;
endfunction : equalDefault

function string VGA_output_item::convert2string();
    return $sformatf("HSync:%0b, VSync:%0b, RED:%0b, GREEN:%0b, BLUE:%0b", HSync, VSync, RED, GREEN, BLUE);
endfunction : convert2string
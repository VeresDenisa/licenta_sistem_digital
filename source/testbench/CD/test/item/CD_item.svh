class CD_item extends uvm_sequence_item;
    `uvm_object_utils(CD_item);
    
    rand logic clk_VGA;
    rand logic clk_UART;
    rand logic clk_LM;
    rand logic clk_DB;
    
    function new(string name = "CD_item");
        super.new(name);
    endfunction : new
    
    extern function string convert2string(); 

    extern function bit  compare(CD_item item);
    extern function void copy(CD_item item); 
    extern function void setDefault(); 
    extern function bit  equalDefault(); 
endclass : CD_item


function bit CD_item::compare(CD_item item);
    if(this.clk_VGA  !== item.clk_VGA)  return 1'b0;
    if(this.clk_UART !== item.clk_UART) return 1'b0;
    if(this.clk_LM   !== item.clk_LM)   return 1'b0;
    if(this.clk_DB   !== item.clk_DB)   return 1'b0;
    return 1'b1;
endfunction : compare

function void CD_item::copy(CD_item item);
    this.clk_VGA  = item.clk_VGA;
    this.clk_UART = item.clk_UART;
    this.clk_LM   = item.clk_LM;
    this.clk_DB   = item.clk_DB;
endfunction : copy

function void CD_item::setDefault();
    this.clk_VGA  = 'b0;
    this.clk_UART = 'b0;
    this.clk_LM   = 'b0;
    this.clk_DB   = 'b0;
endfunction : setDefault

function bit CD_item::equalDefault();
    if(this.clk_VGA  !== 'b0) return 1'b0;
    if(this.clk_UART !== 'b0) return 1'b0;
    if(this.clk_LM   !== 'b0) return 1'b0;
    if(this.clk_DB   !== 'b0) return 1'b0;
  return 1'b1;
endfunction : equalDefault

function string CD_item::convert2string();
    return $sformatf("clk_VGA:%0b, clk_UART:%0b, clk_LM:%0b, clk_DB:%0b", clk_VGA, clk_UART, clk_LM, clk_DB);
endfunction : convert2string
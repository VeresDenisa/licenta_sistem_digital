class DB_item extends uvm_sequence_item;
    `uvm_object_utils(DB_item);

    rand logic HS;
    rand logic VS;
    rand logic DF_UART;
    rand logic DF_VGA;
    
    function new(string name = "DB_item");
        super.new(name);
    endfunction : new
    
    extern function string convert2string(); 

    extern function bit  compare(DB_item item);
    extern function void copy(DB_item item); 
    extern function void setDefault(); 
    extern function bit  equalDefault(); 
endclass : DB_item


function bit DB_item::compare(DB_item item);
    if(this.HS      !== item.HS)  return 1'b0;
    if(this.VS      !== item.VS)  return 1'b0;
    if(this.DF_UART !== item.DF_UART)  return 1'b0;
    if(this.DF_VGA  !== item.DF_VGA)  return 1'b0;
    return 1'b1;
endfunction : compare

function void DB_item::copy(DB_item item);
    this.HS      = item.HS;
    this.VS      = item.VS;
    this.DF_UART = item.DF_UART;
    this.DF_VGA  = item.DF_VGA;
endfunction : copy

function void DB_item::setDefault();
    this.HS      = 'b0;
    this.VS      = 'b0;
    this.DF_UART = 'b0;
    this.DF_VGA  = 'b0;
endfunction : setDefault

function bit DB_item::equalDefault();
    if(this.HS      !== 'b0) return 1'b0;
    if(this.VS      !== 'b0) return 1'b0;
    if(this.DF_UART !== 'b0) return 1'b0;
    if(this.DF_VGA  !== 'b0) return 1'b0;
  return 1'b1;
endfunction : equalDefault

function string DB_item::convert2string();
    return $sformatf("HS:%0b, VS:%0b, UART:%0b, VGA:%0b", HS, VS, DF_UART, DF_VGA);
endfunction : convert2string
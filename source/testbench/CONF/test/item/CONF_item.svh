class CONF_item extends uvm_sequence_item;
    `uvm_object_utils(CONF_item);

    rand logic c_ready;
	rand logic [3:0] c_addr;
	rand logic [13:0] c_data;
	rand logic c_valid;
    
    function new(string name = "CONF_item");
        super.new(name);
    endfunction : new

    constraint valid_UART_config { c_valid inside {1}; c_addr inside {'b0101, 'b0110, 'b0100, 'b1000}; }
    
    extern function string convert2string(); 

    extern function bit  compare(CONF_item item);
    extern function void copy(CONF_item item); 
    extern function void setDefault(); 
    extern function bit  equalDefault(); 
endclass : CONF_item


function bit CONF_item::compare(CONF_item item);
    if(this.c_ready !== item.c_ready) return 1'b0;
    if(this.c_addr  !== item.c_addr)  return 1'b0;
    if(this.c_data  !== item.c_data)  return 1'b0;
    if(this.c_valid !== item.c_valid) return 1'b0;
    return 1'b1;
endfunction : compare

function void CONF_item::copy(CONF_item item);
    this.c_ready = item.c_ready;
    this.c_addr  = item.c_addr;
    this.c_data  = item.c_data;
    this.c_valid = item.c_valid;
endfunction : copy

function void CONF_item::setDefault();
    this.c_ready = 'b1;
    this.c_addr  = 'b0;
    this.c_data  = 'b0;
    this.c_valid = 'b0;
endfunction : setDefault

function bit CONF_item::equalDefault();
    if(this.c_ready !== 'b1) return 1'b0;
    if(this.c_addr  !== 'b0) return 1'b0;
    if(this.c_data  !== 'b0) return 1'b0;
    if(this.c_valid !== 'b0) return 1'b0;
  return 1'b1;
endfunction : equalDefault

function string CONF_item::convert2string();
    return $sformatf("c_ready:%0b, c_addr:%0b, c_data:%0b, c_valid:%0b", c_ready, c_addr, c_data, c_valid);
endfunction : convert2string
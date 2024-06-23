class UART_output_item extends uvm_sequence_item;
    `uvm_object_utils(UART_output_item);

    rand logic [1:0] error;
    rand logic valid_error;
    rand logic [7:0] out;
    rand logic valid_out;
    
    function new(string name = "UART_output_item");
        super.new(name);
    endfunction : new
    
    extern function string convert2string(); 

    extern function bit  compare(UART_output_item item);
    extern function void copy(UART_output_item item); 
    extern function void setDefault(); 
    extern function bit  equalDefault(); 
endclass : UART_output_item


function bit UART_output_item::compare(UART_output_item item);
    if(this.error       !== item.error)       return 1'b0;
    if(this.valid_error !== item.valid_error) return 1'b0;
    if(this.out         !== item.out)         return 1'b0;
    if(this.valid_out   !== item.valid_out)   return 1'b0;
    return 1'b1;
endfunction : compare

function void UART_output_item::copy(UART_output_item item);
    this.error       = item.error;
    this.valid_error = item.valid_error;
    this.out         = item.out;
    this.valid_out   = item.valid_out;
endfunction : copy

function void UART_output_item::setDefault();
    this.error       = 'b0;
    this.valid_error = 'b0;
    this.out         = 'b0;
    this.valid_out   = 'b0;
endfunction : setDefault

function bit UART_output_item::equalDefault();
    if(this.error       !== 'b0) return 1'b0;
    if(this.valid_error !== 'b0) return 1'b0;
    if(this.out         !== 'b0) return 1'b0;
    if(this.valid_out   !== 'b0) return 1'b0;
  return 1'b1;
endfunction : equalDefault

function string UART_output_item::convert2string();
    return $sformatf("error:%0b, valid_error:%0b, out:%0b, valid_out:%0b", error, valid_error, out, valid_out);
endfunction : convert2string
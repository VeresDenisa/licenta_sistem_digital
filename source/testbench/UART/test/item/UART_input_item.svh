class UART_input_item extends uvm_sequence_item;
    `uvm_object_utils(UART_input_item);

    rand logic in;

    constraint full_sync { in dist { 1'b0 := 50, 1'b1 := 50 }; }
    
    function new(string name = "UART_input_item");
        super.new(name);
    endfunction : new
    
    extern function string convert2string(); 

    extern function bit  compare(UART_input_item item);
    extern function void copy(UART_input_item item); 
    extern function void setDefault(); 
    extern function bit  equalDefault(); 
endclass : UART_input_item


function bit UART_input_item::compare(UART_input_item item);
    if(this.in !== item.in) return 1'b0;
    return 1'b1;
endfunction : compare

function void UART_input_item::copy(UART_input_item item);
    this.in = item.in;
endfunction : copy

function void UART_input_item::setDefault();
    this.in = 'b1;
endfunction : setDefault

function bit UART_input_item::equalDefault();
    if(this.in !== 'b1) return 1'b0;
  return 1'b1;
endfunction : equalDefault

function string UART_input_item::convert2string();
    return $sformatf("in:%0b", in);
endfunction : convert2string
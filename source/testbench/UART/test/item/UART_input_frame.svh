class UART_input_frame extends uvm_sequence_item;
    `uvm_object_utils(UART_input_frame);

         logic START = 1'b0;
    rand logic [7:0] DATA;
         logic PARITY;
    rand logic [1:0] STOP;

    bit [1:0] parity_config;
    bit [1:0] error_type;

    constraint relevant_data { DATA dist { 'h00 := 10, 'h55 := 10, 'hAA := 10, 'hFF := 10, ['h01:'h54] := 7, ['h56:'hA9] := 7, ['hAB:'hFE] := 7 };  }
    
    function new(string name = "UART_input_frame");
        super.new(name);
    endfunction : new
    
    extern function string convert2string(); 

    extern function bit  compare(UART_input_frame item);
    extern function void copy(UART_input_frame item); 
    extern function void setDefault(); 
    extern function bit  equalDefault(); 
    extern function void post_randomize();

    extern function void set_parameters(bit [1:0] parity_config = 0, bit [1:0] error_type = 0);
endclass : UART_input_frame


function void UART_input_frame::set_parameters(bit [1:0] parity_config = 0, bit [1:0] error_type = 0);
    this.parity_config = parity_config;
    this.error_type    = error_type;
endfunction : set_parameters

function void UART_input_frame::post_randomize();
    this.STOP = 2'b11;

    if(this.parity_config == 'b10) this.PARITY = (^this.DATA);
    else if (this.parity_config == 'b11) this.PARITY = ~(^this.DATA);

    if(this.error_type == 'b01) this.PARITY = ~this.PARITY;
    else if(this.error_type == 'b11) this.STOP = 'b00;

endfunction : post_randomize

function bit UART_input_frame::compare(UART_input_frame item);
    if(this.START  !== item.START ) return 1'b0;
    if(this.DATA   !== item.DATA  ) return 1'b0;
    if(this.PARITY !== item.PARITY) return 1'b0;
    if(this.STOP   !== item.STOP  ) return 1'b0;
    return 1'b1;
endfunction : compare

function void UART_input_frame::copy(UART_input_frame item);
    this.START  = item.START ;
    this.DATA   = item.DATA  ;
    this.PARITY = item.PARITY;
    this.STOP   = item.STOP  ;
endfunction : copy

function void UART_input_frame::setDefault();
    this.START  = 'b1;
    this.DATA   = 'b1;
    this.PARITY = 'b1;
    this.STOP   = 'b1;
endfunction : setDefault

function bit UART_input_frame::equalDefault();
    if(this.START  !== 'b1) return 1'b0;
    if(this.DATA   !== 'b1) return 1'b0;
    if(this.PARITY !== 'b1) return 1'b0;
    if(this.STOP   !== 'b1) return 1'b0;
  return 1'b1;
endfunction : equalDefault

function string UART_input_frame::convert2string();
    return $sformatf("START: %0b, DATA: %0b, PARITY: %0b, STOP: %0b", START, DATA, PARITY, STOP);
endfunction : convert2string
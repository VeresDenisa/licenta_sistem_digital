class UART_input_sequence extends uvm_sequence #(UART_input_frame);
    `uvm_object_utils(UART_input_sequence)
    
    UART_input_frame item;

    bit [1:0] parity_config;
    bit [1:0] error_type;
    integer item_number = 1;

    function new (string name = "UART_input_sequence");
        super.new(name);
    endfunction : new

    extern task body();

    extern function void set_parameters(bit [1:0] parity_config = 0, bit [1:0] error_type = 0, integer item_number = 1);
endclass : UART_input_sequence



function void UART_input_sequence::set_parameters(bit [1:0] parity_config = 0, bit [1:0] error_type = 0, integer item_number = 1);
    this.parity_config = parity_config;
    this.error_type    = error_type;
    this.item_number   = item_number;
endfunction : set_parameters

task UART_input_sequence::body();
    item = UART_input_frame::type_id::create("UART_input_frame");

    `uvm_info(get_name(), $sformatf("Create UART input sequence."), UVM_MEDIUM);

    repeat(item_number) begin
        start_item(item);
        item.set_parameters(parity_config, error_type);
        assert(item.randomize());
        `uvm_info(get_name(), $sformatf("Create UART input item: %s", item.convert2string), UVM_FULL);
        finish_item(item);
    end
endtask : body

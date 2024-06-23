class UART_output_sequence extends uvm_sequence #(UART_output_item);
    `uvm_object_utils(UART_output_sequence)
    
    UART_output_item item;

    integer item_number = 10;

    function new (string name = "UART_output_sequence");
        super.new(name);
    endfunction : new

    extern task body();

    extern function void set_parameters(integer item_number = 10);
endclass : UART_output_sequence



function void UART_output_sequence::set_parameters(integer item_number = 10);
    this.item_number = item_number;
endfunction : set_parameters

task UART_output_sequence::body();
    item = UART_output_item::type_id::create("UART_output_item");

    `uvm_info(get_name(), $sformatf("Create UART output sequence."), UVM_MEDIUM);

    repeat(item_number) begin
        start_item(item);
        assert(item.randomize());
        `uvm_info(get_name(), $sformatf("Create UART output item: %s", item.convert2string), UVM_FULL);
        finish_item(item);
    end
endtask : body

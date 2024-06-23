class CM_input_sequence extends uvm_sequence #(CM_input_item);
    `uvm_object_utils(CM_input_sequence)
    
    CM_input_item item;

    integer item_number = 100;

    function new (string name = "CM_input_sequence");
        super.new(name);
    endfunction : new

    extern task body();
    extern function void set_parameters(integer item_number = 100);
endclass : CM_input_sequence


function void CM_input_sequence::set_parameters(integer item_number = 100);
    this.item_number = item_number;
endfunction : set_parameters


task CM_input_sequence::body();
    item = CM_input_item::type_id::create("CM_input_item");

    `uvm_info(get_name(), $sformatf("Create CM input sequence."), UVM_MEDIUM);

    repeat(item_number) begin
        start_item(item);
        assert(item.randomize());
        `uvm_info(get_name(), $sformatf("Create CM input item: %s", item.convert2string), UVM_FULL);
        finish_item(item);
    end
endtask : body

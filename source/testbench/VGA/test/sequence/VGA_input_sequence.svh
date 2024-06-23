class VGA_input_sequence extends uvm_sequence #(VGA_input_item);
    `uvm_object_utils(VGA_input_sequence)
    
    VGA_input_item item;

    integer item_number = 100;

    function new (string name = "VGA_input_sequence");
        super.new(name);
    endfunction : new

    extern task body();
    extern function void set_parameters(integer item_number = 100);
endclass : VGA_input_sequence



function void VGA_input_sequence::set_parameters(integer item_number = 100);
    this.item_number = item_number;
endfunction : set_parameters

task VGA_input_sequence::body();
    item = VGA_input_item::type_id::create("VGA_input_item");

    `uvm_info(get_name(), $sformatf("Create VGA input sequence."), UVM_MEDIUM);

    repeat(item_number) begin
        #8010;
        start_item(item);
        assert(item.randomize());
        `uvm_info(get_name(), $sformatf("Create VGA input item: %s", item.convert2string), UVM_FULL);
        finish_item(item);
    end
endtask : body

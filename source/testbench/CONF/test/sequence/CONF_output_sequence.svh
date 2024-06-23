class CONF_output_sequence extends uvm_sequence #(CONF_item);
    `uvm_object_utils(CONF_output_sequence)
    
    CONF_item item;
    
    function new (string name = "CONF_output_sequence");
        super.new(name);
    endfunction : new

    extern task body();
endclass : CONF_output_sequence



task CONF_output_sequence::body();
    item = CONF_item::type_id::create("CONF_item");

    `uvm_info(get_name(), $sformatf("Create an output item."), UVM_HIGH);

    start_item(item);
    item.c_ready = 1'b1;
    `uvm_info(get_name(), $sformatf("Create CONF output item: %s", item.convert2string), UVM_FULL);
    finish_item(item);

    start_item(item);
    item.c_ready = 1'b0;
    `uvm_info(get_name(), $sformatf("Create CONF output item: %s", item.convert2string), UVM_FULL);
    finish_item(item);
endtask : body

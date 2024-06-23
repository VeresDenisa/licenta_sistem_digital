class CONF_input_sequence extends uvm_sequence #(CONF_item);
    `uvm_object_utils(CONF_input_sequence)
    
    CONF_item item;

    bit valid   = 1'b1;
    bit invalid = 1'b0;
    bit none    = 1'b0;
    
    function new (string name = "CONF_input_sequence");
        super.new(name);
    endfunction : new

    extern task body();
    extern function void set_parameters(bit valid = 1'b1, bit invalid = 1'b0, bit none = 1'b0);
endclass : CONF_input_sequence


function void CONF_input_sequence::set_parameters(bit valid = 1'b1, bit invalid = 1'b0, bit none = 1'b0);
    this.valid   = valid;
    this.invalid = invalid;
    this.none    = none;
endfunction : set_parameters

task CONF_input_sequence::body();
    item = CONF_item::type_id::create("CONF_item");

    `uvm_info(get_name(), $sformatf("Create an input item."), UVM_HIGH);

    start_item(item);

    if(valid) begin
        assert(item.randomize());
        `uvm_info(get_name(), $sformatf("Create CONF input item: %s", item.convert2string), UVM_FULL);
        finish_item(item);

        for(int i = 0; i < 1000; i++) begin
            start_item(item);
            item.setDefault();
            `uvm_info(get_name(), $sformatf("Create CONF input item: %s", item.convert2string), UVM_FULL);
            finish_item(item);
        end
    end else if(invalid) begin
        assert(item.randomize());
        item.c_valid = 1'b0;
        `uvm_info(get_name(), $sformatf("Create CONF input item: %s", item.convert2string), UVM_FULL);
        finish_item(item);
    end else begin
        item.setDefault();
        `uvm_info(get_name(), $sformatf("Create CONF input item: %s", item.convert2string), UVM_FULL);
        finish_item(item);
    end
endtask : body

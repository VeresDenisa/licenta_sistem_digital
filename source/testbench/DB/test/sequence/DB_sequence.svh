class DB_sequence extends uvm_sequence #(DB_item);
    `uvm_object_utils(DB_sequence)
    
    DB_item item;

    integer number_of_items = 1;

    function new (string name = "DB_sequence");
        super.new(name);
    endfunction : new

    extern function void set_parameters(integer number_of_items = 1);

    extern task body();
endclass : DB_sequence



function void DB_sequence::set_parameters(integer number_of_items = 1);
    this.number_of_items = number_of_items;
endfunction

task DB_sequence::body();
    item = DB_item::type_id::create("DB_item");

    `uvm_info(get_name(), $sformatf("Create DB input sequence with %0d items.", number_of_items), UVM_MEDIUM);

    for(int i = 0; i < number_of_items; i++) begin
        start_item(item);
        assert(item.randomize());
        `uvm_info(get_name(), $sformatf("Create DB input item: %s", item.convert2string), UVM_FULL);
        finish_item(item);
    end
endtask : body

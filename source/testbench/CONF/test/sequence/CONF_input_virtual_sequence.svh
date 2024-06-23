class CONF_input_virtual_sequence extends uvm_sequence;
    `uvm_object_utils(CONF_input_virtual_sequence);
    `uvm_declare_p_sequencer(CONF_input_virtual_sequencer);
    
    CONF_input_sequence CONF_seq;  
    CONF_item            item;

    bit valid   = 1'b1;
    bit invalid = 1'b0;
    bit none    = 1'b0;

    function new (string name = "CONF_input_virtual_sequence");
        super.new(name);
    endfunction : new
        
    extern task pre_body();
    extern task body();  

    extern function void set_parameters(bit valid = 1'b1, bit invalid = 1'b0, bit none = 1'b0);
endclass : CONF_input_virtual_sequence


function void CONF_input_virtual_sequence::set_parameters(bit valid = 1'b1, bit invalid = 1'b0, bit none = 1'b0);
    this.valid   = valid;
    this.invalid = invalid;
    this.none    = none;
endfunction : set_parameters
    
task CONF_input_virtual_sequence::pre_body();
    CONF_seq = CONF_input_sequence::type_id::create("CONF_input_sequence");
    item     = CONF_item           ::type_id::create("CONF_item");
endtask : pre_body
    
task CONF_input_virtual_sequence::body();
    fork
        forever begin
            p_sequencer.CONF_input_seqr.fifo.get(item);
            `uvm_info(get_name(), $sformatf("Start a new sequence from the virtual sequence."), UVM_DEBUG);
            CONF_seq.set_parameters(valid, invalid, none);
            CONF_seq.start(p_sequencer.CONF_input_seqr);
        end
    join_none
endtask : body

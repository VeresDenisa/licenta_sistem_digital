class CONF_output_virtual_sequence extends uvm_sequence;
    `uvm_object_utils(CONF_output_virtual_sequence);
    `uvm_declare_p_sequencer(CONF_output_virtual_sequencer);
    
    CONF_output_sequence CONF_seq;  
    CONF_item            item;

    function new (string name = "CONF_output_virtual_sequence");
        super.new(name);
    endfunction : new
        
    extern task pre_body();
    extern task body();  
endclass : CONF_output_virtual_sequence


    
task CONF_output_virtual_sequence::pre_body();
    CONF_seq = CONF_output_sequence::type_id::create("CONF_output_sequence");
    item     = CONF_item           ::type_id::create("CONF_item");
endtask : pre_body
    
task CONF_output_virtual_sequence::body();
    fork
        forever begin
            p_sequencer.CONF_output_seqr.fifo.get(item);
            if(!(item.equalDefault())) begin
                CONF_seq.start(p_sequencer.CONF_output_seqr);
            end
        end
    join_none
endtask : body

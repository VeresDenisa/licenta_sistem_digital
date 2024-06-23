class CONF_input_virtual_sequencer extends uvm_sequencer;
    `uvm_component_utils(CONF_input_virtual_sequencer);
    
    CONF_input_sequencer CONF_input_seqr;
    
    function new (string name = "CONF_input_virtual_sequencer", uvm_component parent = null);
      super.new(name, parent);
    endfunction : new
    
  endclass : CONF_input_virtual_sequencer
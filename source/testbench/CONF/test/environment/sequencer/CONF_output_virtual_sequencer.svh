class CONF_output_virtual_sequencer extends uvm_sequencer;
    `uvm_component_utils(CONF_output_virtual_sequencer);
    
    CONF_output_sequencer CONF_output_seqr;
    
    function new (string name = "CONF_output_virtual_sequencer", uvm_component parent = null);
      super.new(name, parent);
    endfunction : new
    
  endclass : CONF_output_virtual_sequencer
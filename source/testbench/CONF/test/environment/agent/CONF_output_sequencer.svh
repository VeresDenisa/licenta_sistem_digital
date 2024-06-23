class CONF_output_sequencer extends uvm_sequencer #(CONF_item);
    `uvm_component_utils(CONF_output_sequencer);
    
    uvm_analysis_export   #(CONF_item) export_port;
    uvm_tlm_analysis_fifo #(CONF_item) fifo;
    
    function new (string name = "CONF_output_sequencer", uvm_component parent = null);
      super.new(name, parent);
      
      export_port = new("export_port", this);    
      fifo        = new("fifo",        this);
    endfunction : new
    
    extern function void connect_phase(uvm_phase phase);
  endclass : CONF_output_sequencer
      
      
  function void CONF_output_sequencer::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    
    export_port.connect(fifo.analysis_export);
  endfunction :connect_phase
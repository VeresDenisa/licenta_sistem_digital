class CM_input_agent extends uvm_agent;
    `uvm_component_utils(CM_input_agent);
    
    virtual CM_input_VIF i;

    uvm_sequencer #(CM_input_item) seqr; 
    CM_input_driver  drv;
    CM_input_monitor mon;
    
    agent_config CM_config_h;
    
    function new (string name = "CM_input_agent", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new

    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
endclass : CM_input_agent



function void CM_input_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    if(!uvm_config_db#(agent_config)::get(this, "", "CM_config_db", CM_config_h))
        `uvm_fatal(this.get_name(), "Failed to get config object");
    
    if(!uvm_config_db#(virtual CM_input_VIF)::get(this, "", "CM_input_VIF", i))
        `uvm_fatal(this.get_name(), "Failed to get interface");
    
    if(CM_config_h.get_is_active() == UVM_ACTIVE) begin
        seqr = uvm_sequencer#(CM_input_item)::type_id::create("CM_input_seqr", this);
        drv  = CM_input_driver::type_id::create("CM_input_driver",  this); 
        uvm_config_db#(virtual CM_input_VIF)::set(this, "CM_input_driver*", "CM_input_VIF", i);
    end
    
    // DEFAULT PASSIVE
    mon = CM_input_monitor::type_id::create("CM_input_monitor",  this);
    uvm_config_db#(virtual CM_input_VIF)::set(this, "CM_input_monitor*", "CM_input_VIF", i);

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

function void CM_input_agent::connect_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> CONNECT <--"), UVM_DEBUG);

    if(CM_config_h.get_is_active() == UVM_ACTIVE) begin
        drv.seq_item_port.connect(seqr.seq_item_export);
    end

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> CONNECT <--"), UVM_DEBUG);
endfunction : connect_phase
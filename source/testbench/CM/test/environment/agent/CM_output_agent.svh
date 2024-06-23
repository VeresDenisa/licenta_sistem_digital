class CM_output_agent extends uvm_agent;
    `uvm_component_utils(CM_output_agent);
    
    virtual CM_output_VIF i;

    uvm_sequencer #(CM_output_item) seqr; 
    CM_output_driver  drv;
    CM_output_monitor mon;
    
    agent_config CM_config_h;
    
    function new (string name = "CM_output_agent", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new

    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
endclass : CM_output_agent



function void CM_output_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    if(!uvm_config_db#(agent_config)::get(this, "", "CM_config_db", CM_config_h))
        `uvm_fatal(this.get_name(), "Failed to get config object");
    
    if(!uvm_config_db#(virtual CM_output_VIF)::get(this, "", "CM_output_VIF", i))
        `uvm_fatal(this.get_name(), "Failed to get interface");
    
    if(CM_config_h.get_is_active() == UVM_ACTIVE) begin
        seqr = uvm_sequencer#(CM_output_item)::type_id::create("CONF_output_seqr", this);
        drv  = CM_output_driver::type_id::create("CM_output_driver",  this); 
        uvm_config_db#(virtual CM_output_VIF)::set(this, "CM_output_driver*", "CM_output_VIF", i);
    end
    
    // DEFAULT PASSIVE
    mon = CM_output_monitor::type_id::create("CM_output_monitor",  this);
    uvm_config_db#(virtual CM_output_VIF)::set(this, "CM_output_monitor*", "CM_output_VIF", i);

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

function void CM_output_agent::connect_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> CONNECT <--"), UVM_DEBUG);

    if(CM_config_h.get_is_active() == UVM_ACTIVE) begin
        drv.seq_item_port.connect(seqr.seq_item_export);
    end

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> CONNECT <--"), UVM_DEBUG);
endfunction : connect_phase
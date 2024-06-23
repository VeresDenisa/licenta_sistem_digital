class CONF_input_agent extends uvm_agent;
    `uvm_component_utils(CONF_input_agent);
    
    virtual CONF_input_VIF i;

    CONF_input_sequencer seqr; 
    CONF_input_driver    drv;
    CONF_input_monitor   mon;
    
    agent_config CONF_config_h;
    
    function new (string name = "CONF_input_agent", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new

    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
endclass : CONF_input_agent



function void CONF_input_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    if(!uvm_config_db#(agent_config)::get(this, "", "CONF_config_db", CONF_config_h))
        `uvm_fatal(this.get_name(), "Failed to get config object");
    
    if(!uvm_config_db#(virtual CONF_input_VIF)::get(this, "", "CONF_input_VIF", i))
        `uvm_fatal(this.get_name(), "Failed to get interface");
    
    if(CONF_config_h.get_is_active() == UVM_ACTIVE) begin
        seqr = CONF_input_sequencer::type_id::create("CONF_input_seqr", this);
        drv  = CONF_input_driver::type_id::create("CONF_input_driver",  this); 
        uvm_config_db#(virtual CONF_input_VIF)::set(this, "CONF_input_driver*", "CONF_input_VIF", i);
    end
    
    // DEFAULT PASSIVE
    mon = CONF_input_monitor::type_id::create("CONF_input_monitor",  this);
    uvm_config_db#(virtual CONF_input_VIF)::set(this, "CONF_input_monitor*", "CONF_input_VIF", i);

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

function void CONF_input_agent::connect_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> CONNECT <--"), UVM_DEBUG);

    if(CONF_config_h.get_is_active() == UVM_ACTIVE) begin
        drv.seq_item_port.connect(seqr.seq_item_export);
        mon.an_port.connect(seqr.export_port);
    end

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> CONNECT <--"), UVM_DEBUG);
endfunction : connect_phase
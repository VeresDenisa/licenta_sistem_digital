class CONF_output_agent extends uvm_agent;
    `uvm_component_utils(CONF_output_agent);
    
    virtual CONF_output_VIF i;

    CONF_output_sequencer seqr; 
    CONF_output_driver    drv;
    CONF_output_monitor   mon;
    
    agent_config CONF_config_h;
    
    function new (string name = "CONF_output_agent", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new

    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
endclass : CONF_output_agent



function void CONF_output_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    if(!uvm_config_db#(agent_config)::get(this, "", "CONF_config_db", CONF_config_h))
        `uvm_fatal(this.get_name(), "Failed to get config object");
    
    if(!uvm_config_db#(virtual CONF_output_VIF)::get(this, "", "CONF_output_VIF", i))
        `uvm_fatal(this.get_name(), "Failed to get interface");
    
    if(CONF_config_h.get_is_active() == UVM_ACTIVE) begin
        seqr = CONF_output_sequencer::type_id::create("CONF_output_seqr", this);
        drv  = CONF_output_driver::type_id::create("CONF_output_driver",  this); 
        uvm_config_db#(virtual CONF_output_VIF)::set(this, "CONF_output_driver*", "CONF_output_VIF", i);
    end
    
    // DEFAULT PASSIVE
    mon = CONF_output_monitor::type_id::create("CONF_output_monitor",  this);
    uvm_config_db#(virtual CONF_output_VIF)::set(this, "CONF_output_monitor*", "CONF_output_VIF", i);

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

function void CONF_output_agent::connect_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> CONNECT <--"), UVM_DEBUG);

    if(CONF_config_h.get_is_active() == UVM_ACTIVE) begin
        drv.seq_item_port.connect(seqr.seq_item_export);
        mon.an_port.connect(seqr.export_port);
    end

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> CONNECT <--"), UVM_DEBUG);
endfunction : connect_phase
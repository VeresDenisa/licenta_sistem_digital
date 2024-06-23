class LM_agent extends uvm_agent;
    `uvm_component_utils(LM_agent);
    
    virtual LM_VIF i;

    LM_monitor mon;
    
    function new (string name = "LM_agent", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new

    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
endclass : LM_agent



function void LM_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    if(!uvm_config_db#(virtual LM_VIF)::get(this, "", "LM_VIF", i))
        `uvm_fatal(this.get_name(), "Failed to get interface");
    
    // DEFAULT PASSIVE
    mon = LM_monitor::type_id::create("LM_monitor",  this);
    uvm_config_db#(virtual LM_VIF)::set(this, "LM_monitor*", "LM_VIF", i);

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

function void LM_agent::connect_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> CONNECT <--"), UVM_DEBUG);
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> CONNECT <--"), UVM_DEBUG);
endfunction : connect_phase
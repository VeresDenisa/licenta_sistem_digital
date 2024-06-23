class CD_agent extends uvm_agent;
    `uvm_component_utils(CD_agent);
    
    virtual CD_VIF i;

    CD_monitor mon;
    
    function new (string name = "CD_agent", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new

    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
endclass : CD_agent



function void CD_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);
    
    if(!uvm_config_db#(virtual CD_VIF)::get(this, "", "CD_VIF", i))
        `uvm_fatal(this.get_name(), "Failed to get interface");
    
    // DEFAULT PASSIVE
    mon = CD_monitor::type_id::create("CD_monitor",  this);
    uvm_config_db#(virtual CD_VIF)::set(this, "CD_monitor*", "CD_VIF", i);

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

function void CD_agent::connect_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> CONNECT <--"), UVM_DEBUG);
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> CONNECT <--"), UVM_DEBUG);
endfunction : connect_phase
class VGA_output_agent extends uvm_agent;
    `uvm_component_utils(VGA_output_agent);
    
    virtual VGA_output_VIF i;

    VGA_output_monitor mon;
    
    function new (string name = "VGA_output_agent", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new

    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
endclass : VGA_output_agent



function void VGA_output_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    if(!uvm_config_db#(virtual VGA_output_VIF)::get(this, "", "VGA_output_VIF", i))
        `uvm_fatal(this.get_name(), "Failed to get interface");
    
    // DEFAULT PASSIVE
    mon = VGA_output_monitor::type_id::create("VGA_output_monitor",  this);
    uvm_config_db#(virtual VGA_output_VIF)::set(this, "VGA_output_monitor*", "VGA_output_VIF", i);

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

function void VGA_output_agent::connect_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> CONNECT <--"), UVM_DEBUG);
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> CONNECT <--"), UVM_DEBUG);
endfunction : connect_phase
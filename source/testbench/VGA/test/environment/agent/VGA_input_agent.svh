class VGA_input_agent extends uvm_agent;
    `uvm_component_utils(VGA_input_agent);
    
    virtual VGA_input_VIF i;

    uvm_sequencer #(VGA_input_item) seqr;
    VGA_input_driver    drv;
    VGA_input_monitor   mon;
    
    agent_config VGA_config_h;
    
    function new (string name = "VGA_input_agent", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new

    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
endclass : VGA_input_agent



function void VGA_input_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    if(!uvm_config_db#(agent_config)::get(this, "", "VGA_config_db", VGA_config_h))
        `uvm_fatal(this.get_name(), "Failed to get config object");
    
    if(!uvm_config_db#(virtual VGA_input_VIF)::get(this, "", "VGA_input_VIF", i))
        `uvm_fatal(this.get_name(), "Failed to get interface");
    
    if(VGA_config_h.get_is_active() == UVM_ACTIVE) begin
        seqr = uvm_sequencer#(VGA_input_item)::type_id::create("VGA_input_seqr", this);
        drv  = VGA_input_driver::type_id::create("VGA_input_driver",  this); 
        uvm_config_db#(virtual VGA_input_VIF)::set(this, "VGA_input_driver*", "VGA_input_VIF", i);
    end
    
    // DEFAULT PASSIVE
    mon = VGA_input_monitor::type_id::create("VGA_input_monitor",  this);
    uvm_config_db#(virtual VGA_input_VIF)::set(this, "VGA_input_monitor*", "VGA_input_VIF", i);

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

function void VGA_input_agent::connect_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> CONNECT <--"), UVM_DEBUG);

    if(VGA_config_h.get_is_active() == UVM_ACTIVE) begin
        drv.seq_item_port.connect(seqr.seq_item_export);
    end

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> CONNECT <--"), UVM_DEBUG);
endfunction : connect_phase
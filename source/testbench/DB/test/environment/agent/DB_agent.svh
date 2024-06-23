class DB_agent extends uvm_agent;
    `uvm_component_utils(DB_agent);
    
    virtual DB_VIF i;

    uvm_sequencer #(DB_item) seqr; 
    DB_driver  drv;
    DB_monitor mon;
    
    agent_config DB_config_h;
    
    function new (string name = "DB_agent", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new

    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
endclass : DB_agent



function void DB_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    if(!uvm_config_db#(agent_config)::get(this, "", "DB_config_db", DB_config_h))
        `uvm_fatal(this.get_name(), "Failed to get config object");
    
    if(!uvm_config_db#(virtual DB_VIF)::get(this, "", "DB_VIF", i))
        `uvm_fatal(this.get_name(), "Failed to get interface");
    
    if(DB_config_h.get_is_active() == UVM_ACTIVE) begin
        seqr = uvm_sequencer#(DB_item)::type_id::create("DB_seqr", this);
        drv  = DB_driver::type_id::create("DB_driver",  this); 
        uvm_config_db#(virtual DB_VIF)::set(this, "DB_driver*", "DB_VIF", i);
    end
    
    // DEFAULT PASSIVE
    mon = DB_monitor::type_id::create("DB_monitor",  this);
    uvm_config_db#(virtual DB_VIF)::set(this, "DB_monitor*", "DB_VIF", i);

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

function void DB_agent::connect_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> CONNECT <--"), UVM_DEBUG);

    if(DB_config_h.get_is_active() == UVM_ACTIVE) begin
        drv.seq_item_port.connect(seqr.seq_item_export);
    end

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> CONNECT <--"), UVM_DEBUG);
endfunction : connect_phase
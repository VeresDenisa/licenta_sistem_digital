class VGA_environment extends uvm_env;
    `uvm_component_utils(VGA_environment);
        
    VGA_input_agent  VGA_input_agent_h;
    VGA_output_agent VGA_output_agent_h;
    CONF_input_agent CONF_agent_h;

    agent_config VGA_config_input_h;
    agent_config CONF_config_h;
    
    environment_config env_config_h;
    
    CONF_input_virtual_sequencer v_seqr;
    
    VGA_coverage cov;
    
    function new (string name = "VGA_environment", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
endclass : VGA_environment



function void VGA_environment::build_phase(uvm_phase phase);
    super.build_phase(phase);  
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);
    
    if(!uvm_config_db #(environment_config)::get(this, "", "VGA_config_db", env_config_h))
        `uvm_fatal(this.get_name(), "Failed to get VGA environment config");

    VGA_output_agent_h = VGA_output_agent::type_id::create("VGA_output_agent_h", this);

    if(env_config_h.get_is_cluster() == UNIT) begin
        v_seqr = CONF_input_virtual_sequencer::type_id::create("CONF_input_virtual_sequencer", this);

        VGA_config_input_h = new(.is_active(UVM_ACTIVE));
        CONF_config_h      = new(.is_active(UVM_ACTIVE));
            
        uvm_config_db #(agent_config)::set(this, "VGA_input_agent_h*", "VGA_config_db", VGA_config_input_h);
        uvm_config_db #(agent_config)::set(this, "CONF_agent_h*",      "CONF_config_db", CONF_config_h);
        
        VGA_input_agent_h = VGA_input_agent ::type_id::create("VGA_input_agent_h", this);
        CONF_agent_h      = CONF_input_agent::type_id::create("CONF_agent_h",      this);
    end

    cov = VGA_coverage::type_id::create("cov", this); 
        
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

function void VGA_environment::connect_phase(uvm_phase phase);
    if(env_config_h.get_is_cluster() == UNIT) begin
        v_seqr.CONF_input_seqr = CONF_agent_h.seqr;
    end
    VGA_output_agent_h.mon.an_port.connect(cov.an_port);
endfunction : connect_phase
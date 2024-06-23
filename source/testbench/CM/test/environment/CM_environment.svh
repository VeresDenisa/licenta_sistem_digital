class CM_environment extends uvm_env;
    `uvm_component_utils(CM_environment);
        
    CM_input_agent    CM_input_agent_h;
    CM_output_agent   CM_output_agent_h;
    CONF_output_agent CONF_agent_h;

    agent_config CM_config_input_h;
    agent_config CM_config_output_h;
    agent_config CONF_config_h;
    
    environment_config env_config_h;
    
    CONF_output_virtual_sequencer v_seqr;
    
    CM_coverage cov;
    
    function new (string name = "CM_environment", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
endclass : CM_environment



function void CM_environment::build_phase(uvm_phase phase);
    super.build_phase(phase);  
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);
    
    if(!uvm_config_db #(environment_config)::get(this, "", "CM_config_db", env_config_h))
        `uvm_fatal(this.get_name(), "Failed to get CM environment config");

    if(env_config_h.get_is_cluster() == UNIT) begin
        v_seqr = CONF_output_virtual_sequencer::type_id::create("CONF_output_virtual_sequencer", this);

        CM_config_input_h  = new(.is_active(UVM_ACTIVE));
        CM_config_output_h = new(.is_active(UVM_PASSIVE));
        CONF_config_h      = new(.is_active(UVM_ACTIVE));
            
        uvm_config_db #(agent_config)::set(this, "CM_input_agent_h*",  "CM_config_db", CM_config_input_h);
        uvm_config_db #(agent_config)::set(this, "CM_output_agent_h*", "CM_config_db", CM_config_output_h);
        uvm_config_db #(agent_config)::set(this, "CONF_agent_h*",      "CONF_config_db", CONF_config_h);
        
        CM_input_agent_h  = CM_input_agent   ::type_id::create("CM_input_agent_h",  this);
        CM_output_agent_h = CM_output_agent  ::type_id::create("CM_output_agent_h", this);
        CONF_agent_h      = CONF_output_agent::type_id::create("CONF_agent_h",      this);
        
        cov = CM_coverage::type_id::create("cov", this); 
    end
        
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

function void CM_environment::connect_phase(uvm_phase phase);
    if(env_config_h.get_is_cluster() == UNIT) begin
        v_seqr.CONF_output_seqr = CONF_agent_h.seqr;
        CM_input_agent_h.mon.an_port.connect(cov.an_port_CM_input);
        CM_output_agent_h.mon.an_port.connect(cov.an_port_CM_output);
    end
endfunction : connect_phase
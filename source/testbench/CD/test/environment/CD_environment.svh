class CD_environment extends uvm_env;
    `uvm_component_utils(CD_environment);
        
    CD_agent         CD_agent_h;
    CONF_input_agent CONF_agent_h;

    agent_config CONF_config_h;
    
    environment_config env_config_h;
    
    CONF_input_virtual_sequencer v_seqr;
    
    CD_coverage cov;
    
    function new (string name = "CD_environment", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
endclass : CD_environment



function void CD_environment::build_phase(uvm_phase phase);
    super.build_phase(phase);  
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);
    
    if(!uvm_config_db #(environment_config)::get(this, "", "CD_config_db", env_config_h))
        `uvm_fatal(this.get_name(), "Failed to get CD environment config");

    if(env_config_h.get_is_cluster() == UNIT) begin
        v_seqr = CONF_input_virtual_sequencer::type_id::create("CONF_input_virtual_sequencer", this);

        CONF_config_h = new(.is_active(UVM_ACTIVE));
            
        uvm_config_db #(agent_config)::set(this, "CONF_agent_h*", "CONF_config_db", CONF_config_h);
        
        CD_agent_h   = CD_agent        ::type_id::create("CD_agent_h",   this);
        CONF_agent_h = CONF_input_agent::type_id::create("CONF_agent_h", this);
        
        cov = CD_coverage::type_id::create("cov", this); 
    end
        
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

function void CD_environment::connect_phase(uvm_phase phase);
    if(env_config_h.get_is_cluster() == UNIT) begin
        v_seqr.CONF_input_seqr = CONF_agent_h.seqr;
        CD_agent_h.mon.an_port.connect(cov.an_port);
    end
endfunction : connect_phase
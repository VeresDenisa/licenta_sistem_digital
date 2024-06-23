class UART_environment extends uvm_env;
    `uvm_component_utils(UART_environment);
        
    UART_input_agent  UART_input_agent_h;
    UART_output_agent UART_output_agent_h;
    CONF_input_agent  CONF_agent_h;

    agent_config UART_config_input_h;
    agent_config UART_config_output_h;
    agent_config CONF_config_h;
    
    environment_config env_config_h;
    
    CONF_input_virtual_sequencer v_seqr;
    
    UART_coverage cov;
    
    function new (string name = "UART_environment", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
endclass : UART_environment



function void UART_environment::build_phase(uvm_phase phase);
    super.build_phase(phase);  
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);
    
    if(!uvm_config_db #(environment_config)::get(this, "", "UART_config_db", env_config_h))
        `uvm_fatal(this.get_name(), "Failed to get UART environment config");

    UART_config_input_h = new(.is_active(UVM_ACTIVE));

    uvm_config_db #(agent_config)::set(this, "UART_input_agent_h*", "UART_config_db", UART_config_input_h);

    UART_input_agent_h = UART_input_agent::type_id::create("UART_input_agent_h", this);

    if(env_config_h.get_is_cluster() == UNIT) begin
        v_seqr = CONF_input_virtual_sequencer::type_id::create("CONF_input_virtual_sequencer", this);

        UART_config_output_h = new(.is_active(UVM_PASSIVE));
        CONF_config_h        = new(.is_active(UVM_ACTIVE));
            
        uvm_config_db #(agent_config)::set(this, "UART_output_agent_h*", "UART_config_db", UART_config_output_h);
        uvm_config_db #(agent_config)::set(this, "CONF_agent_h*",        "CONF_config_db", CONF_config_h);
        
        UART_output_agent_h = UART_output_agent::type_id::create("UART_output_agent_h", this);
        CONF_agent_h        = CONF_input_agent::type_id::create("CONF_agent_h",      this);
        
        cov = UART_coverage::type_id::create("cov", this); 
    end
        
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

function void UART_environment::connect_phase(uvm_phase phase);
    if(env_config_h.get_is_cluster() == UNIT) begin
        v_seqr.CONF_input_seqr = CONF_agent_h.seqr;
        UART_output_agent_h.mon.an_port.connect(cov.an_port);
    end
endfunction : connect_phase
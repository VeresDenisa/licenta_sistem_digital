class LM_environment extends uvm_env;
    `uvm_component_utils(LM_environment);
        
    CM_output_agent CM_output_agent_h;
    LM_agent LM_agent_h;
    UART_output_agent UART_output_agent_h;

    agent_config CM_config_output_h;
    agent_config UART_config_output_h;
    
    environment_config env_config_h;
    
    LM_coverage cov;
    
    function new (string name = "LM_environment", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
endclass : LM_environment



function void LM_environment::build_phase(uvm_phase phase);
    super.build_phase(phase);  
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);
    
    if(!uvm_config_db #(environment_config)::get(this, "", "LM_config_db", env_config_h))
        `uvm_fatal(this.get_name(), "Failed to get LM environment config");

    LM_agent_h = LM_agent::type_id::create("LM_agent_h", this);

    if(env_config_h.get_is_cluster() == UNIT) begin
        CM_config_output_h   = new(.is_active(UVM_ACTIVE));
        UART_config_output_h = new(.is_active(UVM_ACTIVE));
            
        uvm_config_db #(agent_config)::set(this, "CM_output_agent_h*",   "CM_config_db", CM_config_output_h);
        uvm_config_db #(agent_config)::set(this, "UART_output_agent_h*", "UART_config_db", UART_config_output_h);
        
        CM_output_agent_h   = CM_output_agent  ::type_id::create("CM_output_agent_h",   this);
        UART_output_agent_h = UART_output_agent::type_id::create("UART_output_agent_h", this);
    end

    cov = LM_coverage::type_id::create("cov", this); 
    cov.CM_output_cvg.Data_VGA_cvp.option.weight = 0; 
        
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

function void LM_environment::connect_phase(uvm_phase phase);
    if(env_config_h.get_is_cluster() == UNIT) begin
        UART_output_agent_h.mon.an_port.connect(cov.an_port_UART);
        CM_output_agent_h.mon.an_port.connect(cov.an_port_LM_CM_output);
    end
    LM_agent_h.mon.an_port.connect(cov.an_port_LM);
endfunction : connect_phase
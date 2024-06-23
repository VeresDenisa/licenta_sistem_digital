class CS_environment extends uvm_env;
    `uvm_component_utils(CS_environment);
        
    UART_input_agent UART_input_agent_h;
    VGA_output_agent VGA_output_agent_h;
    LM_agent LM_agent_h;
    DB_agent DB_agent_h;

    agent_config UART_config_input_h;
    agent_config VGA_config_output_h;
    agent_config LM_config_h;
    agent_config DB_config_h;
    
    CS_coverage cov;
    
    function new (string name = "CS_environment", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
endclass : CS_environment



function void CS_environment::build_phase(uvm_phase phase);
    super.build_phase(phase);  
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    UART_input_agent_h = new(.is_active(UVM_ACTIVE));
    VGA_output_agent_h = new(.is_active(UVM_PASSIVE));
    LM_agent_h = new(.is_active(UVM_PASSIVE));
    DB_agent_h = new(.is_active(UVM_ACTIVE));
        
    uvm_config_db #(agent_config)::set(this, "UART_input_agent_h*", "UART_config_db", UART_config_input_h);
    uvm_config_db #(agent_config)::set(this, "VGA_output_agent_h*", "VGA_config_db",  VGA_config_output_h);
    uvm_config_db #(agent_config)::set(this, "LM_agent_h*", "LM_config_db", LM_config_h);
    uvm_config_db #(agent_config)::set(this, "DB_agent_h*", "DB_config_db", DB_config_h);
    
    UART_input_agent_h = UART_input_agent::type_id::create("UART_input_agent_h", this);
    VGA_output_agent_h = VGA_output_agent::type_id::create("VGA_output_agent_h", this);
    LM_agent_h = LM_agent::type_id::create("LM_agent_h", this);
    DB_agent_h = DB_agent::type_id::create("DB_agent_h", this);
    
    cov = CS_coverage::type_id::create("cov", this);

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

function void CS_environment::connect_phase(uvm_phase phase);
    LM_agent_h.mon.an_port.connect(cov.an_port_CS_LM);
    DB_agent_h.mon.an_port.connect(cov.an_port_CS_DB);
    VGA_output_agent_h.mon.an_port.connect(cov.an_port_CS_VGA);
endfunction : connect_phase
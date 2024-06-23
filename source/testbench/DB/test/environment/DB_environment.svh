class DB_environment extends uvm_env;
    `uvm_component_utils(DB_environment);
        
    DB_agent DB_input_agent_h;
    DB_agent DB_output_agent_h;

    agent_config DB_config_input_h;
    agent_config DB_config_output_h;
    
    environment_config env_config_h;
    
    DB_coverage cov;
    
    function new (string name = "DB_environment", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
endclass : DB_environment



function void DB_environment::build_phase(uvm_phase phase);
    super.build_phase(phase);  
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);
    
    if(!uvm_config_db #(environment_config)::get(this, "", "DB_config_db", env_config_h))
        `uvm_fatal(this.get_name(), "Failed to get DB environment config");

    DB_config_input_h = new(.is_active(UVM_ACTIVE));

    uvm_config_db #(agent_config)::set(this, "DB_input_agent_h*", "DB_config_db", DB_config_input_h);

    DB_input_agent_h = DB_agent::type_id::create("DB_input_agent_h",  this);


    if(env_config_h.get_is_cluster() == UNIT) begin
        DB_config_output_h = new(.is_active(UVM_PASSIVE));
            
        uvm_config_db #(agent_config)::set(this, "DB_output_agent_h*", "DB_config_db", DB_config_output_h);
        
        DB_output_agent_h = DB_agent::type_id::create("DB_output_agent_h", this);
    end 

    cov = DB_coverage::type_id::create("cov", this); 
        
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

function void DB_environment::connect_phase(uvm_phase phase);
    if(env_config_h.get_is_cluster() == UNIT) begin 
        DB_output_agent_h.mon.an_port.connect(cov.an_port);
    end else begin
        DB_input_agent_h.mon.an_port.connect(cov.an_port);
    end
endfunction : connect_phase
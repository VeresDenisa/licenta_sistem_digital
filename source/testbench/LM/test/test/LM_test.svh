class LM_test extends uvm_test;
    `uvm_component_utils(LM_test);

    environment_config env_config;
    LM_environment env; 

    UART_output_sequence UART_output_seq;
    CM_output_sequence   CM_output_seq;
    
    function new (string name = "LM_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    extern function void build_phase(uvm_phase phase);
    extern function void start_of_simulation_phase(uvm_phase phase);
    extern task main_phase(uvm_phase phase);
endclass : LM_test
    
    

function void LM_test::build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    env_config = new(.is_cluster(UNIT));
    uvm_config_db #(environment_config)::set(this, "env*", "LM_config_db", env_config);

    env = LM_environment::type_id::create("env", this); 

    UART_output_seq = UART_output_sequence::type_id::create("UART_output_seq");
    CM_output_seq   = CM_output_sequence  ::type_id::create("CM_output_seq");

    UART_output_seq.set_parameters(140);
    CM_output_seq.set_parameters(140);
        
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase
    
function void LM_test::start_of_simulation_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> START OF SIMULATION <--"), UVM_DEBUG);
    uvm_top.print_topology();
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> START OF SIMULATION <--"), UVM_DEBUG);
endfunction : start_of_simulation_phase

task LM_test::main_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> MAIN <--"), UVM_DEBUG);

    phase.phase_done.set_drain_time(this, `CLOCK * 10);

    phase.raise_objection(this);
    fork
        UART_output_seq.start(env.UART_output_agent_h.seqr);
        CM_output_seq.start(env.CM_output_agent_h.seqr);
    join
    phase.drop_objection(this);  

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> MAIN <--"), UVM_DEBUG);  
endtask : main_phase


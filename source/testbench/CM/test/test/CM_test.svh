class CM_test extends uvm_test;
    `uvm_component_utils(CM_test);

    environment_config env_config;
    CM_environment env; 

    CM_input_sequence CM_input_seq;
    CONF_output_virtual_sequence v_seq;
    
    function new (string name = "CM_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    extern function void build_phase(uvm_phase phase);
    extern function void start_of_simulation_phase(uvm_phase phase);
    extern task main_phase(uvm_phase phase);
endclass : CM_test
    
    

function void CM_test::build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    env_config = new(.is_cluster(UNIT));
    uvm_config_db #(environment_config)::set(this, "env*", "CM_config_db", env_config);

    env = CM_environment::type_id::create("env", this); 

    CM_input_seq = CM_input_sequence  ::type_id::create("CM_input_seq");
    v_seq        = CONF_output_virtual_sequence::type_id::create("v_seq");
        
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase
    
function void CM_test::start_of_simulation_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> START OF SIMULATION <--"), UVM_DEBUG);
    uvm_top.print_topology();
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> START OF SIMULATION <--"), UVM_DEBUG);
endfunction : start_of_simulation_phase

task CM_test::main_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> MAIN <--"), UVM_DEBUG);

    phase.phase_done.set_drain_time(this, `CLOCK * 10);

    phase.raise_objection(this);
    fork
        v_seq.start(env.v_seqr);
        CM_input_seq.start(env.CM_input_agent_h.seqr);
    join
    phase.drop_objection(this);  

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> MAIN <--"), UVM_DEBUG);  
endtask : main_phase


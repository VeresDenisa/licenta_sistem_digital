class VGA_test_no_config extends uvm_test;
    `uvm_component_utils(VGA_test_no_config);

    environment_config env_config;
    VGA_environment env; 

    CONF_input_virtual_sequence v_seq;
    VGA_input_sequence VGA_input_seq;
    
    function new (string name = "VGA_test_no_config", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    extern function void build_phase(uvm_phase phase);
    extern function void start_of_simulation_phase(uvm_phase phase);
    extern task main_phase(uvm_phase phase);
endclass : VGA_test_no_config
    
    

function void VGA_test_no_config::build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    env_config = new(.is_cluster(UNIT));
    uvm_config_db #(environment_config)::set(this, "env*", "VGA_config_db", env_config);

    env = VGA_environment::type_id::create("env", this); 

    v_seq         = CONF_input_virtual_sequence::type_id::create("v_seq");
    VGA_input_seq = VGA_input_sequence         ::type_id::create("VGA_input_seq");

    v_seq.set_parameters(0, 0, 1);
    VGA_input_seq.set_parameters(100);
        
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase
    
function void VGA_test_no_config::start_of_simulation_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> START OF SIMULATION <--"), UVM_DEBUG);
    uvm_top.print_topology();
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> START OF SIMULATION <--"), UVM_DEBUG);
endfunction : start_of_simulation_phase

task VGA_test_no_config::main_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> MAIN <--"), UVM_DEBUG);

    phase.phase_done.set_drain_time(this, `CLOCK * 10);

    phase.raise_objection(this);
    fork
        v_seq.start(env.v_seqr);
        VGA_input_seq.start(env.VGA_input_agent_h.seqr);
    join
    phase.drop_objection(this);  

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> MAIN <--"), UVM_DEBUG);  
endtask : main_phase


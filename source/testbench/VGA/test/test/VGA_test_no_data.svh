class VGA_test_no_data extends uvm_test;
    `uvm_component_utils(VGA_test_no_data);

    environment_config env_config;
    VGA_environment env; 

    CONF_input_virtual_sequence v_seq;
    
    function new (string name = "VGA_test_no_data", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    extern function void build_phase(uvm_phase phase);
    extern function void start_of_simulation_phase(uvm_phase phase);
    extern task main_phase(uvm_phase phase);
endclass : VGA_test_no_data
    
    

function void VGA_test_no_data::build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    env_config = new(.is_cluster(UNIT));
    uvm_config_db #(environment_config)::set(this, "env*", "VGA_config_db", env_config);

    env = VGA_environment::type_id::create("env", this); 

    v_seq = CONF_input_virtual_sequence::type_id::create("v_seq");

    v_seq.set_parameters(0, 0, 1);
        
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase
    
function void VGA_test_no_data::start_of_simulation_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> START OF SIMULATION <--"), UVM_DEBUG);
    uvm_top.print_topology();
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> START OF SIMULATION <--"), UVM_DEBUG);
endfunction : start_of_simulation_phase

task VGA_test_no_data::main_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> MAIN <--"), UVM_DEBUG);

    phase.phase_done.set_drain_time(this, `CLOCK * 3000000);

    phase.raise_objection(this);
    fork
        v_seq.start(env.v_seqr);
    join
    phase.drop_objection(this);  

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> MAIN <--"), UVM_DEBUG);  
endtask : main_phase


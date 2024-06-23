class UART_test extends uvm_test;
    `uvm_component_utils(UART_test);

    environment_config env_config;
    UART_environment env; 

    CONF_input_virtual_sequence v_seq;
    UART_input_sequence UART_input_seq;
    
    function new (string name = "UART_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    extern function void build_phase(uvm_phase phase);
    extern function void start_of_simulation_phase(uvm_phase phase);
    extern task main_phase(uvm_phase phase);
endclass : UART_test
    
    

function void UART_test::build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    env_config = new(.is_cluster(UNIT));
    uvm_config_db #(environment_config)::set(this, "env*", "UART_config_db", env_config);

    env = UART_environment::type_id::create("env", this); 

    v_seq          = CONF_input_virtual_sequence::type_id::create("v_seq");
    UART_input_seq = UART_input_sequence        ::type_id::create("UART_input_seq");

    UART_input_seq.set_parameters(0, 0, 100);
        
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase
    
function void UART_test::start_of_simulation_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> START OF SIMULATION <--"), UVM_DEBUG);
    uvm_top.print_topology();
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> START OF SIMULATION <--"), UVM_DEBUG);
endfunction : start_of_simulation_phase

task UART_test::main_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> MAIN <--"), UVM_DEBUG);

    phase.phase_done.set_drain_time(this, `CLOCK * 100);

    phase.raise_objection(this);
    fork
        v_seq.start(env.v_seqr);
        UART_input_seq.start(env.UART_input_agent_h.seqr);
    join
    phase.drop_objection(this);  

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> MAIN <--"), UVM_DEBUG);  
endtask : main_phase


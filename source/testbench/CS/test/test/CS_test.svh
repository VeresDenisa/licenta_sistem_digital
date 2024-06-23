class CS_test extends uvm_test;
    `uvm_component_utils(CS_test);

    CS_environment CS_env; 

    UART_input_sequence UART_input_seq;
    DB_sequence DB_seq;
    
    function new (string name = "CS_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    extern function void build_phase(uvm_phase phase);
    extern function void start_of_simulation_phase(uvm_phase phase);
    extern task main_phase(uvm_phase phase);
endclass : CS_test
    
    

function void CS_test::build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    CS_env = CS_environment::type_id::create("CS_env", this); 

    UART_input_seq = UART_input_sequence::type_id::create("UART_input_seq");
    DB_seq         = DB_sequence        ::type_id::create("DB_seq");
        
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase
    
function void CS_test::start_of_simulation_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> START OF SIMULATION <--"), UVM_DEBUG);
    uvm_top.print_topology();
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> START OF SIMULATION <--"), UVM_DEBUG);
endfunction : start_of_simulation_phase

task CS_test::main_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> MAIN <--"), UVM_DEBUG);

    phase.phase_done.set_drain_time(this, `CLOCK * 1000);

    phase.raise_objection(this);
    fork
        UART_input_seq.start(UART_env.UART_input_agent_h.seqr);
        DB_seq.start(DB_env.DB_input_agent_h.seqr);
    join
    phase.drop_objection(this);  

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> MAIN <--"), UVM_DEBUG);  
endtask : main_phase


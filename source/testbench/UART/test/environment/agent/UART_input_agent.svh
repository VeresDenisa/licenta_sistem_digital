class UART_input_agent extends uvm_agent;
    `uvm_component_utils(UART_input_agent);
    
    virtual UART_input_VIF i;

    uvm_sequencer #(UART_input_frame) seqr;
    UART_input_driver    drv;
    UART_input_monitor   mon;
    
    agent_config UART_config_h;
    
    function new (string name = "UART_input_agent", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new

    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
endclass : UART_input_agent



function void UART_input_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    if(!uvm_config_db#(agent_config)::get(this, "", "UART_config_db", UART_config_h))
        `uvm_fatal(this.get_name(), "Failed to get config object");
    
    if(!uvm_config_db#(virtual UART_input_VIF)::get(this, "", "UART_input_VIF", i))
        `uvm_fatal(this.get_name(), "Failed to get interface");
    
    if(UART_config_h.get_is_active() == UVM_ACTIVE) begin
        seqr = uvm_sequencer#(UART_input_frame)::type_id::create("UART_input_seqr", this);
        drv  = UART_input_driver::type_id::create("UART_input_driver",  this); 
        uvm_config_db#(virtual UART_input_VIF)::set(this, "UART_input_driver*", "UART_input_VIF", i);
    end
    
    // DEFAULT PASSIVE
    mon = UART_input_monitor::type_id::create("UART_input_monitor",  this);
    uvm_config_db#(virtual UART_input_VIF)::set(this, "UART_input_monitor*", "UART_input_VIF", i);

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

function void UART_input_agent::connect_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> CONNECT <--"), UVM_DEBUG);

    if(UART_config_h.get_is_active() == UVM_ACTIVE) begin
        drv.seq_item_port.connect(seqr.seq_item_export);
    end

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> CONNECT <--"), UVM_DEBUG);
endfunction : connect_phase
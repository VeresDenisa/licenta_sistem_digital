class CM_input_driver extends uvm_driver #(CM_input_item);
    `uvm_component_utils(CM_input_driver);

    virtual CM_input_VIF i;

    CM_input_item item;

    function new (string name = "CM_input_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new 

    extern function void build_phase (uvm_phase phase);
    extern task reset_phase(uvm_phase phase);
    extern task main_phase(uvm_phase phase);
endclass : CM_input_driver



function void CM_input_driver::build_phase (uvm_phase phase);
    super.build_phase(phase);  
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    if(!uvm_config_db#(virtual CM_input_VIF)::get(this, "", "CM_input_VIF", i))
        `uvm_fatal(this.get_name(), "Failed to get interface");

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

task CM_input_driver::reset_phase(uvm_phase phase);
    super.reset_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> RESET <--"), UVM_DEBUG);
    
    phase.raise_objection(this);

    i.Empty            <= 'b0;
    i.RXD_Data         <= 'b0;
    i.Vertical_Split   <= 'b0;
    i.Horizontal_Split <= 'b0;
    i.VGA_debug        <= 'b0;
    i.HSync            <= 'b0;
    i.VSync            <= 'b0;

    @(i.driver);
    @(i.driver);
    @(i.driver);
    @(i.driver);

    phase.drop_objection(this);

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> RESET <--"), UVM_DEBUG);
    endtask : reset_phase

task CM_input_driver::main_phase(uvm_phase phase);
    super.main_phase(phase);  
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> MAIN <--"), UVM_DEBUG);

    forever begin : send_loop
        seq_item_port.get_next_item(item);
        
        i.send(item);
        `uvm_info(get_name(), $sformatf("Drive an item."), UVM_MEDIUM);
        `uvm_info(get_name(), $sformatf("Drive item: %s", item.convert2string), UVM_HIGH);
        
        seq_item_port.item_done();
    end : send_loop
    
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> MAIN <--"), UVM_DEBUG);
endtask : main_phase
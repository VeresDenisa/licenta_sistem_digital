class VGA_input_driver extends uvm_driver #(VGA_input_item);
    `uvm_component_utils(VGA_input_driver);

    virtual VGA_input_VIF i;

    VGA_input_item item;

    function new (string name = "VGA_input_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new 

    extern function void build_phase (uvm_phase phase);
    extern task reset_phase(uvm_phase phase);
    extern task main_phase(uvm_phase phase);
endclass : VGA_input_driver



function void VGA_input_driver::build_phase (uvm_phase phase);
    super.build_phase(phase);  
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    if(!uvm_config_db#(virtual VGA_input_VIF)::get(this, "", "VGA_input_VIF", i))
        `uvm_fatal(this.get_name(), "Failed to get interface");

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

task VGA_input_driver::reset_phase(uvm_phase phase);
    super.reset_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> RESET <--"), UVM_DEBUG);
    
    phase.raise_objection(this);

    i.data_in <= 'b0;

    @(i.driver);
    @(i.driver);
    @(i.driver);
    @(i.driver);

    phase.drop_objection(this);

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> RESET <--"), UVM_DEBUG);
    endtask : reset_phase

task VGA_input_driver::main_phase(uvm_phase phase);
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
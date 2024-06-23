class CM_output_driver extends uvm_driver #(CM_output_item);
    `uvm_component_utils(CM_output_driver);

    virtual CM_output_VIF i;

    CM_output_item item;

    function new (string name = "CM_output_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new 

    extern function void build_phase (uvm_phase phase);
    extern task reset_phase(uvm_phase phase);
    extern task main_phase(uvm_phase phase);
endclass : CM_output_driver



function void CM_output_driver::build_phase (uvm_phase phase);
    super.build_phase(phase);  
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);

    if(!uvm_config_db#(virtual CM_output_VIF)::get(this, "", "CM_output_VIF", i))
        `uvm_fatal(this.get_name(), "Failed to get interface");

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

task CM_output_driver::reset_phase(uvm_phase phase);
    super.reset_phase(phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> RESET <--"), UVM_DEBUG);
    
    phase.raise_objection(this);

    i.Config_Status             <= 'b0;
    i.Config_Notification       <= 'b0;
    i.Config_Notification_Valid <= 'b0;
    i.Config_Error              <= 'b0;
    i.Error_Valid               <= 'b0;
    i.VGA_Notification          <= 'b0;
    i.VGA_Notification_Valid    <= 'b0;
    i.Data_VGA                  <= 'b0;

    @(i.driver);
    @(i.driver);
    @(i.driver);
    @(i.driver);

    phase.drop_objection(this);

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> RESET <--"), UVM_DEBUG);
    endtask : reset_phase

task CM_output_driver::main_phase(uvm_phase phase);
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
class DB_monitor extends uvm_monitor;
    `uvm_component_utils(DB_monitor)
    
    virtual DB_VIF i;
    
    uvm_analysis_port #(DB_item) an_port;
    
    DB_item item, item_prev;
    
    function new (string name = "DB_monitor", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    extern function void build_phase (uvm_phase phase);
    extern task run_phase(uvm_phase phase);
endclass : DB_monitor



function void DB_monitor::build_phase (uvm_phase phase);
    super.build_phase(phase);  
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);
    
    item      = new("item");
    item_prev = new("item_prev");
    an_port   = new("an_port", this);

    item_prev.setDefault();
    
    if(!uvm_config_db#(virtual DB_VIF)::get(this, "", "DB_VIF", i))
        `uvm_fatal(this.get_name(), "Failed to get interface");  

    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG); 
endfunction : build_phase

task DB_monitor::run_phase(uvm_phase phase);
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> RUN <--"), UVM_DEBUG);

    forever begin : forever_monitor
        @(i.monitor);
        i.receive(item);

        if(!item.compare(item_prev) || !item.equalDefault()) begin
            `uvm_info(get_name(), $sformatf("Monitore an item."), UVM_MEDIUM);
            `uvm_info(get_name(), $sformatf("Monitore item: %s", item.convert2string), UVM_HIGH);
            an_port.write(item);
        end
        item_prev.copy(item);
    end : forever_monitor
    
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> RUN <--"), UVM_DEBUG);
endtask : run_phase

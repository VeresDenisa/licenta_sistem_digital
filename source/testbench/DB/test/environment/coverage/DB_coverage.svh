class DB_coverage extends uvm_component;
  `uvm_component_utils(DB_coverage);
  
  uvm_analysis_imp  #(DB_item, DB_coverage) an_port;
   
  DB_item DB_t;

  DB_covergroup  DB_cvg;
    
  function new(string name = "DB_coverage", uvm_component parent = null);
    super.new(name, parent);

    an_port = new("an_port", this);

    DB_t  = new("DB_current");

    DB_cvg  = new(DB_t);     
  endfunction : new
  
  extern function void write(DB_item t);      
    
  extern function void report_phase(uvm_phase phase);
endclass : DB_coverage

    
    
function void DB_coverage::write(DB_item t);
  DB_t.copy(t);

  `uvm_info(get_name(), $sformatf("DB coverage item: %s", DB_t.convert2string), UVM_FULL);

  DB_cvg.sample();
endfunction : write

function void DB_coverage::report_phase(uvm_phase phase);
  `uvm_info(get_name(), $sformatf("---> EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
  `uvm_info(get_name(),$sformatf("DB coverage:  %.2f%%", DB_cvg.get_coverage()),  UVM_LOW);
  `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
endfunction : report_phase

class CD_coverage extends uvm_component;
  `uvm_component_utils(CD_coverage);
  
  uvm_analysis_imp #(CD_item, CD_coverage) an_port;
   
  CD_item   CD_t; 

  CD_covergroup   CD_cvg;
    
  function new(string name = "CD_coverage", uvm_component parent = null);
    super.new(name, parent);

    an_port = new("an_port", this);
    
    CD_t   = new("CD_t");

    CD_cvg   = new(CD_t);     
  endfunction : new
  
  extern function void write(CD_item t);     
    
  extern function void report_phase(uvm_phase phase);
endclass : CD_coverage

    
    
function void CD_coverage::write(CD_item t);
  CD_t.copy(t);
  `uvm_info(get_name(), $sformatf("Coverage item: %s", CD_t.convert2string), UVM_FULL);
  CD_cvg.sample();
endfunction : write

function void CD_coverage::report_phase(uvm_phase phase);
  `uvm_info(get_name(), $sformatf("---> EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
  `uvm_info(get_name(),$sformatf("CD coverage: %.2f%%", CD_cvg.get_coverage()),  UVM_LOW);
  `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
endfunction : report_phase

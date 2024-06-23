class VGA_coverage extends uvm_component;
  `uvm_component_utils(VGA_coverage);
  
  uvm_analysis_imp #(VGA_output_item, VGA_coverage) an_port;
   
  VGA_output_item VGA_t; 

  VGA_covergroup  VGA_cvg;
    
  function new(string name = "VGA_coverage", uvm_component parent = null);
    super.new(name, parent);

    an_port  = new("an_port", this);
    
    VGA_t  = new("VGA_t");

    VGA_cvg  = new(VGA_t); 
  endfunction : new
  
  extern function void write(VGA_output_item t);  
    
  extern function void report_phase(uvm_phase phase);
endclass : VGA_coverage

    
    
function void VGA_coverage::write(VGA_output_item t);
  VGA_t.copy(t);
  `uvm_info(get_name(), $sformatf("Coverage item: %s", VGA_t.convert2string), UVM_FULL);
  VGA_cvg.sample();
endfunction : write

function void VGA_coverage::report_phase(uvm_phase phase);
  `uvm_info(get_name(), $sformatf("---> EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
  `uvm_info(get_name(),$sformatf("VGA coverage:  %.2f%%", VGA_cvg.get_coverage()), UVM_LOW);
  `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
endfunction : report_phase

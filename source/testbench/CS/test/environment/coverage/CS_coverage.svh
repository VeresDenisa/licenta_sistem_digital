`uvm_analysis_imp_decl(_CS_LM)
`uvm_analysis_imp_decl(_CS_VGA)
`uvm_analysis_imp_decl(_CS_DB)

class CS_coverage extends uvm_component;
  `uvm_component_utils(CS_coverage);
  
  uvm_analysis_imp_CS_LM  #(LM_item,         CS_coverage) an_port_CS_LM;
  uvm_analysis_imp_CS_DB  #(DB_item,         CS_coverage) an_port_CS_DB;
  uvm_analysis_imp_CS_VGA #(VGA_output_item, CS_coverage) an_port_CS_VGA;
   
  LM_item LM_t; 
  DB_item DB_t;
  VGA_output_item VGA_output_t;

  DB_covergroup  DB_cvg;
  LM_covergroup  LM_cvg;
  VGA_covergroup VGA_cvg;
    
  function new(string name = "CS_coverage", uvm_component parent = null);
    super.new(name, parent);

    an_port_CS_LM  = new("an_port_CS_LM",  this);
    an_port_CS_DB  = new("an_port_CS_DB",  this);
    an_port_CS_VGA = new("an_port_CS_VGA", this);
    
    LM_t = new("LM_t");
    DB_t = new("DB_t");
    VGA_output_t = new("VGA_output_t");

    LM_cvg  = new(LM_t);
    DB_cvg  = new(DB_t); 
    VGA_cvg = new(VGA_output_t); 
  endfunction : new
  
  extern function void write_CS_LM(LM_item t);      
  extern function void write_CS_DB(DB_item t);   
  extern function void write_CS_VGA(VGA_output_item t); 
    
  extern function void report_phase(uvm_phase phase);
endclass : CS_coverage

    
    
function void CS_coverage::write_CS_LM(LM_item t);
  LM_t.copy(t);
  `uvm_info(get_name(), $sformatf("Coverage item: %s", LM_t.convert2string), UVM_FULL);
  LM_cvg.sample();
endfunction : write_CS_LM
    
function void CS_coverage::write_CS_DB(DB_item t);
  DB_t.copy(t);
  `uvm_info(get_name(), $sformatf("Coverage item: %s", DB_t.convert2string), UVM_FULL);
  DB_cvg.sample();
endfunction : write_CS_DB
    
function void CS_coverage::write_CS_VGA(VGA_output_item t);
  VGA_output_t.copy(t);
  `uvm_info(get_name(), $sformatf("Coverage item: %s", VGA_output_t.convert2string), UVM_FULL);
  VGA_cvg.sample();
endfunction : write_CS_VGA
    
function void CS_coverage::report_phase(uvm_phase phase);
  `uvm_info(get_name(), $sformatf("---> EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
  `uvm_info(get_name(),$sformatf("LM coverage:  %.2f%%", LM_cvg.get_coverage()),  UVM_LOW);
  `uvm_info(get_name(),$sformatf("DB coverage:  %.2f%%", DB_cvg.get_coverage()),  UVM_LOW);
  `uvm_info(get_name(),$sformatf("VGA coverage: %.2f%%", VGA_cvg.get_coverage()), UVM_LOW);
  `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
endfunction : report_phase

`uvm_analysis_imp_decl(_LM)
`uvm_analysis_imp_decl(_UART)
`uvm_analysis_imp_decl(_LM_CM_output)

class LM_coverage extends uvm_component;
  `uvm_component_utils(LM_coverage);
  
  uvm_analysis_imp_LM       #(LM_item,          LM_coverage) an_port_LM;
  uvm_analysis_imp_UART     #(UART_output_item, LM_coverage) an_port_UART;
  uvm_analysis_imp_LM_CM_output#(CM_output_item,   LM_coverage) an_port_LM_CM_output;
   
  LM_item   LM_t; 
  UART_output_item UART_t;
  CM_output_item   CM_output_t;

  LM_covergroup        LM_cvg;
  UART_covergroup      UART_cvg;
  CM_output_covergroup CM_output_cvg;
    
  function new(string name = "LM_coverage", uvm_component parent = null);
    super.new(name, parent);

    an_port_LM        = new("an_port_LM",        this);
    an_port_UART      = new("an_port_UART",      this);
    an_port_LM_CM_output = new("an_port_LM_CM_output", this);
    
    LM_t        = new("LM_t");
    UART_t      = new("UART_t");
    CM_output_t = new("CM_output_t");

    LM_cvg        = new(LM_t);
    UART_cvg      = new(UART_t); 
    CM_output_cvg = new(CM_output_t);      
  endfunction : new
  
  extern function void write_LM(LM_item t);    
  extern function void write_UART(UART_output_item t);   
  extern function void write_LM_CM_output(CM_output_item t);  
    
  extern function void report_phase(uvm_phase phase);
endclass : LM_coverage

    
    
function void LM_coverage::write_LM(LM_item t);
  LM_t.copy(t);
  `uvm_info(get_name(), $sformatf("Coverage item: %s", LM_t.convert2string), UVM_FULL);
  LM_cvg.sample();
endfunction : write_LM
    
function void LM_coverage::write_UART(UART_output_item t);
  UART_t.copy(t);
  `uvm_info(get_name(), $sformatf("Coverage item: %s", UART_t.convert2string), UVM_FULL);
  UART_cvg.sample();
endfunction : write_UART
    
function void LM_coverage::write_LM_CM_output(CM_output_item t);
  CM_output_t.copy(t);
  `uvm_info(get_name(), $sformatf("Coverage item: %s", UART_t.convert2string), UVM_FULL);
  CM_output_cvg.sample();
endfunction : write_LM_CM_output

function void LM_coverage::report_phase(uvm_phase phase);
  `uvm_info(get_name(), $sformatf("---> EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
  `uvm_info(get_name(),$sformatf("LM coverage:        %.2f%%", LM_cvg.get_coverage()),        UVM_LOW);
  `uvm_info(get_name(),$sformatf("UART coverage:      %.2f%%", UART_cvg.get_coverage()),      UVM_LOW);
  `uvm_info(get_name(),$sformatf("CM output coverage: %.2f%%", CM_output_cvg.get_coverage()), UVM_LOW);
  `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
endfunction : report_phase

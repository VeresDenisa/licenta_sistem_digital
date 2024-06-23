class UART_coverage extends uvm_component;
  `uvm_component_utils(UART_coverage);
  
  uvm_analysis_imp#(UART_output_item, UART_coverage) an_port;
   
  UART_output_item UART_t; 

  UART_covergroup UART_cvg;
    
  function new(string name = "UART_coverage", uvm_component parent = null);
    super.new(name, parent);

    an_port = new("an_port", this);
    
    UART_t = new("UART_t");

    UART_cvg = new(UART_t);    
  endfunction : new
  
  extern function void write(UART_output_item t);   
    
  extern function void report_phase(uvm_phase phase);
endclass : UART_coverage

    
    
function void UART_coverage::write(UART_output_item t);
  UART_t.copy(t);
  `uvm_info(get_name(), $sformatf("Coverage item: %s", UART_t.convert2string), UVM_FULL);
  UART_cvg.sample();
endfunction : write

function void UART_coverage::report_phase(uvm_phase phase);
  `uvm_info(get_name(), $sformatf("---> EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
  `uvm_info(get_name(),$sformatf("UART coverage: %.2f%%", UART_cvg.get_coverage()), UVM_LOW);
  `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
endfunction : report_phase

class LM_item extends uvm_sequence_item;
    `uvm_object_utils(LM_item);

    logic [7:0] leds;
    
    function new(string name = "LM_item");
        super.new(name);
    endfunction : new
    
    extern function string convert2string(); 

    extern function bit  compare(LM_item item);
    extern function void copy(LM_item item); 
    extern function void setDefault(); 
    extern function bit  equalDefault(); 
endclass : LM_item


function bit LM_item::compare(LM_item item);
  if(this.leds !== item.leds)  return 1'b0;
  return 1'b1;
endfunction : compare

function void LM_item::copy(LM_item item);
  this.leds = item.leds;
endfunction : copy

function void LM_item::setDefault();
  this.leds = 'b0;
endfunction : setDefault

function bit LM_item::equalDefault();
  if(this.leds !== 'b0) return 1'b0;
  return 1'b1;
endfunction : equalDefault

function string LM_item::convert2string();
    return $sformatf("LEDS:%0h", leds);
endfunction : convert2string
class VGA_input_item extends uvm_sequence_item;
    `uvm_object_utils(VGA_input_item);

    rand logic [11:0] data_in;
    
    function new(string name = "VGA_input_item");
        super.new(name);
    endfunction : new

    constraint pseudo_random_values_3_0 { data_in[3:0] dist { 'h0 := 10, 'h5 := 10, 'hA := 10, 'hF := 10, ['h1:'h4] := 7, ['h4:'h9] := 7, ['hB:'hE] := 7 }; }
    constraint pseudo_random_values_7_4 { data_in[7:4] dist { 'h0 := 10, 'h5 := 10, 'hA := 10, 'hF := 10, ['h1:'h4] := 7, ['h4:'h9] := 7, ['hB:'hE] := 7 }; }
    constraint pseudo_random_values_11_8 { data_in[11:8] dist { 'h0 := 10, 'h5 := 10, 'hA := 10, 'hF := 10, ['h1:'h4] := 7, ['h4:'h9] := 7, ['hB:'hE] := 7 }; }
    
    extern function string convert2string(); 

    extern function bit  compare(VGA_input_item item);
    extern function void copy(VGA_input_item item); 
    extern function void setDefault(); 
    extern function bit  equalDefault(); 
endclass : VGA_input_item


function bit VGA_input_item::compare(VGA_input_item item);
    if(this.data_in !== item.data_in) return 1'b0;
    return 1'b1;
endfunction : compare

function void VGA_input_item::copy(VGA_input_item item);
    this.data_in = item.data_in;
endfunction : copy

function void VGA_input_item::setDefault();
    this.data_in = 'b0;
endfunction : setDefault

function bit VGA_input_item::equalDefault();
    if(this.data_in !== 'b0) return 1'b0;
  return 1'b1;
endfunction : equalDefault

function string VGA_input_item::convert2string();
    return $sformatf("data_in:%0b", data_in);
endfunction : convert2string
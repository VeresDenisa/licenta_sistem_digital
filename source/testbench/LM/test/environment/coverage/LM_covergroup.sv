covergroup LM_covergroup (ref LM_item item);
    leds0_cvp : coverpoint item.leds[0] { bins value_binary[2] = {0, 1}; }
    leds1_cvp : coverpoint item.leds[1] { bins value_binary[2] = {0, 1}; }
    leds2_cvp : coverpoint item.leds[2] { bins value_binary[2] = {0, 1}; }
    leds3_cvp : coverpoint item.leds[3] { bins value_binary[2] = {0, 1}; }
    leds4_cvp : coverpoint item.leds[4] { bins value_binary[2] = {0, 1}; }
    leds5_cvp : coverpoint item.leds[5] { bins value_binary[2] = {0, 1}; }
    leds6_cvp : coverpoint item.leds[6] { bins value_binary[2] = {0, 1}; }
    leds7_cvp : coverpoint item.leds[7] { bins value_binary[2] = {0, 1}; }
endgroup : LM_covergroup
onerror {resume}
quietly set dataset_list [list wave_LM_test]
if {[catch {datasetcheck $dataset_list}]} {abort}
quietly WaveActivateNextPane {} 0
add wave -noupdate wave_LM_test:/testbench_LM/LM_DUT/clk
add wave -noupdate wave_LM_test:/testbench_LM/LM_DUT/rst_n
add wave -noupdate -divider SWITCH
add wave -noupdate wave_LM_test:/testbench_LM/LM_DUT/UART_data_debug_switch
add wave -noupdate -divider {UART DATA}
add wave -noupdate -radix binary wave_LM_test:/testbench_LM/LM_DUT/UART_data
add wave -noupdate wave_LM_test:/testbench_LM/LM_DUT/UART_data_valid
add wave -noupdate -divider {CM ERRORS}
add wave -noupdate -radix binary wave_LM_test:/testbench_LM/LM_DUT/CM_errors
add wave -noupdate wave_LM_test:/testbench_LM/LM_DUT/CM_errors_valid
add wave -noupdate -divider {UART ERRORS}
add wave -noupdate -radix binary wave_LM_test:/testbench_LM/LM_DUT/UART_errors
add wave -noupdate wave_LM_test:/testbench_LM/LM_DUT/UART_errors_valid
add wave -noupdate -divider CONFIG
add wave -noupdate -radix binary wave_LM_test:/testbench_LM/LM_DUT/config_notification
add wave -noupdate -divider LEDS
add wave -noupdate -color Gold -radix binary wave_LM_test:/testbench_LM/LM_DUT/leds
add wave -noupdate -divider COMPONENTS
add wave -noupdate -radix binary wave_LM_test:/testbench_LM/LM_DUT/leds_UART_info
add wave -noupdate -radix binary wave_LM_test:/testbench_LM/LM_DUT/leds_UART_error
add wave -noupdate -radix binary wave_LM_test:/testbench_LM/LM_DUT/leds_CM_error
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {73 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 332
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {21 ns} {243 ns}

onerror {resume}
quietly set dataset_list [list wave_UART_test]
if {[catch {datasetcheck $dataset_list}]} {abort}
quietly WaveActivateNextPane {} 0
add wave -noupdate wave_UART_test:/testbench_UART/UART_DUT/clk
add wave -noupdate wave_UART_test:/testbench_UART/UART_DUT/rst_n
add wave -noupdate wave_UART_test:/testbench_UART/UART_DUT/clkinVGA
add wave -noupdate -divider CONFIG
add wave -noupdate wave_UART_test:/testbench_UART/UART_DUT/c_addr
add wave -noupdate wave_UART_test:/testbench_UART/UART_DUT/c_data
add wave -noupdate wave_UART_test:/testbench_UART/UART_DUT/c_valid
add wave -noupdate wave_UART_test:/testbench_UART/UART_DUT/c_ready
add wave -noupdate wave_UART_test:/testbench_UART/UART_DUT/paritybit
add wave -noupdate wave_UART_test:/testbench_UART/UART_DUT/stopbit
add wave -noupdate -divider Input
add wave -noupdate -color Gold wave_UART_test:/testbench_UART/UART_DUT/in
add wave -noupdate -divider Output
add wave -noupdate -color Red -radix binary wave_UART_test:/testbench_UART/UART_DUT/error
add wave -noupdate wave_UART_test:/testbench_UART/UART_DUT/valid_error
add wave -noupdate -color Gold -radix binary wave_UART_test:/testbench_UART/UART_DUT/out
add wave -noupdate wave_UART_test:/testbench_UART/UART_DUT/valid_out
add wave -noupdate -color Gold wave_UART_test:/testbench_UART/UART_DUT/data
add wave -noupdate wave_UART_test:/testbench_UART/UART_DUT/valid_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {193546 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 346
configure wave -valuecolwidth 58
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
WaveRestoreZoom {175508 ns} {419098 ns}

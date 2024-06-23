onerror {resume}
quietly set dataset_list [list wave_VGA_test_no_data]
if {[catch {datasetcheck $dataset_list}]} {abort}
quietly WaveActivateNextPane {} 0
add wave -noupdate wave_VGA_test_no_data:/testbench_VGA/VGA_DUT/clk
add wave -noupdate wave_VGA_test_no_data:/testbench_VGA/VGA_DUT/rst_n
add wave -noupdate -divider CONFIG
add wave -noupdate wave_VGA_test_no_data:/testbench_VGA/VGA_DUT/Load_config
add wave -noupdate wave_VGA_test_no_data:/testbench_VGA/VGA_DUT/c_valid
add wave -noupdate wave_VGA_test_no_data:/testbench_VGA/VGA_DUT/c_addr
add wave -noupdate wave_VGA_test_no_data:/testbench_VGA/VGA_DUT/c_data
add wave -noupdate wave_VGA_test_no_data:/testbench_VGA/VGA_DUT/c_ready
add wave -noupdate -divider Input
add wave -noupdate wave_VGA_test_no_data:/testbench_VGA/VGA_DUT/data_in
add wave -noupdate -divider Output
add wave -noupdate -color Gold wave_VGA_test_no_data:/testbench_VGA/VGA_DUT/HSync
add wave -noupdate -color Gold wave_VGA_test_no_data:/testbench_VGA/VGA_DUT/VSync
add wave -noupdate -color Red wave_VGA_test_no_data:/testbench_VGA/VGA_DUT/RED
add wave -noupdate -color Green wave_VGA_test_no_data:/testbench_VGA/VGA_DUT/GREEN
add wave -noupdate -color Blue wave_VGA_test_no_data:/testbench_VGA/VGA_DUT/BLUE
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {376345 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 305
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
WaveRestoreZoom {0 ns} {8400142 ns}

onerror {resume}
quietly set dataset_list [list wave_CD_test_no_config]
if {[catch {datasetcheck $dataset_list}]} {abort}
quietly WaveActivateNextPane {} 0
add wave -noupdate wave_CD_test_no_config:/testbench_CD/CD_DUT/clk
add wave -noupdate wave_CD_test_no_config:/testbench_CD/CD_DUT/rst_n
add wave -noupdate wave_CD_test_no_config:/testbench_CD/CD_DUT/clkinVGA
add wave -noupdate -divider CONFIG
add wave -noupdate wave_CD_test_no_config:/testbench_CD/CD_DUT/c_addr
add wave -noupdate wave_CD_test_no_config:/testbench_CD/CD_DUT/c_data
add wave -noupdate wave_CD_test_no_config:/testbench_CD/CD_DUT/c_valid
add wave -noupdate wave_CD_test_no_config:/testbench_CD/CD_DUT/c_ready
add wave -noupdate -divider CD
add wave -noupdate wave_CD_test_no_config:/testbench_CD/CD_DUT/clk_VGA
add wave -noupdate wave_CD_test_no_config:/testbench_CD/CD_DUT/clk_UART
add wave -noupdate wave_CD_test_no_config:/testbench_CD/CD_DUT/clk_LM
add wave -noupdate wave_CD_test_no_config:/testbench_CD/CD_DUT/clk_DB
add wave -noupdate -divider Internal
add wave -noupdate wave_CD_test_no_config:/testbench_CD/CD_DUT/c_VGA_ready
add wave -noupdate wave_CD_test_no_config:/testbench_CD/CD_DUT/c_UART_ready
add wave -noupdate wave_CD_test_no_config:/testbench_CD/CD_DUT/baudrate
add wave -noupdate wave_CD_test_no_config:/testbench_CD/CD_DUT/resolution
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 356
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
WaveRestoreZoom {0 ns} {105037 ns}

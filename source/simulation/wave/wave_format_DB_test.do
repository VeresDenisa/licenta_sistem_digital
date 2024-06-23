onerror {resume}
quietly set dataset_list [list wave_DB_test]
if {[catch {datasetcheck $dataset_list}]} {abort}
quietly WaveActivateNextPane {} 0
add wave -noupdate wave_DB_test:/testbench/DB_DUT/clk
add wave -noupdate wave_DB_test:/testbench/DB_DUT/rst_n
add wave -noupdate -divider <NULL>
add wave -noupdate wave_DB_test:/testbench/DB_DUT/btnHS
add wave -noupdate wave_DB_test:/testbench/DB_DUT/HS
add wave -noupdate -divider <NULL>
add wave -noupdate wave_DB_test:/testbench/DB_DUT/btnVS
add wave -noupdate wave_DB_test:/testbench/DB_DUT/VS
add wave -noupdate -divider <NULL>
add wave -noupdate wave_DB_test:/testbench/DB_DUT/btnDF_UART
add wave -noupdate wave_DB_test:/testbench/DB_DUT/DF_UART
add wave -noupdate -divider <NULL>
add wave -noupdate wave_DB_test:/testbench/DB_DUT/btnDF_VGA
add wave -noupdate wave_DB_test:/testbench/DB_DUT/DF_VGA
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 282
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
WaveRestoreZoom {0 ns} {919 ns}

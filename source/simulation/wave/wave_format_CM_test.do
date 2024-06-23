onerror {resume}
quietly set dataset_list [list wave_CM_test]
if {[catch {datasetcheck $dataset_list}]} {abort}
quietly WaveActivateNextPane {} 0
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/clk
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/rst_n
add wave -noupdate -divider Input
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/Empty
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/RXD_Data
add wave -noupdate -divider CONFIG
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/c_data
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/c_addr
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/c_valid
add wave -noupdate -divider Outputs
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/Config_Status
add wave -noupdate -divider <NULL>
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/Config_Notification
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/Config_Notification_Valid
add wave -noupdate -divider <NULL>
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/Config_Error
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/Error_Valid
add wave -noupdate -divider <NULL>
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/VGA_Notification
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/VGA_Notification_Valid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {546 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 314
configure wave -valuecolwidth 48
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
WaveRestoreZoom {12 ns} {567 ns}

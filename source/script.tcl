#!/usr/bin/tclsh

# Run from terminal with: ./script.tcl VERBOSITY UNIT testcase1 testcase2 etc.
# Ex. ./script.tcl DEBUG CD test test_no_1 test_no_2 test_no_3 
# First argument is verbosity: NONE, LOW, MEDIUM, HIGH, FULL, DEBUG
# Following arguments are testcase names.

# set the testcases names and verbosity to check
set testlist {
     DB_test
     CM_test
     CD_test CD_test_no_config
     LM_test
     UART_test UART_test_no_config UART_test_error
     VGA_test VGA_test_no_config VGA_test_no_data
     CS_test
}

set verblist {NONE LOW MEDIUM HIGH FULL DEBUG}

if { $argc < 3 } { 
     puts "Not enough arguments. At least 2 arguments nedded. First argument: verbosity. Next argument: unit. Following arguments: testcase names."
     exit 2 
}

puts "Number of testcases found: [incr argc -2]" 

# set a variable to memorise the current testcase number
set i 0

# get the verbosity from the arguments; if the verbosity is not correct, the MEDIUM verbosity level will be used
set verbosity [lindex $argv 0]

set unit [lindex $argv 1]

if { [lsearch $verblist $verbosity] <= 0 } {
     puts "Verbosity level not valid. The default MEDIUM verbosity level will be used instead."
     set verbosity {MEDIUM}
}

# get the testcases names from the arguments 
set testargv [lreplace $argv 0 1]

# go to through each testcase given as argument
foreach {test} $testargv {
     incr i 1

     # check if the test exists in the list
     if { [lsearch $testlist $test] >= 0 } {

          # make a ran tests list if it is the first testcase or append to the ran tests list otherwise; use the path to the ucdb file
          if { [info exists runtests] } {
               lappend runtests "simulation/ucdb/ucdb_$test.ucdb"
          } else {
               set runtests "simulation/ucdb/ucdb_$test.ucdb"
          }

          puts "Start testing testcase $i..." 
          puts "[clock format [clock seconds] -format "%d/%m/%Y %H:%M:%S"] $test: Testcase found. Executing..."  

          # compile in the order specified by files.f
          exec sh -c "vlog -f files_$unit.f"

          puts "[clock format [clock seconds] -format "%d/%m/%Y %H:%M:%S"] $test: Compilation success. Running ..."
          
          # create the specified directories if they don't exist
          if { ![file exists simulation] } { file mkdir simulation }
          if { ![file exists simulation/ucdb] } { file mkdir simulation/ucdb }
          if { ![file exists simulation/wave] } { file mkdir simulation/wave }
          if { ![file exists simulation/transcript] } { file mkdir simulation/transcript }
          if { ![file exists simulation/coverage] } { file mkdir simulation/coverage }

          # simulate the testcase and save the ucdb and wlf file
          # vsim -voptargs=+acc +UVM_TESTNAME=test_no_3_1 +UVM_VERBOSITY=LOW work.testbench
          exec sh -c "vsim -c -voptargs=+acc +UVM_TESTNAME=$test +UVM_VERBOSITY=$verbosity -wlf simulation/wave/wave_$test.wlf work.testbench_$unit -do \"log -r /*; coverage save -onexit simulation/ucdb/ucdb_$test.ucdb; run -all; quit -f; exit\""      

          # copy the transcipt file which contains the entire simulation as a transcript file
          file copy -force transcript simulation/transcript/transcript_$test.log

          puts "[clock format [clock seconds] -format "%d/%m/%Y %H:%M:%S"] $test: Transcript and waveform saved."

          # save the coverage report as a text file
          exec sh -c "vsim -c -viewcov simulation/ucdb/ucdb_$test.ucdb -do \"coverage report -file simulation/coverage/coverage_$test.txt -byfile -detail -noannotate -option -cvg; quit -f; exit\""

          puts "[clock format [clock seconds] -format "%d/%m/%Y %H:%M:%S"] $test: Coverage saved."

          puts "Testcase $i done. Closing..." 

     } else { puts "[clock format [clock seconds] -format "%d/%m/%Y %H:%M:%S"] Testcase $i $test not found! Testcase skipped!" }
}

# check whether there were any ran testcases
if { [info exists runtests] } {
     # display the number of successful and unsuccessful simulations. It is not related to the scoreboard or coverage results.
     puts "Testcase simulation --- SUCCESS/FAIL : [llength $runtests]/[incr i -[llength $runtests]] ---"

     # if there is only one testcase there is no need to combine multiple coverage reports into one
     if { [llength $runtests] > 1 } {
          puts "[clock format [clock seconds] -format "%d/%m/%Y %H:%M:%S"] Combine coverage reports..."

          # combine the coverage reports
          exec sh -c "vcover merge simulation/ucdb/ucdb_final.ucdb $runtests"
         
          puts "[clock format [clock seconds] -format "%d/%m/%Y %H:%M:%S"] Finished coverage merge. Saving..."

          # save the coverage report as a txt file
          exec sh -c "vsim -c -viewcov simulation/ucdb/ucdb_final.ucdb -do \"coverage report -file simulation/coverage/coverage_final_$unit.txt -byfile -detail -noannotate -option -cvg; quit -f; exit\""

          puts "[clock format [clock seconds] -format "%d/%m/%Y %H:%M:%S"] Saved final coverage report."

     } else { puts "One successfull testcase run. No coverage merge necessary." }
}
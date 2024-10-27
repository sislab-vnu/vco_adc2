# set design_file "vco_aux_inv.mag"
# set cmd "source ext.sh"
# load $design_file
# eval $cmd
# quit

#set design_file "vco_aux_inv.mag"
set design_file [lindex $argv 0]

if {[file extension $design_file] == ""} {
	set design_file "$design_file.mag"}

set spice_file "[file rootname $design_file].spice"

set magic_commands "temp_magic_script.tcl"
set file [open $magic_commands w]

puts $file "load $design_file"
puts $file "source ext.sh"
puts $file "quit"
close $file

exec magic -dnull -noconsole $magic_commands

file delete $magic_commands

#puts "You are here"

exec tclsh data_processing.tcl $spice_file
puts "##################################"
puts "#The system has finished running.#"
puts "##################################"

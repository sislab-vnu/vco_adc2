# parse_spice.tcl
# Đọc nội dung của file SPICE
set spice_file "main_inv.spice"
set file_id [open $spice_file r]
set spice_data [read $file_id]
close $file_id

# Phân tích nội dung của file SPICE
# Tạo một danh sách để lưu các thông tin
set transistors [list]

foreach line [split $spice_data "\n"] {
    # Tìm các dòng chứa thông tin transistor
    if {[string match "*.subckt*" $line]} {
        # Đọc tên của mạch
        regexp {\.subckt\s+(\S+)} $line -> circuit_name
        puts "Mạch: $circuit_name"
    } elseif {[string match "XM*" $line]} {
        # Phân tích các transistor
        regexp {(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+L=(\S+)\s+W=(\S+)} $line -> name node1 node2 source type length width
        lappend transistors [list $name $node1 $node2 $source $type $length $width]
    }
}

# Lưu thông tin vào file tạm
set temp_file "transistors.tcl"
set temp_id [open $temp_file w]
foreach transistor $transistors {
    puts $temp_id "[lindex $transistor 0] [lindex $transistor 1] [lindex $transistor 2] [lindex $transistor 3] [lindex $transistor 4] [lindex $transistor 5] [lindex $transistor 6]"
}
close $temp_id

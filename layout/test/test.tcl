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

# Tạo cell mới trong Magic
magic -nowindow -dname main_inv.tcl <<EOF
create cell main_inv

# Đặt lớp cho các phần tử
set layer poly  # Lớp cho poly silicon
set layer metal1 # Lớp cho kim loại

# Vẽ các transistor
foreach transistor $transistors {
    set name [lindex $transistor 0]
    set node1 [lindex $transistor 1]
    set node2 [lindex $transistor 2]
    set source [lindex $transistor 3]
    set type [lindex $transistor 4]
    set length [lindex $transistor 5]
    set width [lindex $transistor 6]

    # Xác định kiểu và kích thước của transistor
    if {[string equal $type "pfet"]} {
        # Vẽ PFET
        create rectangle -layer poly -x 0 -y 0 -width $width -height $length
    } elseif {[string equal $type "nfet"]} {
        # Vẽ NFET
        create rectangle -layer poly -x 10 -y 0 -width $width -height $length
    }
    
    # Cập nhật vị trí cho các phần tử
    move -x 10 -y 0
}

# Vẽ kết nối giữa các phần tử (ví dụ)
create rectangle -layer metal1 -x 0 -y 10 -width 20 -height 1

# Lưu thiết kế
save main_inv.mag
EOF

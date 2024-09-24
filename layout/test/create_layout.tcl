# create_layout.tcl
# Đọc thông tin từ file tạm
set temp_file "transistors.tcl"
set file_id [open $temp_file r]
set transistors [list]
while {[gets $file_id line] >= 0} {
    lappend transistors [split $line]
}
close $file_id

# Tạo cell mới trong Magic
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

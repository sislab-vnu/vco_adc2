# Bước 1: Kiểm tra và lấy tệp đầu vào từ dòng lệnh
if {[llength $argv] == 0} {
    puts "Vui lòng nhập tên file đầu vào từ dòng lệnh."
    exit 1
}

set inputFile [lindex $argv 0]  ;# Lấy đối số đầu tiên (file đầu vào)

# Bước 2: Đọc file vào TCL
if {[file exists $inputFile]} {
    set fileId [open $inputFile r]  ;# Mở file theo chế độ đọc
    set content [read $fileId]
    close $fileId
} else {
    puts "File không tồn tại: $inputFile"
    exit 1
}

# Bước 3: Tách file thành các dòng
set lines [split $content "\n"]

# Bước 4: Xử lý các dòng từ ".subck sky130_fd_sc_hd" đến "ends"
set outputList {}  ;# Danh sách để lưu các dòng không bị xóa
set inBlock 0      ;# Biến để theo dõi nếu đang ở trong đoạn cần xóa

foreach line $lines {
    if {[string match *.subckt\ sky130_fd_sc_hd* $line]} {
        set inBlock 1  ;# Bắt đầu khối cần xóa
    }

    if {$inBlock == 0} {
        lappend outputList $line  ;# Lưu các dòng không bị xóa vào danh sách
    }

    if {[string match *ends* $line] && $inBlock == 1} {
        set inBlock 0  ;# Kết thúc khối cần xóa
    }
}

# Bước 5: Tạo tên file output dựa trên file input
set rootName [file rootname $inputFile]    ;# Lấy phần tên gốc của file (không có phần mở rộng)
set extension [file extension $inputFile]   ;# Lấy phần mở rộng của file

set outputFile "${rootName}${extension}"  ;# Tạo tên file output (ví dụ: file_input_output.txy)

# Bước 6: Lưu kết quả ra file mới
set fileId [open $outputFile w]  ;# Mở file mới để ghi
puts $fileId [join $outputList "\n"]
close $fileId

puts "Xử lý hoàn tất. Kết quả được lưu trong: $outputFile"


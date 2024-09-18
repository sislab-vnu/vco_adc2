magic -nowindow -dname simple_test.tcl <<EOF
create cell test_cell
create rectangle -layer poly -x 0 -y 0 -width 10 -height 10
save test_cell.mag
EOF

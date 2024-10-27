extract all
ext2sim alias on
ext2sim label on
ext2sim cthres 0
ext2sim rthres 0
ext2sim extresist off

ext2spice $module_1
ext2sim $module_1

ext2spice $module_2
ext2sim $module_2

ext2spice $module_3
ext2sim $module_3

ext2spice $module_4
ext2sim $module_4

ext2spice $module_5
ext2sim $module_5

#ext2spice $module_6
#ext2sim $module_6

load $module_1
extresist

load $module_2
extresist

load $module_3
extresist

load $module_4
extresist

load $module_5
extresist

#load $module_6
#extresist

exec cat $module_1.res.ext >> $module_1.ext
exec cat $module_2.res.ext >> $module_2.ext
exec cat $module_3.res.ext >> $module_3.ext
exec cat $module_4.res.ext >> $module_4.ext
exec cat $module_5.res.ext >> $module_5.ext
#exec cat $module_6.res.ext >> $module_6.ext

ext2spice hierarchy on
ext2spice scale off
ext2spice cthres 0
ext2spice rthres 0
ext2spice -R -t! -t$ $module_1

quit

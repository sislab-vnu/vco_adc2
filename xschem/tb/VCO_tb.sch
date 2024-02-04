v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 520 -540 520 0 {}
L 4 0 -540 -0 -0 {}
L 4 -0 -540 520 -540 {}
L 4 -0 0 520 -0 {}
N 50 -320 50 -280 { lab=Anlg_in}
N 410 -390 470 -390 { lab=pha_vco}
N 230 -420 290 -420 { lab=Anlg_in}
N 230 -360 290 -360 { lab=ENB}
N 50 -220 50 -200 {
lab=GND}
N 150 -320 150 -280 {
lab=ENB}
N 150 -220 150 -200 {
lab=GND}
N 50 -400 50 -380 {
lab=GND}
N 50 -480 50 -460 {
lab=VCCA}
N 150 -400 150 -380 {
lab=GND}
N 150 -480 150 -460 {
lab=VCCD}
C {devices/vsource.sym} 50 -250 0 0 {name=Vground value="DC=0"}
C {devices/lab_wire.sym} 280 -420 0 0 {name=l12 sig_type=std_logic lab=Anlg_in
}
C {devices/vsource.sym} 150 -250 0 0 {name=Venb1 value="DC=0 PULSE( 0 1.8 0 0.1n 0.1n 20n 1)"}
C {devices/gnd.sym} 50 -200 0 0 {name=l15 lab=GND}
C {devices/lab_pin.sym} 50 -300 2 0 {name=l18 sig_type=std_logic lab=Anlg_in}
C {devices/lab_pin.sym} 150 -305 2 0 {name=l19 sig_type=std_logic lab=ENB}
C {devices/code.sym} 30 -130 0 0 {name=control only_toplevel=false value="
.control
set nobreak
set num_threads=8
set test_mode = 1
* mode = 0: operation testing				1:  frequency extraction    2:  power consumption
if ($test_mode = 0)
    TRAN 1n 5u
    plot pha_vco
    MEAS TRAN prd TRIG pha_vco VAL=0.8 RISE=10 TARG pha_vco VAL=0.8 RISE=20
    let freq = 10/prd
    echo \\"frequency: \\"
    print freq
end
if ($test_mode = 1)
    let Vlow = 0
    let Vlimit = 1.01     $ set upper bound for sweeping
    let Vsweep = 0.01      $ set step size for sweeping
    let NoPoints=(Vlimit-Vlow)/Vsweep+2    $ set number of points for sweeping
    let freq =unitvec(NoPoints)
    let Vin  =unitvec(NoPoints)
    let Vin[0]=Vlow
    let ix=0
    while Vin[ix] < Vlimit
        alter Vground DC=Vin[ix]
        TRAN 0.4n 12u
        MEAS TRAN prd TRIG pha_vco VAL=0.8 RISE=10 TARG pha_vco VAL=0.8 RISE =20
        let freq[ix] = 10/prd
        let ix = ix+1
        Let Vin[ix] = Vin[ix-1]+Vsweep
    end
   print Vin freq > freq_ext.txt
end
if ($test_mode = 2)
    save \\"vdd\\" @Vsup[i] \\"p[0]\\"
    TRAN 0.1n 5u
    MEAS TRAN I_vco AVG @Vsup[i] FROM=3u TO=4u
    MEAS TRAN V_vco AVG vdd FROM=3u TO=4u
    let Power=I_vco*V_vco
    print Power
end
.endc
"
place=end}
C {devices/code.sym} 170 -130 0 0 {name=lib_def
only_toplevel=false 
value=tcleval(".include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.lib $::SKYWATER_MODELS/sky130.lib.spice tt")

place=header}
C {devices/lab_wire.sym} 260 -360 0 0 {name=l1 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 420 -390 2 0 {name=l2 sig_type=std_logic lab=pha_vco}
C {devices/code_shown.sym} 300 -130 0 0 {name=parameter only_toplevel=false value="
.param l_main=3.65
.param l_aux=3.65
.param wp=5
.param wn=4
"}
C {ALib_VCO.sym} 350 -390 0 0 {name=Xvco_1 l_main=l_main l_aux=l_aux wp=wp wn=wn}
C {devices/gnd.sym} 150 -200 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 50 -430 0 0 {name=Vsup1 value="DC=1.8"}
C {devices/vdd.sym} 50 -480 0 0 {name=l3 lab=VCCA}
C {devices/gnd.sym} 50 -380 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 150 -430 0 0 {name=Vsup2 value="DC=1.8"}
C {devices/vdd.sym} 150 -480 0 0 {name=l6 lab=VCCD}
C {devices/gnd.sym} 150 -380 0 0 {name=l7 lab=GND}

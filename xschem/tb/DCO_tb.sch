v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 680 -310 680 -290 { lab=GND}
N 680 -430 680 -370 { lab=VCCA}
N 480 -310 480 -290 { lab=GND}
N 480 -430 480 -370 { lab=Vbs_12}
N 480 -130 480 -110 { lab=GND}
N 480 -250 480 -190 { lab=ENB}
N 780 -110 780 -90 { lab=GND}
N 780 -230 780 -170 { lab=D1}
N 580 -310 580 -290 { lab=GND}
N 580 -430 580 -370 { lab=Vbs_34}
N 780 -310 780 -290 { lab=GND}
N 780 -430 780 -370 { lab=VCCD}
N 330 -280 400 -280 { lab=pha_dco}
N 20 -280 90 -280 { lab=D1}
N 20 -240 90 -240 { lab=ENB}
N 190 -420 190 -360 { lab=Vbs_34}
N 230 -420 230 -360 { lab=VCCA}
N 150 -380 150 -360 { lab=Vbs_12}
N 80 -380 150 -380 { lab=Vbs_12}
N 80 -420 190 -420 { lab=Vbs_34}
N 230 -420 340 -420 { lab=VCCA}
N 270 -380 270 -360 { lab=VCCD}
N 270 -380 340 -380 { lab=VCCD}
C {devices/vsource.sym} 680 -340 0 0 {name=Vsup value="DC=1.8"}
C {devices/gnd.sym} 680 -290 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 680 -400 2 0 {name=l15 sig_type=std_logic lab=VCCA}
C {devices/vsource.sym} 480 -340 0 0 {name=Vbs1 value="DC=0.4"}
C {devices/gnd.sym} 580 -290 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 480 -400 2 0 {name=l18 sig_type=std_logic lab=Vbs_12}
C {devices/gnd.sym} 480 -290 0 0 {name=l23 lab=GND}
C {devices/vsource.sym} 480 -160 0 0 {name=V2 value="DC=1.8 PULSE( 0 1.8 0 0.1n 0.1n 40n 1 )"}
C {devices/gnd.sym} 480 -110 0 0 {name=l27 lab=GND}
C {devices/lab_pin.sym} 480 -220 2 0 {name=l28 sig_type=std_logic lab=ENB}
C {devices/vsource.sym} 780 -140 0 1 {name=V3 value="DC=1.8 $ PULSE( 0 1.8 0 0.1n 0.1n 1u 4u )"}
C {devices/gnd.sym} 780 -90 0 0 {name=l29 lab=GND}
C {devices/lab_pin.sym} 780 -200 2 0 {name=l30 sig_type=std_logic lab=D1}
C {devices/code.sym} 70 -150 0 0 {name=lib only_toplevel=false value="
** Library on VNU server
.lib /home/dkits/efabless/mpw-5/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /home/dkits/efabless/mpw-5/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
** Library on Home PC
*.lib /home/dkit/efabless/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.inc /home/dkit/efabless/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {devices/code.sym} 230 -150 0 0 {name=control only_toplevel=false value="
.param mc_mm_switch=0
.control
set nobreak
set num_threads=6
set test_mode = 0
* mode = 0: operation testing    1:  frequency extraction    2:  power consumption
if ($test_mode = 0)
    TRAN 1n 5u
    plot pha_dco
    MEAS TRAN prd TRIG pha_dco VAL=0.8 RISE=10 TARG pha_dco VAL=0.8 RISE=20
    let freq = 10/prd
    echo \\"frequency: \\"
    print freq
end
if ($test_mode = 1)
    let Vlow = 0
    let Vlimit = 1.01     $ set upper bound for sweeping
    let Vsweep = 0.2      $ set step size for sweeping
    let NoPoints=(Vlimit-Vlow)/Vsweep+2    $ set number of points for sweeping
    let freq =unitvec(NoPoints)
    let Vin  =unitvec(NoPoints)
    let Vin[0]=Vlow
    let ix=0
    while Vin[ix] < Vlimit
        alter Vground DC=Vin[ix]
        TRAN 0.4n 12u
        MEAS TRAN prd TRIG pha_dco VAL=0.8 RISE=10 TARG pha_dco VAL=0.8 RISE =20
        let freq[ix] = 10/prd
        let ix = ix+1
        Let Vin[ix] = Vin[ix-1]+Vsweep
    end
   print Vin freq
end
if ($test_mode = 2)
    save vdd @Vsup[i] pha_dco
    TRAN 0.1n 5u
    MEAS TRAN I_vco AVG @Vsup[i] FROM=3u TO=4u
    MEAS TRAN V_vco AVG vdd FROM=3u TO=4u
    let Power=I_vco*V_vco
    print Power
end
.endc
"}
C {devices/vsource.sym} 580 -340 0 0 {name=Vbs2 value="DC=0"}
C {devices/lab_pin.sym} 580 -400 2 0 {name=l31 sig_type=std_logic lab=Vbs_34}
C {devices/vsource.sym} 780 -340 0 0 {name=Vsup1 value="DC=1.8"}
C {devices/gnd.sym} 780 -290 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 780 -400 2 0 {name=l32 sig_type=std_logic lab=VCCD}
C {devices/lab_wire.sym} 130 -380 0 0 {name=l1 sig_type=std_logic lab=Vbs_12}
C {devices/lab_wire.sym} 70 -240 0 0 {name=l2 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 350 -280 2 0 {name=l3 sig_type=std_logic lab=pha_dco}
C {devices/lab_wire.sym} 130 -420 0 0 {name=l4 sig_type=std_logic lab=Vbs_34}
C {devices/lab_wire.sym} 270 -420 2 0 {name=l5 sig_type=std_logic lab=VCCA}
C {devices/lab_wire.sym} 280 -380 2 0 {name=l6 sig_type=std_logic lab=VCCD}
C {devices/lab_wire.sym} 60 -280 0 0 {name=l7 sig_type=std_logic lab=D1}
C {../lib/ALib_DCO.sym} 210 -280 0 0 {name=Xdco_1}

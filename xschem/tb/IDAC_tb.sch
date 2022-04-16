v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 150 -430 150 -400 { lab=Vbs_12}
N 180 -430 180 -400 { lab=Vbs_12}
N 220 -430 220 -400 { lab=Vbs_34}
N 250 -430 250 -400 { lab=Vbs_34}
N 220 -430 250 -430 { lab=Vbs_34}
N 150 -430 180 -430 { lab=Vbs_12}
N 150 -450 150 -430 { lab=Vbs_12}
N 200 -300 200 -270 { lab=Isup}
N 400 -480 400 -440 { lab=Isup}
N 460 -390 500 -390 { lab=#net1}
N 220 -480 220 -430 { lab=Vbs_34}
N 460 -350 500 -350 { lab=p[1]}
N 460 -310 500 -310 { lab=p[2]}
N 460 -270 500 -270 { lab=p[3]}
N 460 -230 500 -230 { lab=p[4]}
N 300 -390 340 -390 { lab=pn[0]}
N 300 -350 340 -350 { lab=pn[1]}
N 300 -310 340 -310 { lab=pn[2]}
N 300 -230 340 -230 { lab=pn[4]}
N 300 -270 340 -270 { lab=pn[3]}
N 940 -380 940 -360 { lab=GND}
N 940 -500 940 -440 { lab=VCCA}
N 280 -480 280 -400 { lab=VCCA}
N 740 -380 740 -360 { lab=GND}
N 740 -500 740 -440 { lab=Vbs_12}
N 400 -180 400 -160 { lab=GND}
N 100 -200 150 -200 { lab=VCCA}
N 100 -160 150 -160 { lab=ENB}
N 230 -200 280 -200 { lab=pn[0]}
N 740 -200 740 -180 { lab=GND}
N 740 -320 740 -260 { lab=ENB}
N 1040 -180 1040 -160 { lab=GND}
N 1040 -300 1040 -240 { lab=D1}
N 90 -350 120 -350 { lab=D1}
N 840 -380 840 -360 { lab=GND}
N 840 -500 840 -440 { lab=Vbs_34}
N 580 -390 630 -390 { lab=pha_ro}
N 1040 -380 1040 -360 { lab=GND}
N 1040 -500 1040 -440 { lab=VCCD}
N 680 -260 700 -260 { lab=pha_dco}
N 700 -320 700 -260 { lab=pha_dco}
N 540 -260 560 -260 { lab=pha_ro}
N 540 -320 540 -260 { lab=pha_ro}
C {devices/lab_wire.sym} 110 -350 0 0 {name=l1 sig_type=std_logic lab=D1}
C {devices/lab_pin.sym} 150 -440 0 0 {name=l2 sig_type=std_logic lab=Vbs_12}
C {devices/lab_pin.sym} 220 -470 0 0 {name=l3 sig_type=std_logic lab=Vbs_34}
C {devices/lab_wire.sym} 600 -390 2 0 {name=l4 sig_type=std_logic lab=pha_ro}
C {devices/lab_wire.sym} 470 -350 2 0 {name=l5 sig_type=std_logic lab=p[1]}
C {devices/lab_wire.sym} 470 -310 2 0 {name=l6 sig_type=std_logic lab=p[2]}
C {devices/lab_wire.sym} 470 -270 2 0 {name=l7 sig_type=std_logic lab=p[3]}
C {devices/lab_wire.sym} 470 -230 2 0 {name=l8 sig_type=std_logic lab=p[4]}
C {devices/lab_wire.sym} 330 -390 0 0 {name=l9 sig_type=std_logic lab=pn[0]}
C {devices/lab_wire.sym} 330 -350 0 0 {name=l10 sig_type=std_logic lab=pn[1]}
C {devices/lab_wire.sym} 330 -310 0 0 {name=l11 sig_type=std_logic lab=pn[2]}
C {devices/lab_wire.sym} 330 -230 0 0 {name=l13 sig_type=std_logic lab=pn[4]}
C {devices/lab_wire.sym} 330 -270 0 0 {name=l12 sig_type=std_logic lab=pn[3]}
C {devices/vsource.sym} 940 -410 0 0 {name=Vsup value="DC=1.8"}
C {devices/gnd.sym} 940 -360 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 940 -470 2 0 {name=l15 sig_type=std_logic lab=VCCA}
C {devices/lab_pin.sym} 280 -450 0 0 {name=l16 sig_type=std_logic lab=VCCA}
C {devices/vsource.sym} 740 -410 0 0 {name=Vbs1 value="DC=0.4"}
C {devices/gnd.sym} 840 -360 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 740 -470 2 0 {name=l18 sig_type=std_logic lab=Vbs_12}
C {devices/gnd.sym} 400 -160 0 0 {name=l19 lab=GND}
C {devices/lab_pin.sym} 200 -280 0 0 {name=l20 sig_type=std_logic lab=Isup}
C {devices/lab_pin.sym} 400 -460 0 0 {name=l21 sig_type=std_logic lab=Isup}
C {sky130_stdcells/einvp_1.sym} 190 -200 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/gnd.sym} 740 -360 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} 140 -200 0 0 {name=l24 sig_type=std_logic lab=VCCA}
C {devices/lab_wire.sym} 140 -160 0 0 {name=l25 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 240 -200 2 0 {name=l26 sig_type=std_logic lab=pn[0]}
C {devices/vsource.sym} 740 -230 0 0 {name=V2 value="DC=1.8 PULSE( 0 1.8 0 0.1n 0.1n 40n 1 )"}
C {devices/gnd.sym} 740 -180 0 0 {name=l27 lab=GND}
C {devices/lab_pin.sym} 740 -290 2 0 {name=l28 sig_type=std_logic lab=ENB}
C {devices/vsource.sym} 1040 -210 0 1 {name=V3 value="DC=1.8 $ PULSE( 0 1.8 0 0.1n 0.1n 1u 4u )"}
C {devices/gnd.sym} 1040 -160 0 0 {name=l29 lab=GND}
C {devices/lab_pin.sym} 1040 -270 2 0 {name=l30 sig_type=std_logic lab=D1}
C {devices/code.sym} 80 -110 0 0 {name=lib only_toplevel=false value= "
.lib /home/dkit/efabless/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /home/dkit/efabless/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {devices/code.sym} 240 -110 0 0 {name=control only_toplevel=false value="
.control
set nobreak
set num_threads=8
set test_mode = 0
* mode = 0: operation testing    1:  frequency extraction    2:  power consumption
if ($test_mode = 0)
    TRAN 1n 12u
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
C {devices/code_shown.sym} 400 -90 0 0 {name=IDAC_param only_toplevel=false value=".param W_br1=1
.param L_br1=0.5
.param W_br2=2.4
.param L_br2=0.5
.param Wp_lk=4
.param Lp_lk=0.5
.param Wn_lk=2
.param Ln_lk=0.5"}
C {devices/code_shown.sym} 580 -90 0 0 {name=RO_par only_toplevel=false value=".param L12=2
.param Wp12=5
.param Wn12=2
.param L34=2 
.param Wp34=2.5
.param Wn34=1"}
C {ring_osc.sym} 400 -310 0 0 {name=Xro_1 L12=\\"L12\\" Wp12=\\"Wp12\\" Wn12=\\"Wn12\\" L34=\\"L34\\" Wp34=\\"Wp34\\" Wn34=\\"Wn34\\"}
C {AnalogLib_IDAC.sym} 200 -350 0 0 {name=X_idac_1
W_br1=\\"W_br1\\" L_br1=\\"L_br1\\"
W_br2=\\"W_br2\\" L_br2=\\"L_br2\\"
Wp_lk=\\"Wp_lk\\" Lp_lk=\\"Lp_lk\\"
Wn_lk=\\"Wn_lk\\" Ln_lk=\\"Wn_lk\\"
}
C {devices/vsource.sym} 840 -410 0 0 {name=Vbs2 value="DC=0"}
C {devices/lab_pin.sym} 840 -470 2 0 {name=l31 sig_type=std_logic lab=Vbs_34}
C {sky130_stdcells/buf_4.sym} 540 -390 0 0 {name=x2 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {devices/vsource.sym} 1040 -410 0 0 {name=Vsup1 value="DC=1.8"}
C {devices/gnd.sym} 1040 -360 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 1040 -470 2 0 {name=l32 sig_type=std_logic lab=VCCD}
C {devices/lab_pin.sym} 540 -300 2 0 {name=l33 sig_type=std_logic lab=pha_ro}
C {devices/lab_pin.sym} 700 -310 0 0 {name=l34 sig_type=std_logic lab=pha_dco}
C {DLib_freqDiv2.sym} 620 -250 0 0 {name=Xdiv2_1 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD}

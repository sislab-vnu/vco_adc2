v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 460 -390 500 -390 { lab=pha_dco}
N 460 -350 500 -350 { lab=p[1]}
N 460 -310 500 -310 { lab=p[2]}
N 460 -270 500 -270 { lab=p[3]}
N 460 -230 500 -230 { lab=p[4]}
N 300 -390 340 -390 { lab=pn[0]}
N 300 -350 340 -350 { lab=pn[1]}
N 300 -310 340 -310 { lab=pn[2]}
N 300 -230 340 -230 { lab=pn[4]}
N 300 -270 340 -270 { lab=pn[3]}
N 400 -180 400 -160 { lab=GND}
N 100 -200 150 -200 { lab=VDD}
N 100 -160 150 -160 { lab=ENB}
N 230 -200 280 -200 { lab=pn[0]}
N 680 -40 680 -20 { lab=GND}
N 680 -160 680 -100 { lab=ENB}
N 600 -40 600 -20 { lab=GND}
N 400 -460 400 -440 {
lab=Isup}
N 600 -240 600 -220 { lab=GND}
N 600 -320 600 -300 {
lab=VDD}
N 600 -160 600 -100 {
lab=Isup}
C {devices/lab_wire.sym} 480 -390 2 0 {name=l4 sig_type=std_logic lab=pha_dco}
C {devices/lab_wire.sym} 470 -350 2 0 {name=l5 sig_type=std_logic lab=p[1]}
C {devices/lab_wire.sym} 470 -310 2 0 {name=l6 sig_type=std_logic lab=p[2]}
C {devices/lab_wire.sym} 470 -270 2 0 {name=l7 sig_type=std_logic lab=p[3]}
C {devices/lab_wire.sym} 470 -230 2 0 {name=l8 sig_type=std_logic lab=p[4]}
C {devices/lab_wire.sym} 330 -390 0 0 {name=l9 sig_type=std_logic lab=pn[0]}
C {devices/lab_wire.sym} 330 -350 0 0 {name=l10 sig_type=std_logic lab=pn[1]}
C {devices/lab_wire.sym} 330 -310 0 0 {name=l11 sig_type=std_logic lab=pn[2]}
C {devices/lab_wire.sym} 330 -230 0 0 {name=l13 sig_type=std_logic lab=pn[4]}
C {devices/lab_wire.sym} 330 -270 0 0 {name=l12 sig_type=std_logic lab=pn[3]}
C {devices/gnd.sym} 400 -160 0 0 {name=l19 lab=GND}
C {sky130_stdcells/einvp_1.sym} 190 -200 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 140 -200 0 0 {name=l24 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 140 -160 0 0 {name=l25 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 240 -200 2 0 {name=l26 sig_type=std_logic lab=pn[0]}
C {devices/vsource.sym} 680 -70 0 0 {name=V2 value="DC=1.8 PULSE( 0 1.8 0 0.1n 0.1n 40n 1 )"}
C {devices/gnd.sym} 680 -20 0 0 {name=l27 lab=GND}
C {devices/lab_pin.sym} 680 -130 2 0 {name=l28 sig_type=std_logic lab=ENB}
C {devices/code.sym} 240 -110 0 0 {name=control only_toplevel=false value="
.control
set nobreak
set num_threads=8
set test_mode = 1
* mode = 0: operation testing    1:  frequency extraction    2:  power consumption
if ($test_mode = 0)
    TRAN 1n 16u
    plot pha_dco
    MEAS TRAN prd TRIG pha_dco VAL=0.8 RISE=20 TARG pha_dco VAL=0.8 RISE=30
    let freq = 10/prd
    echo \\"frequency: \\"
    print freq
end
if ($test_mode = 1)
    let Vlow = 1
    let Vlimit = 1.81     $ set upper bound for sweeping
    let Vsweep = 0.1      $ set step size for sweeping
    let NoPoints=(Vlimit-Vlow)/Vsweep+2    $ set number of points for sweeping
    let freq =unitvec(NoPoints)
    let Vin  =unitvec(NoPoints)
    let Vin[0]=Vlow
    let ix=0
    while Vin[ix] < Vlimit
        alter Vsup1 DC=Vin[ix]
        TRAN 1n 16u
        MEAS TRAN prd TRIG pha_dco VAL=0.8 RISE=30 TARG pha_dco VAL=0.8 RISE =40
        let freq[ix] = 10/prd
        let ix = ix+1
        Let Vin[ix] = Vin[ix-1]+Vsweep
    end
   print Vin freq
end
if ($test_mode = 2)
    save vdd @Vsup1[i] pha_dco
    TRAN 0.1n 5u
    MEAS TRAN I_vco AVG @Vsup1[i] FROM=3u TO=4u
    MEAS TRAN V_vco AVG vdd FROM=3u TO=4u
    let Power=I_vco*V_vco
    print Power
end
.endc
"
place=end}
C {devices/code_shown.sym} 400 -90 0 0 {name=RO_par only_toplevel=false value="
.param l_main=1.2
.param l_aux=1.2
.param wp=3
.param wn=2"

place=end}
C {devices/vsource.sym} 600 -70 0 0 {name=Vsup1 value="DC=1.4"}
C {devices/gnd.sym} 600 -20 0 0 {name=l22 lab=GND}
C {devices/code.sym} 110 -110 0 0 {name=lib_def
only_toplevel=false 
value=tcleval(".include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.lib $::SKYWATER_MODELS/sky130.lib.spice tt")

place=header}
C {devices/vsource.sym} 600 -270 0 0 {name=Vsup2 value="DC=1.8"}
C {devices/gnd.sym} 600 -220 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 600 -320 0 0 {name=l3 lab=VDD}
C {devices/lab_pin.sym} 600 -130 2 0 {name=l2 sig_type=std_logic lab=Isup}
C {devices/lab_pin.sym} 400 -460 2 0 {name=l14 sig_type=std_logic lab=Isup}
C {5s_cc_osc.sym} 400 -310 0 0 {name=Xro_1 l_main=l_main l_aux=l_aux wp=wp wn=wn}

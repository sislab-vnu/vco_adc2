v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
L 4 520 -540 520 0 {}
L 4 0 -540 -0 -0 {}
L 4 -0 -540 520 -540 {}
L 4 -0 0 520 -0 {}
N 350 -430 350 -410 { lab=VDD}
N 155 -340 155 -300 { lab=VDD}
N 155 -240 155 -200 { lab=GND}
N 50 -240 50 -200 { lab=GND}
N 50 -340 50 -300 { lab=Anlg_in}
N 50 -425 50 -385 { lab=GND}
N 50 -525 50 -485 { lab=ENB}
N 410 -350 470 -350 { lab=pha_vco}
N 230 -380 290 -380 { lab=Anlg_in}
N 230 -320 290 -320 { lab=ENB}
C {devices/vdd.sym} 350 -430 0 0 {name=l11 lab=VDD}
C {devices/vsource.sym} 155 -270 0 0 {name=Vsup value="DC=1.8"}
C {devices/vsource.sym} 50 -270 0 0 {name=Vground value="DC=0"}
C {devices/lab_wire.sym} 280 -380 0 0 {name=l12 sig_type=std_logic lab=Anlg_in
}
C {devices/vsource.sym} 50 -455 0 0 {name=Venb1 value="DC=0 PULSE( 0 1.8 0 0.1n 0.1n 20n 1)"}
C {devices/vdd.sym} 155 -340 0 0 {name=l13 lab=VDD}
C {devices/gnd.sym} 155 -200 0 0 {name=l14 lab=GND}
C {devices/gnd.sym} 50 -200 0 0 {name=l15 lab=GND}
C {devices/gnd.sym} 50 -385 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 50 -320 2 0 {name=l18 sig_type=std_logic lab=Anlg_in}
C {devices/lab_pin.sym} 50 -505 0 0 {name=l19 sig_type=std_logic lab=ENB}
C {devices/code.sym} 50 -130 0 0 {name=control only_toplevel=false value="
.control
set nobreak
set num_threads=4
set test_mode = 0
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
    let Vsweep = 0.2      $ set step size for sweeping
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
   print Vin freq
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
"}
C {devices/code.sym} 190 -130 0 0 {name=lib only_toplevel=false value="
** Library on VNU server
.lib /home/dkits/efabless/mpw-5/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /home/dkits/efabless/mpw-5/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
** Library on Home PC
*.lib /home/dkit/efabless/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.inc /home/dkit/efabless/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {devices/lab_wire.sym} 260 -320 0 0 {name=l1 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 420 -350 2 0 {name=l2 sig_type=std_logic lab=pha_vco}
C {devices/code_shown.sym} 330 -160 0 0 {name=parameter only_toplevel=false value="
.param mc_mm_switch=0
.param L12=4
.param Wp12=10
.param Wn12=4
.param L34=4
.param Wp34=5
.param Wn34=2
"}
C {../lib/ALib_VCO.sym} 350 -350 0 0 {name=Xvco_1 L12=\\"L12\\" Wp12=\\"Wp12\\" Wn12=\\"Wn12\\" L34=\\"L34\\" Wp34=\\"Wp34\\" Wn34=\\"Wn34\\"}

v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 0 -140 200 -140 {}
L 4 200 -140 200 160 {}
L 4 -0 160 200 160 {}
L 4 -0 -140 -0 160 {}
N 70 -50 70 50 { lab=A}
N 110 -20 110 20 { lab=Y}
N 110 80 110 120 { lab=VGND}
N 110 -110 110 -80 { lab=VDDA}
N 50 0 70 0 { lab=A}
N 110 0 140 0 { lab=Y}
N 110 50 180 50 {
lab=GND}
N 110 -50 180 -50 {
lab=VDDA}
N 180 -100 180 -50 {
lab=VDDA}
N 110 -100 180 -100 {
lab=VDDA}
C {devices/iopin.sym} 110 -110 0 0 {name=p1 lab=VDDA}
C {devices/iopin.sym} 110 120 0 0 {name=p2 lab=VGND}
C {devices/ipin.sym} 50 0 0 0 {name=p3 lab=A
}
C {devices/opin.sym} 140 0 0 0 {name=p4 lab=Y}
C {sky130_fd_pr/nfet_01v8.sym} 90 50 0 0 {name=M3
L=3.65
W=4
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} 180 50 0 0 {name=p5 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 90 -50 0 0 {name=M2
L=3.65
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}

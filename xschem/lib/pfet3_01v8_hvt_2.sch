v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 20 -120 120 -120 { lab=S}
N 20 -10 120 -10 { lab=#net1}
N 60 -50 80 -50 { lab=G}
N 70 -140 70 -120 { lab=S}
N 120 -20 120 -10 { lab=#net1}
N 20 -20 20 -10 { lab=#net1}
N 20 -120 20 -80 { lab=S}
N 120 -120 120 -80 { lab=S}
N 70 -100 70 -50 { lab=G}
N 70 -10 70 10 { lab=#net1}
N 10 -50 20 -50 { lab=S}
N 10 -80 10 -50 { lab=S}
N 10 -80 20 -80 { lab=S}
N 120 -50 130 -50 { lab=S}
N 130 -80 130 -50 { lab=S}
N 120 -80 130 -80 { lab=S}
C {devices/ipin.sym} 70 -100 0 0 {name=p2 lab=G}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 40 -50 2 0 {name=M1
L=\\"L\\"
W=\\"W\\"
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 100 -50 0 0 {name=M2
L=\\"L\\"
W=\\"W\\"
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/iopin.sym} 70 10 0 0 {name=p1 lab=D}
C {devices/iopin.sym} 70 -140 0 0 {name=p3 lab=S}

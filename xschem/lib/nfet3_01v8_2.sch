v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 130 -90 150 -90 { lab=G}
N 90 -130 90 -120 { lab=D}
N 90 -130 190 -130 { lab=D}
N 190 -130 190 -120 { lab=D}
N 90 -20 190 -20 { lab=S}
N 140 -90 140 -40 { lab=G}
N 190 -60 190 -20 { lab=S}
N 90 -60 90 -20 { lab=S}
N 140 -20 140 0 { lab=S}
N 190 -90 200 -90 { lab=S}
N 200 -90 200 -60 { lab=S}
N 190 -60 200 -60 { lab=S}
N 80 -90 90 -90 { lab=S}
N 80 -90 80 -60 { lab=S}
N 80 -60 90 -60 { lab=S}
N 140 -160 140 -130 { lab=D}
C {sky130_fd_pr/nfet_01v8.sym} 110 -90 2 0 {name=M9
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 170 -90 0 0 {name=M10
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
model=nfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} 140 -160 2 0 {name=p1 lab=D}
C {devices/iopin.sym} 140 -40 2 0 {name=p2 lab=G}
C {devices/iopin.sym} 140 0 2 0 {name=p3 lab=S}

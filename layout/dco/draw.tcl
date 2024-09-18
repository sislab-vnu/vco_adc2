# create a inv.mag
tech sky130A
grid 0.1um 0.1um
drc style drc(full)
snap user

box 0 0 10 30
paint poly

box 10 0 4 30
paint pdiffusion



# save inv.mag
save inv.mag

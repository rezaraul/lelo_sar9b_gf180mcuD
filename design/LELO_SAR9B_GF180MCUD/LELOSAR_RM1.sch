v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/iopin.sym} 0 0 0 0 {name=p0 lab=A}
C {devices/iopin.sym} 0 20 0 0 {name=p1 lab=B}
C {symbols/rm1.sym} 400 0 0 0 {name=R1
W=0.28e-6
L=0.24e-6
model=rm1
spiceprefix=X
m=1}
N 400.0 50.0 400.0 30.0 {lab=A}
C {devices/lab_pin.sym} 400.0 50.0 1 0 {name=l0 sig_type=std_logic lab=A }
N 400.0 -50.0 400.0 -30.0 {lab=B}
C {devices/lab_pin.sym} 400.0 -50.0 3 0 {name=l1 sig_type=std_logic lab=B }

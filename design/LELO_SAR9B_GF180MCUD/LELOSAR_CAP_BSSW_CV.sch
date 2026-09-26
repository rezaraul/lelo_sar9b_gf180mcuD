v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/iopin.sym} 0 0 0 0 {name=p0 lab=A}
C {devices/iopin.sym} 0 20 0 0 {name=p1 lab=B}
C {symbols/rm4.sym} 400 0 0 0 {name=R1
W=0.4e-6
L=0.38e-6
model=rm4
spiceprefix=X
m=1}
N 400.0 50.0 400.0 30.0 {lab=A}
C {devices/lab_pin.sym} 400.0 50.0 1 0 {name=l0 sig_type=std_logic lab=A }
N 400.0 -50.0 400.0 -30.0 {lab=NC0}
C {devices/lab_pin.sym} 400.0 -50.0 3 0 {name=l1 sig_type=std_logic lab=NC0 }
C {symbols/rm4.sym} 400 160 0 0 {name=R2
W=0.4e-6
L=0.38e-6
model=rm4
spiceprefix=X
m=1}
N 400.0 210.0 400.0 190.0 {lab=B}
C {devices/lab_pin.sym} 400.0 210.0 1 0 {name=l2 sig_type=std_logic lab=B }
N 400.0 110.0 400.0 130.0 {lab=NC1}
C {devices/lab_pin.sym} 400.0 110.0 3 0 {name=l3 sig_type=std_logic lab=NC1 }

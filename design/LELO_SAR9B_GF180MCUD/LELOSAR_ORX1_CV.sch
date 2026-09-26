v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/iopin.sym} 0 0 0 0 {name=p0 lab=A}
C {devices/iopin.sym} 0 20 0 0 {name=p1 lab=B}
C {devices/iopin.sym} 0 40 0 0 {name=p2 lab=Y}
C {devices/iopin.sym} 0 60 0 0 {name=p3 lab=BULKP}
C {devices/iopin.sym} 0 80 0 0 {name=p4 lab=BULKN}
C {devices/iopin.sym} 0 100 0 0 {name=p5 lab=AVDD}
C {devices/iopin.sym} 0 120 0 0 {name=p6 lab=AVSS}
C {LELO_SAR9B_GF180MCUD/LELOSAR_NRX1_CV.sym} 400 0 0 0 {name=XXA1}
N 380.0 -20.0 400.0 -20.0 {lab=A}
C {devices/lab_pin.sym} 380.0 -20.0 0 0 {name=l0 sig_type=std_logic lab=A }
N 380.0 0.0 400.0 0.0 {lab=B}
C {devices/lab_pin.sym} 380.0 0.0 0 0 {name=l1 sig_type=std_logic lab=B }
N 510.0 -10.0 490.0 -10.0 {lab=YN}
C {devices/lab_pin.sym} 510.0 -10.0 2 0 {name=l2 sig_type=std_logic lab=YN }
N 460.0 -70.0 460.0 -50.0 {lab=BULKP}
C {devices/lab_pin.sym} 460.0 -70.0 3 0 {name=l3 sig_type=std_logic lab=BULKP }
N 460.0 50.0 460.0 30.0 {lab=BULKN}
C {devices/lab_pin.sym} 460.0 50.0 1 0 {name=l4 sig_type=std_logic lab=BULKN }
N 440.0 -70.0 440.0 -50.0 {lab=AVDD}
C {devices/lab_pin.sym} 440.0 -70.0 3 0 {name=l5 sig_type=std_logic lab=AVDD }
N 440.0 50.0 440.0 30.0 {lab=AVSS}
C {devices/lab_pin.sym} 440.0 50.0 1 0 {name=l6 sig_type=std_logic lab=AVSS }
C {LELO_SAR9B_GF180MCUD/LELOSAR_IVX1_CV.sym} 400 190 0 0 {name=XXA2}
N 380.0 190.0 400.0 190.0 {lab=YN}
C {devices/lab_pin.sym} 380.0 190.0 0 0 {name=l7 sig_type=std_logic lab=YN }
N 500.0 190.0 480.0 190.0 {lab=Y}
C {devices/lab_pin.sym} 500.0 190.0 2 0 {name=l8 sig_type=std_logic lab=Y }
N 450.0 130.0 450.0 150.0 {lab=BULKP}
C {devices/lab_pin.sym} 450.0 130.0 3 0 {name=l9 sig_type=std_logic lab=BULKP }
N 450.0 250.0 450.0 230.0 {lab=BULKN}
C {devices/lab_pin.sym} 450.0 250.0 1 0 {name=l10 sig_type=std_logic lab=BULKN }
N 430.0 130.0 430.0 150.0 {lab=AVDD}
C {devices/lab_pin.sym} 430.0 130.0 3 0 {name=l11 sig_type=std_logic lab=AVDD }
N 430.0 250.0 430.0 230.0 {lab=AVSS}
C {devices/lab_pin.sym} 430.0 250.0 1 0 {name=l12 sig_type=std_logic lab=AVSS }

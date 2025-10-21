v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -4350 -2630 -4350 -2550 {lab=#net1}
N -4320 -2750 -4290 -2750 {lab=out}
N -4290 -2750 -4290 -2670 {lab=out}
N -4320 -2670 -4290 -2670 {lab=out}
N -4410 -2750 -4380 -2750 {lab=#net2}
N -4410 -2750 -4410 -2670 {lab=#net2}
N -4410 -2670 -4380 -2670 {lab=#net2}
N -4320 -2510 -4290 -2510 {lab=out}
N -4320 -2430 -4290 -2430 {lab=out}
N -4290 -2510 -4290 -2430 {lab=out}
N -4410 -2510 -4380 -2510 {lab=#net3}
N -4410 -2510 -4410 -2430 {lab=#net3}
N -4410 -2430 -4380 -2430 {lab=#net3}
N -4290 -2710 -4260 -2710 {lab=out}
N -4240 -2710 -4240 -2470 {lab=out}
N -4290 -2470 -4260 -2470 {lab=out}
N -4240 -2590 -4200 -2590 {lab=out}
N -4580 -2590 -4350 -2590 {lab=#net1}
N -4580 -2710 -4410 -2710 {lab=#net2}
N -4580 -2470 -4410 -2470 {lab=#net3}
N -4350 -2820 -4350 -2790 {lab=#net4}
N -4440 -2820 -4350 -2820 {lab=#net4}
N -4440 -2820 -4440 -2360 {lab=#net4}
N -4440 -2360 -4350 -2360 {lab=#net4}
N -4350 -2390 -4350 -2360 {lab=#net4}
N -4580 -2360 -4440 -2360 {lab=#net4}
N -4630 -2300 -4630 -2270 {lab=GND}
N -4630 -2300 -4580 -2300 {lab=GND}
N -4630 -2410 -4630 -2300 {lab=GND}
N -4630 -2410 -4580 -2410 {lab=GND}
N -4630 -2530 -4580 -2530 {lab=GND}
N -4630 -2530 -4630 -2410 {lab=GND}
N -4630 -2650 -4580 -2650 {lab=GND}
N -4630 -2650 -4630 -2530 {lab=GND}
N -4350 -2750 -4350 -2730 {lab=GND}
N -4630 -2730 -4350 -2730 {lab=GND}
N -4630 -2730 -4630 -2650 {lab=GND}
N -4350 -2510 -4350 -2490 {lab=GND}
N -4570 -2490 -4350 -2490 {lab=GND}
N -4350 -2690 -4350 -2670 {lab=#net5}
N -4350 -2450 -4350 -2430 {lab=#net5}
N -4260 -2470 -4240 -2470 {lab=out}
N -4260 -2710 -4240 -2710 {lab=out}
N -4350 -2690 -4270 -2690 {lab=#net5}
N -4270 -2690 -4270 -2390 {lab=#net5}
N -4350 -2450 -4270 -2450 {lab=#net5}
N -4580 -2300 -4270 -2300 {lab=GND}
N -4270 -2330 -4270 -2300 {lab=GND}
N -4630 -2490 -4570 -2490 {lab=GND}
C {opin.sym} -4200 -2590 0 0 {name=p5 lab=out}
C {vsource.sym} -4580 -2680 0 0 {name=V1 value= "SIN(5 5 600)" savecurrent=false}
C {vsource.sym} -4580 -2560 0 0 {name=V2 value="PULSE(0 8 0 0 0 5m 10m)" savecurrent=false}
C {vsource.sym} -4580 -2440 0 0 {name=V3 value=5 savecurrent=false}
C {vsource.sym} -4580 -2330 0 0 {name=V4 value="PULSE(8 0 0 0 0 5m 10m)" savecurrent=false}
C {gnd.sym} -4630 -2270 0 0 {name=l1 lab=GND}
C {code_shown.sym} -4130 -2700 0 0 {name=s1 only_toplevel=false value=
"
.model nmos NMOS (LEVEL=1 VTO=2.0 KP=120u LAMBDA=0.02)
.model pmos PMOS (LEVEL=1 VTO=-2.0 KP=50u LAMBDA=0.02)

.tran 0.1m 100m

.control
run
plot v(net3)+10 v(net2)+22 v(net4)+34 v(net1)+44 v(out)

.endc
"}
C {nmos4.sym} -4350 -2770 1 0 {name=M1 model=nmos w=5u l=0.18u del=0 m=1}
C {nmos4.sym} -4350 -2530 1 0 {name=M2 model=nmos w=5u l=0.18u del=0 m=1}
C {pmos4.sym} -4350 -2650 3 0 {name=M3 model=pmos w=5u l=0.18u del=0 m=1}
C {pmos4.sym} -4350 -2410 3 0 {name=M4 model=pmos w=5u l=0.18u del=0 m=1}
C {vsource.sym} -4270 -2360 0 0 {name=V5 value=8 savecurrent=false}

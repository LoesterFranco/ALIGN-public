.subckt BUFFER_VREFP2 gnd ibias sw<2> sw<1> sw<0> vdd vref vrefp
m35 net0110 net076 vrefp vdd pfet_lvt w=w0 l=l0
m34 vrefp net0116 net0121 vdd pfet_lvt w=w1 l=l0
m33 vrefp net0116 net0140 vdd pfet_lvt w=w1 l=l0
m32 net0111 net076 vrefp vdd pfet_lvt w=w0 l=l0
m106 vdd net076 vdd vdd pfet_lvt w=w2 l=l1
m29 net0116 net076 vrefp vdd pfet_lvt w=w0 l=l0
m27 net076 net076 vfb vdd pfet_lvt w=w3 l=l0
m28 vrefp net0116 net0127 vdd pfet_lvt w=w1 l=l0
m15 vfb net450 net0138 vdd pfet_lvt w=w4 l=l0
m43 net0109 net076 vrefp vdd pfet_lvt w=w0 l=l0
m58 vrefp net0116 net0125 vdd pfet_lvt w=w1 l=l0
m36 net0110 ibias net464 gnd nfet w=w5 l=l0
m31 net0111 ibias net463 gnd nfet w=w5 l=l0
m30 net0116 ibias net470 gnd nfet w=w5 l=l0
m21 net076 ibias net426 net426 nfet w=w6 l=l0
m12 net450 vref net417 gnd nfet w=w7 l=l0
m11 net416 vref net417 gnd nfet w=w7 l=l0
m10 net411 vfb net417 gnd nfet w=w7 l=l0
m8 net422 vfb net417 gnd nfet w=w7 l=l0
m5 net410 ibias net468 gnd nfet w=w6 l=l0
m4 ibias ibias net469 gnd nfet w=w6 l=l0
m3 net417 ibias net467 gnd nfet w=w8 l=l0
m1 net411 net411 net466 gnd nfet w=w6 l=l2
m6 net450 net411 net471 gnd nfet w=w6 l=l2
m0 net469 vdd gnd gnd nfet w=w9 l=l3
m2 net468 vdd gnd gnd nfet w=w10 l=l3
m7 net466 vdd gnd gnd nfet w=w10 l=l3
m9 net467 vdd gnd gnd nfet w=w9 l=l3
m16 net471 vdd gnd gnd nfet w=w10 l=l3
m17 net426 vdd gnd gnd nfet w=w10 l=l3
m18 net470 vdd gnd gnd nfet w=w11 l=l3
m19 net463 swn0 gnd gnd nfet w=w11 l=l3
m20 net464 swn1 gnd gnd nfet w=w11 l=l3
m48 swp0 sw<0> gnd gnd nfet w=w12 l=l3
m50 swn0 swp0 gnd gnd nfet w=w12 l=l3
m51 swp1 sw<1> gnd gnd nfet w=w12 l=l3
m54 swn1 swp1 gnd gnd nfet w=w12 l=l3
m55 net465 swn2 gnd gnd nfet w=w11 l=l3
m57 net0109 ibias net465 gnd nfet w=w5 l=l0
m59 swp2 sw<2> gnd gnd nfet w=w12 l=l3
m62 swn2 swp2 gnd gnd nfet w=w12 l=l3
m26 net0119 net416 net0126 vdd pfet w=w13 l=l0
m25 net416 net416 net0134 vdd pfet w=w14 l=l0
m24 net0129 net422 net0130 vdd pfet w=w13 l=l0
m23 net422 net422 net0139 vdd pfet w=w14 l=l0
m22 net410 net410 net0132 vdd pfet w=w15 l=l4
m14 net411 net410 net0119 vdd pfet w=w16 l=l0
m13 net450 net410 net0129 vdd pfet w=w16 l=l0
m37 net0132 gnd vdd vdd pfet w=w11 l=l3
m38 net0126 gnd vdd vdd pfet w=w17 l=l3
m39 net0139 gnd vdd vdd pfet w=w18 l=l3
m40 net0134 gnd vdd vdd pfet w=w18 l=l3
m41 net0130 gnd vdd vdd pfet w=w17 l=l3
m42 net0138 gnd vdd vdd pfet w=w18 l=l3
m56 net0125 swp2 vdd vdd pfet w=w17 l=l3
m44 net0127 gnd vdd vdd pfet w=w17 l=l3
m45 net0140 swp0 vdd vdd pfet w=w17 l=l3
m46 net0121 swp1 vdd vdd pfet w=w17 l=l3
m47 swp0 sw<0> vdd vdd pfet w=w19 l=l3
m49 swn0 swp0 vdd vdd pfet w=w19 l=l3
m52 swp1 sw<1> vdd vdd pfet w=w19 l=l3
m53 swn1 swp1 vdd vdd pfet w=w19 l=l3
m60 swp2 sw<2> vdd vdd pfet w=w19 l=l3
m61 swn2 swp2 vdd vdd pfet w=w19 l=l3
.ends BUFFER_VREFP2


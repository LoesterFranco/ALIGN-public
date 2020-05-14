//Verilog block level netlist file for CTDSM_CORE_NEW
//Generated by UMN for ALIGN project 


module CTDSM_CORE_NEW ( clk, clkb1, clkb2, ibias1, ibias2, outm, outp, rstb, vdda, vddd, vim, vip ); 
input clk, clkb1, clkb2, ibias1, ibias2, outm, outp, rstb, vdda, vddd, vim, vip;

Gm1_v5_Practice xi160 ( .ibias(ibias1), .vim(vo1m), .vip(vo1p), .vom(vo2p), .vop(vo2m) ); 
FIR_DAC xi154 ( .clk(clkb1), .in(net062), .r1(vo3m), .r2(vo3p), .rstb(rstb) ); 
FIR_DAC xi152 ( .clk(clk), .in(net052), .r1(vo1p), .r2(vo1p), .rstb(rstb) ); 
Dcap_NMOS_n12_X1_Y1 m1 ( .B(vss), .S(vss), .G(clkb2) ); 
Dcap_NMOS_n12_X1_Y1 m0 ( .B(vss), .S(vss), .G(clkb1) ); 
C1 xi164 ( .a(vo1p), .b(vo1m) ); 
SR_Latch xi128 ( .q(outm), .qb(outp), .r(net072), .s(net071) ); 
Cap_10f c6 ( .PLUS(vo3m), .MINUS(vo3p) ); 
Cap_10f c3 ( .PLUS(net073), .MINUS(net074) ); 
Res_100 r16 ( .PLUS(vip), .MINUS(vo1p) ); 
Res_100 r51 ( .PLUS(net073), .MINUS(vo2m) ); 
Res_100 r25 ( .PLUS(net074), .MINUS(vo2p) ); 
Res_100 r47 ( .PLUS(vim), .MINUS(vo1m) ); 
Gm1_v5_Practice xi161 ( .ibias(ibias2), .vim(vo2m), .vip(vo2p), .vom(vo3p), .vop(vo3m) ); 
DFCNQD2BWP xi88 ( .d(net062), .cp(clk), .cdn(rstb), .q(net052) ); 
DFCNQD2BWP xi97 ( .d(outp), .cp(clkb1), .cdn(rstb), .q(net062) ); 
DFCNQD2BWP xi92 ( .d(net063), .cp(clk), .cdn(rstb), .q(net051) ); 
DFCNQD2BWP xi99 ( .d(outm), .cp(clkb2), .cdn(rstb), .q(net063) ); 
myComparator_v3 xi146 ( .clk(clk), .gnd(vss), .outm(net072), .outp(net071), ._net0(vo3p), ._net1(vo3m) ); 
FIR_DAC xi153 ( .clk(clk), .in(net051), .r1(vo1m), .r2(vo1m), .rstb(rstb) ); 
FIR_DAC xi155 ( .clk(clkb2), .in(net063), .r1(vo3p), .r2(vo3m), .rstb(rstb) ); 

endmodule

module CMB_PMOS_2 ( B, DA, DB, DC, S ); 
input B, DA, DB, DC, S;

Switch_PMOS_n12_X1_Y1 M2 ( .B(B), .D(DC), .G(DA), .S(S) ); 
SCM_PMOS_n12_X1_Y1 M0_M1 ( .B(B), .DA(DA), .S(S), .DB(DB) ); 

endmodule

module Gm1_v5_Practice ( ibias, vim, vip, vom, vop ); 
input ibias, vim, vip, vom, vop;

Switch_NMOS_n12_X1_Y1 xm8 ( .B(vss), .D(net074), .G(ntail1), .S(vss) ); 
Dcap_PMOS_n12_X1_Y1 xm2 ( .B(vdd), .S(vdd), .G(ibias) ); 
Res_100 r12 ( .PLUS(ntail1), .MINUS(vop) ); 
Res_100 r11 ( .PLUS(ntail1), .MINUS(vom) ); 
Dcap_NMOS_n12_X1_Y1 xm3 ( .B(vss), .S(vss), .G(ntail1) ); 
CMB_PMOS_2 xm12_xm14_xm11 ( .B(vdd), .DA(ibias), .S(vdd), .DB(vop), .DC(vom) ); 
DP_NMOS_n12_X1_Y1 xm27_xm26 ( .B(net074), .DA(vom), .GA(vip), .S(net074), .DB(vop), .GB(vim) ); 
Cap_cc c21_c22 ( .MINUS0(ntail1), .PLUS0(vom), .MINUS1(ntail1), .PLUS1(vop) ); 

endmodule

module FIR_DAC ( clk, in, r1, r2, rstb ); 
input clk, in, r1, r2, rstb;

Res_100 r19 ( .PLUS(net3), .MINUS(r1) ); 
Res_100 r48 ( .PLUS(in), .MINUS(r2) ); 
DFCNQD2BWP xi86 ( .d(in), .cp(clk), .cdn(rstb), .q(net3) ); 

endmodule

module DFCNQD2BWP ( cdn, cp, d, q ); 
input cdn, cp, d, q;

Switch_NMOS_n12_X1_Y1 m0 ( .B(vss), .D(net63), .G(cp), .S(vss) ); 
Switch_NMOS_n12_X1_Y1 mi4 ( .B(vss), .D(net61), .G(net63), .S(vss) ); 
Switch_NMOS_n12_X1_Y1 m1 ( .B(vss), .D(net97), .G(cdn), .S(net60) ); 
Switch_NMOS_n12_X1_Y1 m2 ( .B(vss), .D(net123), .G(net95), .S(vss) ); 
Switch_NMOS_n12_X1_Y1 mi29 ( .B(vss), .D(net49), .G(net63), .S(net17) ); 
Switch_NMOS_n12_X1_Y1 mi15 ( .B(vss), .D(net123), .G(net81), .S(net49) ); 
Switch_NMOS_n12_X1_Y1 m3 ( .B(vss), .D(net60), .G(net49), .S(vss) ); 
Switch_NMOS_n12_X1_Y1 m4 ( .B(vss), .D(net97), .G(cdn), .S(net21) ); 
Switch_NMOS_n12_X1_Y1 m5 ( .B(vss), .D(net81), .G(net63), .S(vss) ); 
Switch_NMOS_n12_X1_Y1 mi5 ( .B(vss), .D(net95), .G(d), .S(net61) ); 
Switch_NMOS_n12_X1_Y1 mi49 ( .B(vss), .D(net25), .G(cdn), .S(vss) ); 
Switch_NMOS_n12_X1_Y1 m6 ( .B(vss), .D(net21), .G(net49), .S(vss) ); 
Switch_NMOS_n12_X1_Y1 mi26 ( .B(vss), .D(net17), .G(net97), .S(vss) ); 
Switch_NMOS_n12_X1_Y1 mi48 ( .B(vss), .D(net13), .G(net123), .S(net25) ); 
Switch_NMOS_n12_X1_Y1 m7 ( .B(vss), .D(q), .G(net97), .S(vss) ); 
Switch_NMOS_n12_X1_Y1 m8 ( .B(vss), .D(q), .G(net97), .S(vss) ); 
Switch_NMOS_n12_X1_Y1 mi47 ( .B(vss), .D(net95), .G(net81), .S(net13) ); 
Switch_PMOS_n12_X1_Y1 mi33 ( .B(vdd), .D(net80), .G(net97), .S(vdd) ); 
Switch_PMOS_n12_X1_Y1 m9 ( .B(vdd), .D(q), .G(net97), .S(vdd) ); 
Switch_PMOS_n12_X1_Y1 m10 ( .B(vdd), .D(net97), .G(net49), .S(vdd) ); 
Switch_PMOS_n12_X1_Y1 mi43 ( .B(vdd), .D(net101), .G(net123), .S(vdd) ); 
Switch_PMOS_n12_X1_Y1 mi6 ( .B(vdd), .D(net95), .G(d), .S(net120) ); 
Switch_PMOS_n12_X1_Y1 m11 ( .B(vdd), .D(q), .G(net97), .S(vdd) ); 
Switch_PMOS_n12_X1_Y1 m12 ( .B(vdd), .D(net97), .G(net49), .S(vdd) ); 
Switch_PMOS_n12_X1_Y1 m13 ( .B(vdd), .D(net97), .G(cdn), .S(vdd) ); 
Switch_PMOS_n12_X1_Y1 mi44 ( .B(vdd), .D(net101), .G(cdn), .S(vdd) ); 
Switch_PMOS_n12_X1_Y1 m14 ( .B(vdd), .D(net97), .G(cdn), .S(vdd) ); 
Switch_PMOS_n12_X1_Y1 m15 ( .B(vdd), .D(net123), .G(net95), .S(vdd) ); 
Switch_PMOS_n12_X1_Y1 m16 ( .B(vdd), .D(net63), .G(cp), .S(vdd) ); 
Switch_PMOS_n12_X1_Y1 mi16 ( .B(vdd), .D(net123), .G(net63), .S(net49) ); 
Switch_PMOS_n12_X1_Y1 m17 ( .B(vdd), .D(net81), .G(net63), .S(vdd) ); 
Switch_PMOS_n12_X1_Y1 mi32 ( .B(vdd), .D(net49), .G(net81), .S(net80) ); 
Switch_PMOS_n12_X1_Y1 mi45 ( .B(vdd), .D(net95), .G(net63), .S(net101) ); 
Switch_PMOS_n12_X1_Y1 mi7 ( .B(vdd), .D(net120), .G(net81), .S(vdd) ); 

endmodule

module C1 ( a, b ); 
input a, b;

Cap_40f c0<3> ( .PLUS(a), .MINUS(b) ); 

endmodule

module SR_Latch ( q, qb, r, s ); 
input q, qb, r, s;

NR2D8BWP xi1 ( .a1(r), .a2(qb), .zn(q) ); 
NR2D8BWP xi0 ( .a1(s), .a2(q), .zn(qb) ); 

endmodule

module NR2D8BWP ( a1, a2, zn ); 
input a1, a2, zn;

Switch_NMOS_n12_X1_Y1 m0 ( .B(vss), .D(zn), .G(a2), .S(vss) ); 
Switch_NMOS_n12_X1_Y1 m1 ( .B(vss), .D(zn), .G(a1), .S(vss) ); 
Switch_PMOS_n12_X1_Y1 m2 ( .B(vdd), .D(net13), .G(a2), .S(vdd) ); 
Switch_PMOS_n12_X1_Y1 m3 ( .B(vdd), .D(zn), .G(a1), .S(net13) ); 

endmodule

module dummy_hier_crossp ( clk, crossp, outm ); 
input clk, crossp, outm;

Switch_PMOS_n12_X1_Y1 xm12 ( .B(vdd), .D(crossp), .G(clk), .S(vdd) ); 
Switch_PMOS_n12_X1_Y1 xm8 ( .B(vdd), .D(outm), .G(crossp), .S(vdd) ); 

endmodule

module dummy_hier_crossn ( clk, crossn, outp ); 
input clk, crossn, outp;

Switch_PMOS_n12_X1_Y1 xm1 ( .B(vdd), .D(crossn), .G(clk), .S(vdd) ); 
Switch_PMOS_n12_X1_Y1 xm15 ( .B(vdd), .D(outp), .G(crossn), .S(vdd) ); 

endmodule

module myComparator_v3 ( _net0, _net1, clk, gnd, outm, outp ); 
input _net0, _net1, clk, gnd, outm, outp;

Dcap_NMOS_n12_X1_Y1 xm0 ( .B(gnd), .S(gnd), .G(intern) ); 
Dcap_NMOS_n12_X1_Y1 xm22 ( .B(gnd), .S(gnd), .G(interp) ); 
Switch_NMOS_n12_X1_Y1 xm7 ( .B(gnd), .D(net069), .G(clk), .S(gnd) ); 
Switch_PMOS_n12_X1_Y1 xm18 ( .B(vdd), .D(intern), .G(clk), .S(vdd) ); 
Switch_PMOS_n12_X1_Y1 xm2 ( .B(vdd), .D(interp), .G(clk), .S(vdd) ); 
CCP_PMOS_S_n12_X1_Y1 xm13_xm14 ( .B(vdd), .DA(crossp), .DB(crossn), .S(vdd) ); 
CCP_NMOS_n12_X1_Y1 xm3_xm4 ( .B(gnd), .DA(crossp), .DB(crossn), .SA(interp), .SB(intern) ); 
DP_NMOS_n12_X1_Y1 xm6_xm5 ( .B(gnd), .DA(interp), .GA(_net1), .S(net069), .DB(intern), .GB(_net0) ); 
DP_NMOS_n12_X1_Y1 xm16_xm17 ( .B(gnd), .DA(outm), .GA(crossp), .S(gnd), .DB(outp), .GB(crossn) ); 
dummy_hier_crossp xm12_xm8 ( .clk(clk), .crossp(crossp), .outm(outm) ); 
dummy_hier_crossn xm1_xm15 ( .clk(clk), .crossn(crossn), .outp(outp) ); 

endmodule

`celldefine
module global_power;
supply0 vss;
supply1 vdd;
endmodule
`endcelldefine

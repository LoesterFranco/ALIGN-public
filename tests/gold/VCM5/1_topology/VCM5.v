//Verilog block level netlist file for VCM5
//Generated by UMN for ALIGN project 


module DP_PAIR_PMOS ( B, DA, DB, DC, DD, GB, S ); 
input B, DA, DB, DC, DD, GB, S;

SCM_PMOS_n12_X1_Y1 M0_M1 ( .B(B), .DA(DC), .S(S), .DB(DA) ); 
CMC_PMOS_S_n12_X1_Y1 M3_M2 ( .B(B), .DA(DD), .G(GB), .S(S), .DB(DB) ); 

endmodule

module CMB_PMOS_2 ( B, DA, DB, DC, S ); 
input B, DA, DB, DC, S;

Switch_PMOS_n12_X1_Y1 M2 ( .B(B), .D(DC), .G(DA), .S(S) ); 
SCM_PMOS_n12_X1_Y1 M0_M1 ( .B(B), .DA(DA), .S(S), .DB(DB) ); 

endmodule

module LSB_NMOS_2 ( B, DA, DB, DC, SA, SB, SC ); 
input B, DA, DB, DC, SA, SB, SC;

Switch_NMOS_n12_X1_Y1 M2 ( .B(B), .D(DC), .G(DA), .S(SC) ); 
LS_NMOS_n12_X1_Y1 M0_M1 ( .B(B), .DA(DA), .SA(SA), .DB(DB), .SB(SB) ); 

endmodule

module VCM5 ( ibias, vcm, vout ); 
input ibias, vcm, vout;

DP_PAIR_PMOS xm20_xm21_xm19_xm18 ( .B(vdd), .DC(vout), .S(net022), .DA(net80), .DB(net84), .GB(vcm), .DD(net77) ); 
CMB_PMOS_2 xm29_xm30_xm17 ( .B(vdd), .DA(ibias), .S(vdd), .DB(net039), .DC(net022) ); 
SCM_NMOS_n12_X1_Y1 xm22_xm25 ( .B(gnd), .DA(net80), .S(gnd), .DB(net91) ); 
SCM_NMOS_n12_X1_Y1 xm23_xm24 ( .B(gnd), .DA(net84), .S(gnd), .DB(net92) ); 
SCM_PMOS_n12_X1_Y1 xm33_xm32 ( .B(vdd), .DA(net77), .S(vdd), .DB(vout) ); 
LSB_NMOS_2 xm31_xm26_xm27 ( .B(gnd), .DA(net039), .SA(gnd), .DB(vout), .SB(net92), .DC(net77), .SC(net91) ); 

endmodule

`celldefine
module global_power;
supply0 gnd;
supply1 vdd;
endmodule
`endcelldefine

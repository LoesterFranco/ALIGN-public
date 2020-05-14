//Verilog block level netlist file for Sanitized_Coarse_SAR_Logic
//Generated by UMN for ALIGN project 


module dummy_hier_CK<8> ( CK<8>, CK<9>, CKSBTB, CPY, DVDD, DVSS, VALIDC ); 
input CK<8>, CK<9>, CKSBTB, CPY, DVDD, DVSS, VALIDC;

DFFRB_B_V6_HVT XI215 ( .VALIDC(DVSS), .CK<9>(DVDD), .DVDD(CK<8>), .DVSS(CK<9>), .CK<8>(VALIDC), .CKSBTB(CKSBTB) ); 
DFFRB_B_V6_HVT XI216 ( .VALIDC(DVSS), .CK<8>(DVDD), .DVDD(CK<8>), .DVSS(VALIDC), .CPY(CKSBTB), .CKSBTB(CPY) ); 

endmodule

module dummy_hier_CK<10> ( CK<10>, CK<11>, CK<9>, CKSBTB, DVDD, DVSS, VALIDC ); 
input CK<10>, CK<11>, CK<9>, CKSBTB, DVDD, DVSS, VALIDC;

DFFRB_B_V6_HVT XI213 ( .VALIDC(DVSS), .CK<11>(DVDD), .DVDD(CK<11>), .DVSS(CK<10>), .CK<10>(VALIDC), .CKSBTB(CKSBTB) ); 
DFFRB_B_V6_HVT XI214 ( .VALIDC(DVSS), .CK<10>(DVDD), .DVDD(CK<10>), .DVSS(VALIDC), .CK<9>(CKSBTB), .CKSBTB(CK<9>) ); 

endmodule

module dummy_hier_TGC<11> ( CK<11>, CKSBT, DVDD, DVSS, SWC<11>, TGC<11> ); 
input CK<11>, CKSBT, DVDD, DVSS, SWC<11>, TGC<11>;

NR2D1LVT XI107 ( .TGC<11>(DVSS), .CKSBT(DVDD), .SWC<11>(TGC<11>), .DVDD(SWC<11>), .DVSS(CKSBT) ); 
NR2D1LVT XI175 ( .CK<11>(DVSS), .CKSBT(DVDD), .TGC<11>(TGC<11>), .DVDD(CKSBT), .DVSS(CK<11>) ); 

endmodule

module dummy_hier_TGC<8> ( CK<8>, CKSBT, DVDD, DVSS, SWC<8>, TGC<8> ); 
input CK<8>, CKSBT, DVDD, DVSS, SWC<8>, TGC<8>;

NR2D1LVT XI101 ( .TGC<8>(DVSS), .CKSBT(DVDD), .SWC<8>(SWC<8>), .DVDD(TGC<8>), .DVSS(CKSBT) ); 
NR2D1LVT XI156 ( .CK<8>(DVSS), .CKSBT(DVDD), .TGC<8>(TGC<8>), .DVDD(CKSBT), .DVSS(CK<8>) ); 

endmodule

module dummy_hier_TGC<10> ( CK<10>, CKSBT, DVDD, DVSS, SWC<10>, TGC<10> ); 
input CK<10>, CKSBT, DVDD, DVSS, SWC<10>, TGC<10>;

NR2D1LVT XI171 ( .CK<10>(DVSS), .CKSBT(DVDD), .TGC<10>(CK<10>), .DVDD(TGC<10>), .DVSS(CKSBT) ); 
NR2D1LVT XI105 ( .TGC<10>(DVSS), .CKSBT(DVDD), .SWC<10>(TGC<10>), .DVDD(CKSBT), .DVSS(SWC<10>) ); 

endmodule

module dummy_hier_TGC<9> ( CK<9>, CKSBT, DVDD, DVSS, SWC<9>, TGC<9> ); 
input CK<9>, CKSBT, DVDD, DVSS, SWC<9>, TGC<9>;

NR2D1LVT XI39 ( .TGC<9>(DVSS), .CKSBT(DVDD), .SWC<9>(TGC<9>), .DVDD(SWC<9>), .DVSS(CKSBT) ); 
NR2D1LVT XI159 ( .CK<9>(DVSS), .CKSBT(DVDD), .TGC<9>(TGC<9>), .DVDD(CKSBT), .DVSS(CK<9>) ); 

endmodule

module Sanitized_Coarse_SAR_Logic ( CK<10>, CK<11>, CK<8>, CK<9>, CKSBT, CKSBTB, CPY, D<10>, D<11>, D<8>, D<9>, DB<10>, DB<11>, DB<8>, DB<9>, DF<10>, DF<11>, DF<7>, DF<8>, DF<9>, DFB<10>, DFB<11>, DFB<7>, DFB<8>, DFB<9>, DVDD, DVSS, OUTNC, OUTPC, ST_FINE, SWC<10>, SWC<11>, SWC<8>, SWC<9>, SWCB<10>, SWCB<11>, SWCB<8>, SWCB<9>, TGC<10>, TGC<11>, TGC<8>, TGC<9>, TGCB<10>, TGCB<11>, TGCB<8>, TGCB<9>, VALIDC ); 
input CK<10>, CK<11>, CK<8>, CK<9>, CKSBT, CKSBTB, CPY, D<10>, D<11>, D<8>, D<9>, DB<10>, DB<11>, DB<8>, DB<9>, DF<10>, DF<11>, DF<7>, DF<8>, DF<9>, DFB<10>, DFB<11>, DFB<7>, DFB<8>, DFB<9>, DVDD, DVSS, OUTNC, OUTPC, ST_FINE, SWC<10>, SWC<11>, SWC<8>, SWC<9>, SWCB<10>, SWCB<11>, SWCB<8>, SWCB<9>, TGC<10>, TGC<11>, TGC<8>, TGC<9>, TGCB<10>, TGCB<11>, TGCB<8>, TGCB<9>, VALIDC;

DFF_HVT_Coarse XI228 ( .CK(CPY), .D(OUTNC), .DGND(DVSS), .DVDD(DVDD), .Q(net057), .QN(net018) ); 
DFF_HVT_Coarse XI227 ( .CK(CK<8>), .D(OUTNC), .DGND(DVSS), .DVDD(DVDD), .Q(DB<8>), .QN(D<8>) ); 
DFF_HVT_Coarse XI229 ( .CK(CK<11>), .D(OUTPC), .DGND(DVSS), .DVDD(DVDD), .Q(D<11>), .QN(DB<11>) ); 
DFF_HVT_Coarse XI230 ( .CK(CK<10>), .D(OUTPC), .DGND(DVSS), .DVDD(DVDD), .Q(D<10>), .QN(DB<10>) ); 
DFF_HVT_Coarse XI231 ( .CK(CK<9>), .D(OUTNC), .DGND(DVSS), .DVDD(DVDD), .Q(DB<9>), .QN(D<9>) ); 
INVD1LVT XI18 ( .I(net018), .ZN(DFB<7>), .VDD(DVDD), .VSS(DVSS) ); 
INVD1LVT XI17 ( .I(net057), .ZN(DF<7>), .VDD(DVDD), .VSS(DVSS) ); 
INVD1LVT XI16 ( .I(DB<8>), .ZN(DF<8>), .VDD(DVDD), .VSS(DVSS) ); 
INVD1LVT XI15 ( .I(D<8>), .ZN(DFB<8>), .VDD(DVDD), .VSS(DVSS) ); 
INVD1LVT XI14 ( .I(D<9>), .ZN(DFB<9>), .VDD(DVDD), .VSS(DVSS) ); 
INVD1LVT XI13 ( .I(DB<9>), .ZN(DF<9>), .VDD(DVDD), .VSS(DVSS) ); 
INVD1LVT XI12 ( .I(DB<10>), .ZN(DF<10>), .VDD(DVDD), .VSS(DVSS) ); 
INVD1LVT XI11 ( .I(D<10>), .ZN(DFB<10>), .VDD(DVDD), .VSS(DVSS) ); 
INVD1LVT XI173 ( .I(TGC<11>), .ZN(TGCB<11>), .VDD(DVDD), .VSS(DVSS) ); 
INVD1LVT XI31 ( .I(SWC<11>), .ZN(SWCB<11>), .VDD(DVDD), .VSS(DVSS) ); 
INVD1LVT XI104 ( .I(SWC<10>), .ZN(SWCB<10>), .VDD(DVDD), .VSS(DVSS) ); 
INVD1LVT XI170 ( .I(TGC<10>), .ZN(TGCB<10>), .VDD(DVDD), .VSS(DVSS) ); 
INVD1LVT XI158 ( .I(TGC<9>), .ZN(TGCB<9>), .VDD(DVDD), .VSS(DVSS) ); 
INVD1LVT XI102 ( .I(SWC<9>), .ZN(SWCB<9>), .VDD(DVDD), .VSS(DVSS) ); 
INVD1LVT XI100 ( .I(SWC<8>), .ZN(SWCB<8>), .VDD(DVDD), .VSS(DVSS) ); 
INVD1LVT XI155 ( .I(TGC<8>), .ZN(TGCB<8>), .VDD(DVDD), .VSS(DVSS) ); 
INVD1LVT XI9 ( .I(D<11>), .ZN(DFB<11>), .VDD(DVDD), .VSS(DVSS) ); 
INVD1LVT XI10 ( .I(DB<11>), .ZN(DF<11>), .VDD(DVDD), .VSS(DVSS) ); 
TIEHLVT XI8 ( .Z(net054), .VDD(DVDD), .VSS(DVSS) ); 
DFFRB_B_V6_HVT XI53 ( .CK(VALIDC), .D(net133), .DVDD(DVDD), .DVSS(DVSS), .Q(ST_FINE), .RST(CKSBTB) ); 
DFFRB_B_V6_HVT XI54 ( .CK(VALIDC), .D(CPY), .DVDD(DVDD), .DVSS(DVSS), .Q(net133), .RST(CKSBTB) ); 
DFFRB_B_V6_HVT XI212 ( .CK(VALIDC), .D(net054), .DVDD(DVDD), .DVSS(DVSS), .Q(CK<11>), .RST(CKSBTB) ); 
dummy_hier_CK<8> XI215_XI216 ( .VALIDC(VALIDC), .CK<8>(CK<8>), .DVDD(DVDD), .CKSBTB(CKSBTB), .CK<9>(CK<9>), .DVSS(DVSS), .CPY(CPY) ); 
dummy_hier_CK<10> XI213_XI214 ( .VALIDC(VALIDC), .DVDD(DVDD), .CKSBTB(CKSBTB), .DVSS(DVSS), .CK<10>(CK<10>), .CK<11>(CK<11>), .CK<9>(CK<9>) ); 
dummy_hier_TGC<11> XI107_XI175 ( .CKSBT(CKSBT), .DVDD(DVDD), .DVSS(DVSS), .TGC<11>(TGC<11>), .SWC<11>(SWC<11>), .CK<11>(CK<11>) ); 
dummy_hier_TGC<8> XI101_XI156 ( .CKSBT(CKSBT), .DVDD(DVDD), .DVSS(DVSS), .SWC<8>(SWC<8>), .TGC<8>(TGC<8>), .CK<8>(CK<8>) ); 
dummy_hier_TGC<10> XI171_XI105 ( .CKSBT(CKSBT), .DVDD(DVDD), .DVSS(DVSS), .CK<10>(CK<10>), .TGC<10>(TGC<10>), .SWC<10>(SWC<10>) ); 
dummy_hier_TGC<9> XI39_XI159 ( .SWC<9>(SWC<9>), .CKSBT(CKSBT), .DVDD(DVDD), .DVSS(DVSS), .TGC<9>(TGC<9>), .CK<9>(CK<9>) ); 

endmodule

module DFF_HVT_Coarse ( CK, D, DGND, DVDD, Q, QN ); 
input CK, D, DGND, DVDD, Q, QN;

Switch_NMOS_n12_X1_Y1 MM2 ( .B(DGND), .D(QN), .G(CK), .S(NET4) ); 
Switch_NMOS_n12_X1_Y1 MM7 ( .B(DGND), .D(Q), .G(QN), .S(DGND) ); 
Switch_NMOS_n12_X1_Y1 MM4 ( .B(DGND), .D(NET2), .G(N1), .S(NET3) ); 
Switch_NMOS_n12_X1_Y1 MM3 ( .B(DGND), .D(NET4), .G(NET2), .S(DGND) ); 
Switch_PMOS_n12_X1_Y1 MM12 ( .B(DVDD), .D(Q), .G(QN), .S(DVDD) ); 
Switch_PMOS_n12_X1_Y1 MM11 ( .B(DVDD), .D(QN), .G(NET2), .S(DVDD) ); 
Switch_PMOS_n12_X1_Y1 MM15 ( .B(DVDD), .D(N1), .G(CK), .S(NET1) ); 
DP_NMOS_n12_X1_Y1 MM13_MM14 ( .B(DGND), .DA(N1), .GA(D), .S(DGND), .DB(NET3), .GB(CK) ); 
DP_PMOS_n12_X1_Y1 MM8_MM9 ( .B(DVDD), .DA(NET1), .GA(D), .S(DVDD), .DB(NET2), .GB(CK) ); 

endmodule

module INVD1LVT ( I, VDD, VSS, ZN ); 
input I, VDD, VSS, ZN;

Switch_NMOS_n12_X1_Y1 MMU1_M_u2 ( .B(VSS), .D(ZN), .G(I), .S(VSS) ); 
Switch_PMOS_n12_X1_Y1 MMU1_M_u3 ( .B(VDD), .D(ZN), .G(I), .S(VDD) ); 

endmodule

module TIEHLVT ( VDD, VSS, Z ); 
input VDD, VSS, Z;

DCL_NMOS_n12_X1_Y1 MM_u2 ( .B(VSS), .D(net7), .S(VSS) ); 
Switch_PMOS_n12_X1_Y1 MM_u1 ( .B(VDD), .D(Z), .G(net7), .S(VDD) ); 

endmodule

module NR2D1LVT ( A1, A2, VDD, VSS, ZN ); 
input A1, A2, VDD, VSS, ZN;

Switch_NMOS_n12_X1_Y1 MMI1_M_u3 ( .B(VSS), .D(ZN), .G(A2), .S(VSS) ); 
Switch_NMOS_n12_X1_Y1 MMI1_M_u4 ( .B(VSS), .D(ZN), .G(A1), .S(VSS) ); 
Switch_PMOS_n12_X1_Y1 MMI1_M_u1 ( .B(VDD), .D(net13), .G(A2), .S(VDD) ); 
Switch_PMOS_n12_X1_Y1 MMI1_M_u2 ( .B(VDD), .D(ZN), .G(A1), .S(net13) ); 

endmodule

module DFFRB_B_V6_HVT ( CK, D, DVDD, DVSS, Q, RST ); 
input CK, D, DVDD, DVSS, Q, RST;

Switch_PMOS_n12_X1_Y1 MM8 ( .B(DVDD), .D(NET1), .G(D), .S(DVDD) ); 
Switch_PMOS_n12_X1_Y1 MM10 ( .B(DVDD), .D(NET2), .G(CK), .S(net58) ); 
Switch_PMOS_n12_X1_Y1 MM19 ( .B(DVDD), .D(net58), .G(RSTB), .S(DVDD) ); 
Switch_PMOS_n12_X1_Y1 MM15 ( .B(DVDD), .D(net06), .G(RST), .S(DVDD) ); 
Switch_PMOS_n12_X1_Y1 MM9 ( .B(DVDD), .D(M1), .G(CK), .S(NET1) ); 
Switch_PMOS_n12_X1_Y1 MM14 ( .B(DVDD), .D(Q), .G(net06), .S(DVDD) ); 
Switch_PMOS_n12_X1_Y1 MM12 ( .B(DVDD), .D(net06), .G(NET2), .S(DVDD) ); 
Switch_PMOS_n12_X1_Y1 MM0 ( .B(DVDD), .D(RSTB), .G(RST), .S(DVDD) ); 
Switch_NMOS_n12_X1_Y1 MM16 ( .B(DVSS), .D(NET3), .G(CK), .S(DVSS) ); 
Switch_NMOS_n12_X1_Y1 MM13 ( .B(DVSS), .D(NET4), .G(NET2), .S(DVSS) ); 
Switch_NMOS_n12_X1_Y1 MM7 ( .B(DVSS), .D(Q), .G(net06), .S(DVSS) ); 
Switch_NMOS_n12_X1_Y1 MM6 ( .B(DVSS), .D(net06), .G(CK), .S(NET4) ); 
Switch_NMOS_n12_X1_Y1 MM17 ( .B(DVSS), .D(M1), .G(D), .S(DVSS) ); 
Switch_NMOS_n12_X1_Y1 MM5 ( .B(DVSS), .D(NET2), .G(RSTB), .S(DVSS) ); 
Switch_NMOS_n12_X1_Y1 MM4 ( .B(DVSS), .D(NET2), .G(M1), .S(NET3) ); 
Switch_NMOS_n12_X1_Y1 MM18 ( .B(DVSS), .D(RSTB), .G(RST), .S(DVSS) ); 

endmodule

//Verilog block level netlist file for Sanitized_ResTune_Configure
//Generated by UMN for ALIGN project 


module Sanitized_ResTune_Configure ( INPH, INPHASE<0>, INPHASE<1>, INPHASE<2>, INPHASE<3>, INPHASE<4>, INPHASE<5>, INPHASE<6>, INPHASE<7>, OUTPH, OUTPHASE<0>, OUTPHASE<1>, OUTPHASE<2>, OUTPHASE<3>, OUTPHASE<4>, OUTPHASE<5>, OUTPHASE<6>, OUTPHASE<7>, RESEN<0>, RESEN<1>, RESEN<2>, RESEN<3>, RESEN<4>, RESEN<5>, RESEN<6>, RESEN<7> ); 
input INPH, INPHASE<0>, INPHASE<1>, INPHASE<2>, INPHASE<3>, INPHASE<4>, INPHASE<5>, INPHASE<6>, INPHASE<7>, OUTPH, OUTPHASE<0>, OUTPHASE<1>, OUTPHASE<2>, OUTPHASE<3>, OUTPHASE<4>, OUTPHASE<5>, OUTPHASE<6>, OUTPHASE<7>, RESEN<0>, RESEN<1>, RESEN<2>, RESEN<3>, RESEN<4>, RESEN<5>, RESEN<6>, RESEN<7>;

DCAP8LVT XI3<1> (  ); 
DCAP8LVT XI3<0> (  ); 
DCAP16LVT XI2<7> (  ); 
DCAP16LVT XI2<6> (  ); 
DCAP16LVT XI2<5> (  ); 
DCAP16LVT XI2<4> (  ); 
DCAP16LVT XI2<3> (  ); 
DCAP16LVT XI2<2> (  ); 
DCAP16LVT XI2<1> (  ); 
DCAP16LVT XI2<0> (  ); 
DCAP32LVT XI4<3> (  ); 
DCAP32LVT XI4<2> (  ); 
DCAP32LVT XI4<1> (  ); 
DCAP32LVT XI4<0> (  ); 
BUFTD16LVT XI1<7> ( .I(INPH), .OE(RESEN<7>), .Z(INPHASE<7>) ); 
BUFTD16LVT XI1<6> ( .I(INPH), .OE(RESEN<6>), .Z(INPHASE<6>) ); 
BUFTD16LVT XI1<5> ( .I(INPH), .OE(RESEN<5>), .Z(INPHASE<5>) ); 
BUFTD16LVT XI1<4> ( .I(INPH), .OE(RESEN<4>), .Z(INPHASE<4>) ); 
BUFTD16LVT XI1<3> ( .I(INPH), .OE(RESEN<3>), .Z(INPHASE<3>) ); 
BUFTD16LVT XI1<2> ( .I(INPH), .OE(RESEN<2>), .Z(INPHASE<2>) ); 
BUFTD16LVT XI1<1> ( .I(INPH), .OE(RESEN<1>), .Z(INPHASE<1>) ); 
BUFTD16LVT XI1<0> ( .I(INPH), .OE(RESEN<0>), .Z(INPHASE<0>) ); 
BUFTD16LVT XI0<7> ( .I(OUTPH), .OE(RESEN<7>), .Z(OUTPHASE<7>) ); 
BUFTD16LVT XI0<6> ( .I(OUTPH), .OE(RESEN<6>), .Z(OUTPHASE<6>) ); 
BUFTD16LVT XI0<5> ( .I(OUTPH), .OE(RESEN<5>), .Z(OUTPHASE<5>) ); 
BUFTD16LVT XI0<4> ( .I(OUTPH), .OE(RESEN<4>), .Z(OUTPHASE<4>) ); 
BUFTD16LVT XI0<3> ( .I(OUTPH), .OE(RESEN<3>), .Z(OUTPHASE<3>) ); 
BUFTD16LVT XI0<2> ( .I(OUTPH), .OE(RESEN<2>), .Z(OUTPHASE<2>) ); 
BUFTD16LVT XI0<1> ( .I(OUTPH), .OE(RESEN<1>), .Z(OUTPHASE<1>) ); 
BUFTD16LVT XI0<0> ( .I(OUTPH), .OE(RESEN<0>), .Z(OUTPHASE<0>) ); 

endmodule

module DCAP8LVT (  ); 
Dcap_NMOS_n12_X1_Y1 MMI4 ( .B(VSS), .S(VSS), .G(net9) ); 
Switch_NMOS_n12_X1_Y1 MM_u2 ( .B(VSS), .D(net11), .G(net9), .S(VSS) ); 
Dcap_PMOS_n12_X1_Y1 MMI3 ( .B(VDD), .S(VDD), .G(net11) ); 
Switch_PMOS_n12_X1_Y1 MM_u1 ( .B(VDD), .D(net9), .G(net11), .S(VDD) ); 

endmodule

module DCAP16LVT (  ); 
Dcap_NMOS_n12_X1_Y1 MMI4 ( .B(VSS), .S(VSS), .G(net11) ); 
Switch_NMOS_n12_X1_Y1 MM_u2 ( .B(VSS), .D(net5), .G(net11), .S(VSS) ); 
Dcap_NMOS_n12_X1_Y1 MMI7 ( .B(VSS), .S(VSS), .G(net11) ); 
Dcap_PMOS_n12_X1_Y1 MMI3 ( .B(VDD), .S(VDD), .G(net5) ); 
Switch_PMOS_n12_X1_Y1 MM_u1 ( .B(VDD), .D(net11), .G(net5), .S(VDD) ); 
Dcap_PMOS_n12_X1_Y1 MMI5 ( .B(VDD), .S(VDD), .G(net5) ); 

endmodule

module DCAP32LVT (  ); 
Dcap_NMOS_n12_X1_Y1 MMI39 ( .B(VSS), .S(VSS), .G(net11) ); 
Switch_NMOS_n12_X1_Y1 MM_u2 ( .B(VSS), .D(net5), .G(net11), .S(VSS) ); 
Dcap_NMOS_n12_X1_Y1 MMI36 ( .B(VSS), .S(VSS), .G(net11) ); 
Switch_PMOS_n12_X1_Y1 MM_u1 ( .B(VDD), .D(net11), .G(net5), .S(VDD) ); 
Dcap_PMOS_n12_X1_Y1 MMI35 ( .B(VDD), .S(VDD), .G(net5) ); 
Dcap_PMOS_n12_X1_Y1 MMI26 ( .B(VDD), .S(VDD), .G(net5) ); 

endmodule

module INV_LVT ( SN, SP, i, zn ); 
input SN, SP, i, zn;

Switch_NMOS_n12_X1_Y1 xm0 ( .B(SN), .D(zn), .G(i), .S(SN) ); 
Switch_PMOS_n12_X1_Y1 xm1 ( .B(SP), .D(zn), .G(i), .S(SP) ); 

endmodule

module BUFTD16LVT ( I, OE, Z ); 
input I, OE, Z;

Switch_NMOS_n12_X1_Y1 MMI5_1_M_u4 ( .B(VSS), .D(net25), .G(net5), .S(VSS) ); 
Switch_NMOS_n12_X1_Y1 MMI5_0_M_u3 ( .B(VSS), .D(net25), .G(I), .S(VSS) ); 
Switch_NMOS_n12_X1_Y1 MMI7_M_u3 ( .B(VSS), .D(net13), .G(OE), .S(net9) ); 
Switch_NMOS_n12_X1_Y1 MM_u7 ( .B(VSS), .D(Z), .G(net25), .S(VSS) ); 
Switch_NMOS_n12_X1_Y1 MMI6_M_u3 ( .B(VSS), .D(net13), .G(OE), .S(net37) ); 
Switch_PMOS_n12_X1_Y1 MMI5_0_M_u2 ( .B(VDD), .D(net25), .G(net5), .S(net72) ); 
Switch_PMOS_n12_X1_Y1 MMI6_M_u2 ( .B(VDD), .D(net13), .G(I), .S(VDD) ); 
Switch_PMOS_n12_X1_Y1 MMI7_M_u1 ( .B(VDD), .D(net13), .G(OE), .S(VDD) ); 
Switch_PMOS_n12_X1_Y1 MM_u6 ( .B(VDD), .D(Z), .G(net13), .S(VDD) ); 
Switch_PMOS_n12_X1_Y1 MMI5_1_M_u2 ( .B(VDD), .D(net25), .G(net5), .S(net53) ); 
CMC_NMOS_S_n12_X1_Y1 MMI7_M_u4_MMI6_M_u4 ( .B(VSS), .DA(net9), .G(I), .S(VSS), .DB(net37) ); 
CMC_PMOS_S_n12_X1_Y1 MMI5_1_M_u1_MMI5_0_M_u1 ( .B(VDD), .DA(net53), .G(I), .S(VDD), .DB(net72) ); 
INV_LVT MM_u17_M_u2_MM_u17_M_u3 ( .zn(net5), .i(OE), .SN(VSS), .SP(VDD) ); 

endmodule

`celldefine
module global_power;
supply0 VSS;
supply1 VDD;
endmodule
`endcelldefine


.subckt single_SAR OUTCODE<0> net22<0> OUTCODE<1> net22<1> OUTCODE<2> net22<2> OUTCODE<3> net22<3> OUTCODE<4> net22<4> OUTCODE<5> net22<5> OUTCODE<6> net22<6> OUTCODE<7> net22<7> Bbar<0> Bbar<1> Bbar<2> Bbar<3> Bbar<4> Bbar<5> Bbar<6> Bbar<7> CLKC RDY V2DAC_N<0> V2DAC_N<1> V2DAC_N<2> V2DAC_N<3> V2DAC_N<4> V2DAC_N<5> V2DAC_N<6> V2DAC_N<7> V2DAC_P<0> V2DAC_P<1> V2DAC_P<2> V2DAC_P<3> V2DAC_P<4> V2DAC_P<5> V2DAC_P<6> V2DAC_P<7> VCMP_N VCMP_P VIN_N VIN_P VREF VSH_N VSH_P CLK<0> CLK<1> CLK<2> CLK<3> CLK<4> CLK<5> CLK<6> CLK<7>
I34<0> CLKS B<0> OUTCODE<0> net22<0> VDD VSS RESET_OUTCODE DFF_reset
I34<1> CLKS B<1> OUTCODE<1> net22<1> VDD VSS RESET_OUTCODE DFF_reset
I34<2> CLKS B<2> OUTCODE<2> net22<2> VDD VSS RESET_OUTCODE DFF_reset
I34<3> CLKS B<3> OUTCODE<3> net22<3> VDD VSS RESET_OUTCODE DFF_reset
I34<4> CLKS B<4> OUTCODE<4> net22<4> VDD VSS RESET_OUTCODE DFF_reset
I34<5> CLKS B<5> OUTCODE<5> net22<5> VDD VSS RESET_OUTCODE DFF_reset
I34<6> CLKS B<6> OUTCODE<6> net22<6> VDD VSS RESET_OUTCODE DFF_reset
I34<7> CLKS B<7> OUTCODE<7> net22<7> VDD VSS RESET_OUTCODE DFF_reset
I0 B<0> B<1> B<2> B<3> B<4> B<5> B<6> B<7> Bbar<0> Bbar<1> Bbar<2> Bbar<3> Bbar<4> Bbar<5> Bbar<6> Bbar<7> CLKC CLKS RDY V2DAC_N<0> V2DAC_N<1> V2DAC_N<2> V2DAC_N<3> V2DAC_N<4> V2DAC_N<5> V2DAC_N<6> V2DAC_N<7> V2DAC_P<0> V2DAC_P<1> V2DAC_P<2> V2DAC_P<3> V2DAC_P<4> V2DAC_P<5> V2DAC_P<6> V2DAC_P<7> VCMP_N VCMP_P VDD VIN_N VIN_P VREF VSH_N VSH_P VSS CLK<0> CLK<1> CLK<2> CLK<3> CLK<4> CLK<5> CLK<6> CLK<7> chip_core
.ends single_SAR

.subckt DFF_reset CLK D Q Qbar R
I10 VDD net015 net026 VSS inverter
I7 VDD R net019 VSS inverter
I13 VDD CLK net013 VSS inverter
I12 net015 net014 VDD VSS net011 NAND2
I11 net014 net026 VDD VSS net010 NAND2
I9 net019 net023 VDD VSS net015 NAND2
I8 net022 net010 VDD VSS net023 NAND2
I5 net011 D VDD VSS net022 NAND2
I3 Qbar net010 VDD VSS Q NAND2
I2 net011 Q VDD VSS Qbar NAND2
I6 net019 net013 VDD VSS net014 NAND2
.ends DFF_reset

.subckt INV_LVT zn i SN SP
xxm0 zn i SN SN Switch_NMOS_n12_X2_Y2
xxm1 zn i SP SP Switch_PMOS_n12_X2_Y2
.ends INV_LVT

.subckt Switch_NMOS_n12_X2_Y2 D G S B
m0 D G S1 B nmos_rvt  w=900000000000001e-07 l=4.5000000000000006e-08 m=10
m1 S1 G S B nmos_rvt  w=900000000000001e-07 l=4.5000000000000006e-08 m=10
.ends Switch_NMOS_n12_X2_Y2

.subckt Switch_PMOS_n12_X2_Y2 D G S B
m0 D G S1 B nmos_rvt  w=900000000000001e-07 l=4.5000000000000006e-08 m=35
m1 S1 G S B nmos_rvt  w=900000000000001e-07 l=4.5000000000000006e-08 m=35
.ends Switch_PMOS_n12_X2_Y2

.subckt inverter VIN VOUT
M0_M1 VIN VSS VDD VOUT INV_LVT
.ends inverter

.subckt NAND2 A B D
xM1 net7 B VSS VSS Switch_NMOS_n12_X2_Y2
xM0 D A net7 VSS Switch_NMOS_n12_X2_Y2
xM3 D B VDD VDD Switch_PMOS_n12_X2_Y2
xM2 D A VDD VDD Switch_PMOS_n12_X2_Y2
.ends NAND2

.subckt chip_core B<0> B<1> B<2> B<3> B<4> B<5> B<6> B<7> Bbar<0> Bbar<1> Bbar<2> Bbar<3> Bbar<4> Bbar<5> Bbar<6> Bbar<7> CLKC CLKS RDY V2DAC_N<0> V2DAC_N<1> V2DAC_N<2> V2DAC_N<3> V2DAC_N<4> V2DAC_N<5> V2DAC_N<6> V2DAC_N<7> V2DAC_P<0> V2DAC_P<1> V2DAC_P<2> V2DAC_P<3> V2DAC_P<4> V2DAC_P<5> V2DAC_P<6> V2DAC_P<7> VCMP_N VCMP_P VIN_N VIN_P VREF VSH_N VSH_P CLK<0> CLK<1> CLK<2> CLK<3> CLK<4> CLK<5> CLK<6> CLK<7>
I1 CLKC RDY VDD VSH_N VSH_P VCMP_N VCMP_P VSS comparator_p
I2 B<0> B<1> B<2> B<3> B<4> B<5> B<6> B<7> Bbar<0> Bbar<1> Bbar<2> Bbar<3> Bbar<4> Bbar<5> Bbar<6> Bbar<7> CLKC CLKS VCMP_N VCMP_P RDY V2DAC_N<0> V2DAC_N<1> V2DAC_N<2> V2DAC_N<3> V2DAC_N<4> V2DAC_N<5> V2DAC_N<6> V2DAC_N<7> V2DAC_P<0> V2DAC_P<1> V2DAC_P<2> V2DAC_P<3> V2DAC_P<4> V2DAC_P<5> V2DAC_P<6> V2DAC_P<7> VDD VREF VSS CLK<0> CLK<1> CLK<2> CLK<3> CLK<4> CLK<5> CLK<6> CLK<7> SAR_logic
I6 VDD CLKS CLKSbar VSS inverter
I0 CLKS CLKSbar VIN_N VIN_P VSH_N VSH_P V2DAC_N<0> V2DAC_N<1> V2DAC_N<2> V2DAC_N<3> V2DAC_N<4> V2DAC_N<5> V2DAC_N<6> V2DAC_N<7> V2DAC_P<0> V2DAC_P<1> V2DAC_P<2> V2DAC_P<3> V2DAC_P<4> V2DAC_P<5> V2DAC_P<6> V2DAC_P<7> VDD VSS SH
.ends chip_core

.subckt CCP_NMOS_S_n12_X2_Y2 B DA DB S
xM0 DA DB S B Switch_NMOS_n12_X2_Y2
xM1 DB DA S B Switch_NMOS_n12_X2_Y2
.ends CCP_NMOS_S_n12_X2_Y2

.subckt DP_PMOS_n12_X2_Y2 B DA GA S DB GB
xM0 DA GA S B Switch_PMOS_n12_X2_Y2
xM1 DB GB S B Switch_PMOS_n12_X2_Y2
.ends DP_PMOS_n12_X2_Y2

.subckt comparator_p CLKC RDY VINN VINP VOUTN VOUTP
xM5 net16 CLKC VSS VSS Switch_NMOS_n12_X2_Y2
xM4 net9 CLKC VSS VSS Switch_NMOS_n12_X2_Y2
xM0 net12 CLKC VDD VDD Switch_PMOS_n12_X2_Y2
I1 VOUTP VOUTN VDD VSS RDY NAND2
xM6_M3 net9 net16 VSS VSS CCP_NMOS_S_n12_X2_Y2
M10_M9 net16 VSS VDD VOUTN INV_LVT
M7_M8 net9 VSS VDD VOUTP INV_LVT
xM2_M1 net16 VINN net12 net9 VINP VDD DP_PMOS_n12_X2_Y2
.ends comparator_p

.subckt CCP_NMOS_S_n12_X2_Y2 D G S B
m0 D G S1 B nmos_rvt  w=900000000000001e-07 l=4.5000000000000006e-08 m=10
m1 S1 G S B nmos_rvt  w=900000000000001e-07 l=4.5000000000000006e-08 m=10
.ends CCP_NMOS_S_n12_X2_Y2

.subckt DP_PMOS_n12_X2_Y2 D G S B
m0 D G S1 B nmos_rvt  w=900000000000001e-07 l=4.5000000000000006e-08 m=20
m1 S1 G S B nmos_rvt  w=900000000000001e-07 l=4.5000000000000006e-08 m=20
.ends DP_PMOS_n12_X2_Y2

.subckt SAR_logic B<0> B<1> B<2> B<3> B<4> B<5> B<6> B<7> Bbar<0> Bbar<1> Bbar<2> Bbar<3> Bbar<4> Bbar<5> Bbar<6> Bbar<7> CLKC CLKS OUT_N OUT_P RDY V2DAC_N<0> V2DAC_N<1> V2DAC_N<2> V2DAC_N<3> V2DAC_N<4> V2DAC_N<5> V2DAC_N<6> V2DAC_N<7> V2DAC_P<0> V2DAC_P<1> V2DAC_P<2> V2DAC_P<3> V2DAC_P<4> V2DAC_P<5> V2DAC_P<6> V2DAC_P<7> VREF CLK<0> CLK<1> CLK<2> CLK<3> CLK<4> CLK<5> CLK<6> CLK<7>
I10<0> Bbar<0> CLK<0> OUT_N V2DAC_N<0> VDD VREF VSS DAC_ctrl_logic
I10<1> Bbar<1> CLK<1> OUT_N V2DAC_N<1> VDD VREF VSS DAC_ctrl_logic
I10<2> Bbar<2> CLK<2> OUT_N V2DAC_N<2> VDD VREF VSS DAC_ctrl_logic
I10<3> Bbar<3> CLK<3> OUT_N V2DAC_N<3> VDD VREF VSS DAC_ctrl_logic
I10<4> Bbar<4> CLK<4> OUT_N V2DAC_N<4> VDD VREF VSS DAC_ctrl_logic
I10<5> Bbar<5> CLK<5> OUT_N V2DAC_N<5> VDD VREF VSS DAC_ctrl_logic
I10<6> Bbar<6> CLK<6> OUT_N V2DAC_N<6> VDD VREF VSS DAC_ctrl_logic
I10<7> Bbar<7> CLK<7> OUT_N V2DAC_N<7> VDD VREF VSS DAC_ctrl_logic
I2<0> B<0> CLK<0> OUT_P V2DAC_P<0> VDD VREF VSS DAC_ctrl_logic
I2<1> B<1> CLK<1> OUT_P V2DAC_P<1> VDD VREF VSS DAC_ctrl_logic
I2<2> B<2> CLK<2> OUT_P V2DAC_P<2> VDD VREF VSS DAC_ctrl_logic
I2<3> B<3> CLK<3> OUT_P V2DAC_P<3> VDD VREF VSS DAC_ctrl_logic
I2<4> B<4> CLK<4> OUT_P V2DAC_P<4> VDD VREF VSS DAC_ctrl_logic
I2<5> B<5> CLK<5> OUT_P V2DAC_P<5> VDD VREF VSS DAC_ctrl_logic
I2<6> B<6> CLK<6> OUT_P V2DAC_P<6> VDD VREF VSS DAC_ctrl_logic
I2<7> B<7> CLK<7> OUT_P V2DAC_P<7> VDD VREF VSS DAC_ctrl_logic
I0 CLK<0> CLK<1> CLK<2> CLK<3> CLK<4> CLK<5> CLK<6> CLK<7> CLKC CLKS RDY VDD VSS async_logic
.ends SAR_logic

.subckt DAC_ctrl_logic B CLK OUT V2DAC VREF
I2 B net7 VDD VSS net015 NAND2
I5 VDD net015 net9 VSS inverter
I4 VDD CLK net7 VSS buffer
xM0 V2DAC net9 VSS VSS Switch_NMOS_n12_X2_Y2
I0 CLK OUT B net11 VDD VSS DFF
xM1 V2DAC net9 VREF VREF Switch_PMOS_n12_X2_Y2
.ends DAC_ctrl_logic

.subckt stage2_inv G1 SN G2 SP
MM0_MM2 D SN SP G1 INV_LVT
MM1_MM3 G2 SN SP D INV_LVT
.ends stage2_inv

.subckt buffer VIN VOUT
M2_M0_M3_M1 VSS VIN VDD VOUT stage2_inv
.ends buffer

.subckt DFF CLK D Q Qbar
I6 CLK net013 Q Qbar VDD VSS Latch
I5 net012 D net013 net014 VDD VSS Latch
I7 VDD CLK net012 VSS inverter
.ends DFF

.subckt Latch CLK D Q Qbar
I4 VDD D net13 VSS inverter
I3 Q net010 VDD VSS Qbar NAND2
I2 net011 Qbar VDD VSS Q NAND2
I1 CLK net13 VDD VSS net010 NAND2
I0 D CLK VDD VSS net011 NAND2
.ends Latch

.subckt async_logic CLK<0> CLK<1> CLK<2> CLK<3> CLK<4> CLK<5> CLK<6> CLK<7> CLKC CLKS RDY
I19 CLKS RDY CLK<7> net01 VDD VSS NOR3
I20 VDD net01 net016 VSS inverter
I21 VDD net016 CLKC VSS buffer
I9 RDY CLK<6> CLK<7> net5 VDD VSS CLKS DFF_reset
I8 RDY CLK<5> CLK<6> net12 VDD VSS CLKS DFF_reset
I7 RDY CLK<4> CLK<5> net19 VDD VSS CLKS DFF_reset
I6 RDY CLK<3> CLK<4> net26 VDD VSS CLKS DFF_reset
I5 RDY CLK<2> CLK<3> net33 VDD VSS CLKS DFF_reset
I4 RDY CLK<1> CLK<2> net40 VDD VSS CLKS DFF_reset
I2 RDY VDD CLK<0> net52 VDD VSS CLKS DFF_reset
I3 RDY CLK<0> CLK<1> net47 VDD VSS CLKS DFF_reset
.ends async_logic

.subckt NOR3 A B C D
xM4 D C VSS VSS Switch_NMOS_n12_X2_Y2
xM0 D B VSS VSS Switch_NMOS_n12_X2_Y2
xM1 D A VSS VSS Switch_NMOS_n12_X2_Y2
xM5 D C net23 VDD Switch_PMOS_n12_X2_Y2
xM3 net23 B net24 VDD Switch_PMOS_n12_X2_Y2
xM2 net24 A VDD VDD Switch_PMOS_n12_X2_Y2
.ends NOR3

.subckt SH CLK CLKbar INN INP OUTN OUTP V2DAC_N<0> V2DAC_N<1> V2DAC_N<2> V2DAC_N<3> V2DAC_N<4> V2DAC_N<5> V2DAC_N<6> V2DAC_N<7> V2DAC_P<0> V2DAC_P<1> V2DAC_P<2> V2DAC_P<3> V2DAC_P<4> V2DAC_P<5> V2DAC_P<6> V2DAC_P<7>
I2 V2DAC_N<0> V2DAC_N<1> V2DAC_N<2> V2DAC_N<3> V2DAC_N<4> V2DAC_N<5> V2DAC_N<6> V2DAC_N<7> OUTN VSS CDAC
I1 V2DAC_P<0> V2DAC_P<1> V2DAC_P<2> V2DAC_P<3> V2DAC_P<4> V2DAC_P<5> V2DAC_P<6> V2DAC_P<7> OUTP VSS CDAC
I0 CLK CLKbar INN INP VDD OUTN OUTP VSS bootstrap_diff
.ends SH

.subckt CDAC S<0> S<1> S<2> S<3> S<4> S<5> S<6> S<7> TOP ground
C10 ground TOP Cap_3f
C7 TOP S<7> Cap_3f
C6 TOP S<6> Cap_7f
C5 TOP S<5> Cap_15f
C4 TOP S<4> Cap_31f
C3 TOP S<3> Cap_62f
C2 TOP S<2> Cap_125f
C1 TOP S<1> Cap_250f
C0 TOP S<0> Cap_500f
.ends CDAC

.subckt bootstrap_diff CLK CLKbar INN INP VOUTN VOUTP
I18 VDD CLK net6 VSS clk_doubler
I19 VDD CLK net5 VSS clk_doubler
I14 VOUTP VDD VSS CLK CLKbar net6 INP bootstrap
I10 VOUTN VDD VSS CLK CLKbar net5 INN bootstrap
.ends bootstrap_diff

.subckt clk_doubler VIN VOUT
C1 net5 VOUT Cap_2500f
C0 VOUTb VIN Cap_2500f
xM0 VDD VOUTb VOUT VSS Switch_NMOS_n12_X2_Y2
xM18 VDD VOUT VOUTb VSS Switch_NMOS_n12_X2_Y2
I0 VDD VIN net5 VSS inverter
.ends clk_doubler

.subckt bootstrap OUT clk clkb clkb_high IN
xM10 net01 clk IN VSS Switch_NMOS_n12_X2_Y2
xM11 net012 clk IN VSS Switch_NMOS_n12_X2_Y2
xM6 net011 clkb VSS VSS Switch_NMOS_n12_X2_Y2
xM4 OUT net011 IN VSS Switch_NMOS_n12_X2_Y2
xM1q net01 clkb VSS VSS Switch_NMOS_n12_X2_Y2
xM0 VDD clkb_high net8 VSS Switch_NMOS_n12_X2_Y2
C0 net8 net01 Cap_20000f
xM12 IN clkb net01 VDD Switch_PMOS_n12_X2_Y2
xM7 IN clkb net012 VDD Switch_PMOS_n12_X2_Y2
xM13 net012 clk VDD VDD Switch_PMOS_n12_X2_Y2
xM2 net011 net012 net8 net8 Switch_PMOS_n12_X2_Y2
.ends bootstrap

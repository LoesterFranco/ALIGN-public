//Verilog block level netlist file for strong_arm_latch
//Generated by UMN for ALIGN project 


module strong_arm_latch ( clk, vin, vcc, vip, vop, von, vss ); 
input clk, vin, vcc, vip, vop, von, vss;

Switch_NMOS_n12_X3_Y2 mn0 ( .D(net44), .G(net16), .S(net42) ); 
Switch_NMOS_n12_X3_Y2 mn1 ( .D(net16), .G(net44), .S(net8) ); 
Switch_NMOS_n12_X3_Y2 mn2 ( .D(net8), .G(vip), .S(net34) ); 
Switch_NMOS_n12_X3_Y2 mn3 ( .D(net42), .G(vin), .S(net34) ); 
Switch_NMOS_n12_X3_Y2 mn4 ( .D(net34), .G(clk), .S(vss) ); 
Switch_NMOS_n12_X1_Y1 mn5 ( .D(von), .G(net16), .S(vss) ); 
Switch_NMOS_n12_X1_Y1 mn6 ( .D(vop), .G(net44), .S(vss) ); 
Switch_PMOS_n12_X3_Y1 mp0 ( .D(net44), .G(net16), .S(vcc) ); 
Switch_PMOS_n12_X1_Y1 mp1 ( .D(net16), .G(clk), .S(vcc) ); 
Switch_PMOS_n12_X3_Y1 mp2 ( .D(net16), .G(net44), .S(vcc) ); 
Switch_PMOS_n12_X1_Y1 mp3 ( .D(net44), .G(clk), .S(vcc) ); 
Switch_PMOS_n12_X1_Y1 mp4 ( .D(net8), .G(clk), .S(vcc) ); 
Switch_PMOS_n12_X1_Y1 mp5 ( .D(net42), .G(clk), .S(vcc) ); 
Switch_PMOS_n12_X1_Y1 mp6 ( .D(von), .G(net16), .S(vcc) ); 
Switch_PMOS_n12_X1_Y1 mp7 ( .D(vop), .G(net44), .S(vcc) ); 

endmodule
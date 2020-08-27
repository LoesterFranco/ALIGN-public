//Verilog block level netlist file for comparator_1_2
//Generated by UMN for ALIGN project 


module comparator_1_2 ( vss, clk, von, vip, vin, vcc, vop ); 
input vss, clk, von, vip, vin, vcc, vop;

Switch_NMOS_n12_X1_Y1 mn1 ( .D(net1), .G(vip), .S(vss), .Bg(vss) ); 
Switch_NMOS_n12_X1_Y1 mn2 ( .D(net2), .G(vin), .S(vss), .Bg(vss) ); 
Switch_NMOS_n12_X3_Y1 mn3 ( .D(net3), .G(von), .S(net1), .Bg(vss) ); 
Switch_NMOS_n12_X3_Y1 mn4 ( .D(net4), .G(vop), .S(net2), .Bg(vss) ); 
Switch_NMOS_n12_X3_Y1 mn5 ( .D(vop), .G(clk), .S(net3), .Bg(vss) ); 
Switch_NMOS_n12_X3_Y1 mn6 ( .D(von), .G(clk), .S(net4), .Bg(vss) ); 
Switch_PMOS_n12_X2_Y1 mp0 ( .D(vop), .G(von), .S(vcc), .Bg(vcc) ); 
Switch_PMOS_n12_X2_Y1 mp1 ( .D(von), .G(vop), .S(vcc), .Bg(vcc) ); 
Switch_PMOS_n12_X5_Y1 mp2 ( .D(vop), .G(clk), .S(vcc), .Bg(vcc) ); 
Switch_PMOS_n12_X5_Y1 mp3 ( .D(von), .G(clk), .S(vcc), .Bg(vcc) ); 

endmodule

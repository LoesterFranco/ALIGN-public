.subckt inverter_current_starved vcc vin vip von vop vss
mmp0 vop vin vcc vcc p w=180n l=40n nf=2 m=4
mmn0 vop vin vss vss n w=180n l=40n nf=2 m=4
mmp1 von vip vxx b1 p w=180n l=40n nf=2 m=4
mmn1 von vip vss vss n w=180n l=40n nf=2 m=4
mmp2 von vip vxx b1 p w=180n l=40n nf=2 m=8
mmn2 von vip b2 b2 n w=180n l=40n nf=2 m=8
mmp3 vxx clk vcc vcc p w=180n l=40n nf=2 m=8
.ends inverter_current_starved

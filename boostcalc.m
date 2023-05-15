
Pmpp = 215;
Vmpp = 29;
Vin =  250;
P = 47*10*Pmpp
Vout = 600;
Fsw = 5000;
Ioutmax = P / Vout
delIl = 0.05 * Ioutmax * (Vout/Vin)
delVout = 0.01*Vout
L = (Vin * (Vout - Vin) ) / (delIl * Fsw * Vout)
C = (Ioutmax * (1-(Vin/Vout) )) / (Fsw* delVout)
R = Vout / Ioutmax
D = (Vout - Vin)/ Vout


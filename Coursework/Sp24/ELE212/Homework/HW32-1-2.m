clc;
clear all;
%Change these, R from left to right
R1 = 42;
R2 = 25;
R3 = 30;
L = 80e-3;
SV = 9;
%Don't change
syms V
node = ((V-SV)/R1)+(V/R2)+(V/R3) == 0;
node_V = solve(node,V);
Io1 = (node_V/R3);
Iinf1 = 0;
Io2 = 0;
Iinf2 = Io1;
Rth1 = R2+R3;
Rth2 = ((R1*R2)/(R1+R2))+R3;
t1 = -(Rth1/L);
t2 = -(Rth2/L);

disp(Io1)
disp(Iinf1)
disp(t1)

disp(Io2)
disp(Iinf2)
disp(t2)



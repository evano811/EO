clc;
clear all;
%Change these
%R from left to right
R1 = 24000;
R2 = 40000;
C = 25e-6;
SV = 7;
%Dont change
RC1 = -1/(R2*C); 
Vinf1 = 0; %Zero as circuit stays on
Req = (R2*R1)/(R2+R1);
RC2 = -1/(Req*C);
%Node analysis to find voltage across C (ignoring C in eqn.)
syms V
node = ((V-8)/R1)+(V/R2)==0;
Vinf2 = solve(node,V);

Vinit2 = 0; %Zero at beginning
Vinit1 = Vinf2; %These are the same

disp(Vinit1)
disp(Vinf1)
disp(RC1)

disp(Vinit2)
disp(Vinf2)
disp(RC2)
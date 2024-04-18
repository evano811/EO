clc;
%circuit parameters
V=1; %signal voltage
W=16000; %angural frequency
C=linspace(2e-6,2e-5,1e6); %capacitor value form to
R1=4800; %series resister
R2=540; %parallel resister
L=1e-3; %inductor
XL=j*W*L;
XC=1./(j*W*C);
Z=1./(1/R2+1/XL+1./XC); %parallel impedancet
VL=V*Z./(R1+Z); %voltage across inductor by voltage division rule
I0=VL./XL; %inductor current
plot(C,abs(I0));
title('plot of inductor current vs capacitor');
xlabel('C(F)');ylabel('|I0|');grid on
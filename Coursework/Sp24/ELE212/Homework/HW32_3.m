V1 = 12;
V2 = 15;

R1 = 100;
r2 = 170;
R3 = 40;
R4 = 190;

C = 2e-6;

VL = V1 * R2 / (R1+R2);
VR = V2 * R3 / (R3+R4);

V0 = VL;

t = ((R1*R2)/(R1+R2) + (R3*R4/(R3+R4))) * C;

VI = VL - VR;

fprintf("%.3g * exp(%.3gt) + %.3g V\n", V0 - VI, -1/t, VI);
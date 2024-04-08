clc
clear all
 

%Used Thevin Vu method
 

%PROBLEM 1
 

%MODIFY THESE
%left to right
r1 = 31;
r2 = 81;
r3 = 26;
r4 = 59;
 

v1 = 25;
v2 = 34;
 

%remove sources
%1,2,3,4 are all in parralel
rth = (1/r1 + 1/r2 + 1/r3 + 1/r4)^(-1);
 

disp('Problem 1:')
 

fprintf('%s O \n', string(round(rth, 3, 'significant')));
 

syms n1 real;
%super node
n2 = n1 + v1;
n3 = v2;
 

%node
eq = n1/r1 + (n1-n3)/r2 + (n2 - n3)/r3 + n2/r4 == 0;
n = solve(eq, n1);
 

%evalute voltage at node 2
vth = subs(n2, n1, n);
 

%find max power using equation in slides
max_power = vth^2 / (4 * rth);
 

fprintf('%s W \n', string(round(max_power, 3, 'significant')));
 

 

%PROBLEM 2
 

%MODIFY THESE
% top to bottom (left to right for same height)
r1 = 60;
r2 = 49;
r3 = 37;
r4 = 47;
r5 = 51;
r6 = 71;
 

c1 = .7;
 

%don't touch below
 

syms rl real;
syms n1 n2 n3 n4;
 

%nodes
eq1 = n1/r4 + (n1 - n4)/r2 + (n1 - n2)/r1 == 0;
eq2 = (n2-n3)/r3 + (n2 - n1)/r1 -c1 == 0;
eq3 = n3/r5 + (n3 - n4)/rl + (n3-n2)/r3 == 0;
eq4 = n4/r6 + (n4-n1)/r2 + (n4-n3)/rl == 0;
 

[n1, n2, n3, n4] = solve([eq1, eq2, eq3, eq4], [n1, n2, n3, n4]);
 

power_eq = (n3 - n4)^2 / rl; %v^2 / r (power equation)
 

%find rel max to find max resistance
max_power_resistance = solve(diff(power_eq, rl) == 0, rl);
 

disp('Problem 2:')
 

fprintf('%s O \n', string(round(max_power_resistance, 3, 'significant')));
 

%plug max resistance back into power equation to get max power
max_power = subs(power_eq, rl, max_power_resistance);
 

fprintf('%s W \n', string(round(max_power, 3, 'significant')));
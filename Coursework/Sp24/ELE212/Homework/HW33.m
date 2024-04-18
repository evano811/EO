%left to right
r1 = 42;
r2 = 25;
r3 = 30;
l1 = 80e-3;
v1 = 9;
%find time constant
%calc with switch in final position 
rth = r3 + r2; %thevinin across the inductor
tau = l1 / rth; %divide rth by inductance
tau = -1 / tau; %-1 / tau negative
%find v infinity
%put switch in final position
vinf = 0; %in final position no source so goes to zero
%find v zero
syms v real; 
eq = (v - v1) / r1 + v/r2 + v/r3 == 0;
v = solve(eq, v);
%replace inductor current with current found from node
lc = v / r3;
%look at circuit with switch open now with above current as inductor
%to find v0
v0 = -lc * r2;
fprintf("%s * exp(%st) + %s V\n", string(round(v0-vinf, 3, 'significant')), string(round(tau, 3, 'significant')), string(round(vinf, 3, 'significant')));
%f infinity is equal to v with switch in final (closed) 
vinf = v;
%put switch in final position to and find rth across inductor
rth = (1/r1 + 1/r2)^(-1) + r3;
tau = -1 / (l1 / rth);
%current across inductor is 0 so nothing goes to that path
v0 = (r2 / (r1 + r2) ) * v1; %votlage divsion
fprintf("%s * exp(%st) + %s V\n", string(round(v0-vinf, 3, 'significant')), string(round(tau, 3, 'significant')), string(round(vinf, 3, 'significant')));

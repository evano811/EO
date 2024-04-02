clc
clear

disp('Problem 1')

x = [-5:0.001:5];

y = x.^2 - 5.*x.*cos(3.*x - pi/2) - 5;

plot(x, y)
title('Graph A')
xlabel('x')
ylabel('y')
grid on

disp('On the graph from range -5 to 5, the graph crosses the x-axis 10 times');

pause
clc
clear

disp('Problem 2')


A = [4, 2, 0; 2, 2, 3; 0, 1, -4];
B = [8;15;-10]

solns = A\B;

x = solns(1)
y = solns(2)
z = solns(3)



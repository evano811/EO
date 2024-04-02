R = 330.3; 
L = 4.7e-3;

R_p = 3.5;
C_p = 3.5e-12;

frequencies = logspace(1, 8, 100); 

omega = 2*pi*frequencies;

H1 = R ./ (R + 1i*omega*L);

Z = (R_p + (1i*omega*L))./((1-((omega.^2)*(L)*(C_p)))+(1i*omega*R_p*C_p))

f_b = R/(2*pi*L)

H2 = R./(Z+R);

figure;
subplot(2,1,1);
semilogx(frequencies, 20*log10(abs(H1)), 'linewidth', 2)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Bode Plot - Magnitude Response');
grid on

hold on 
xline(f_b, '--r', 'Break Frequency')
hold off
 
hold on 
vA = [1.8 1.8 1.775 1.75 1.8 1.825 1.85 1.9 1.9 1.9 1.9 1.95 2.8];
vB = [1.2 1.275 1.325 1.375 1.175 1.125 1.075 0.63 0.49 0.39 0.33 0.1 1.6];
fexp = [11185 10185 9185 8185 12185 13185 14185 30000 40000 50000 60000 1e+6 2.47e+7];
ampGain = vB./vA;
semilogx(fexp, 20*log10(ampGain), 'r-', 'linewidth', 2);
hold off

hold on
semilogx(frequencies, (20*log10(abs(H2))), 'linewidth',2);
hold off





subplot(2,1,2);
semilogx(frequencies, angle(H1)*180/pi, 'linewidth', 2);
xlabel('Frequency (Hz)');
ylabel('Phase (degrees)');
title('Bode Plot - Phase Response');
grid on

hold on
phase = -[45 43.6 40.1 37.2 48.1 51.2 52.7 68.8 74.3 76.7 78.5 -91 -20.9];
semilogx(fexp, phase, 'r-', 'linewidth', 2);
hold off

hold on
semilogx(frequencies, angle(H2)*180/pi, 'linewidth',2)


clear


R = 3845; 
L = 4.7e-3; 
C = 0.0022e-6; 

frequencies = logspace(1, 6, 100); 

Z2 = 1 ./ (1 ./ (1i * 2 * pi * frequencies * L) + 1i * 2 * pi * frequencies * C);

H = Z2 ./ (R + Z2)

figure;
subplot(2,1,1);
semilogx(frequencies, 20*log10(abs(H)))
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Bode Plot - Magnitude Response');

hold on 
vA = [1.925 1.9 1.95 1.9 1.9 1.9 1.925 1.9 1.9];
vB = [0.69 0.215 1.85 0.59 0.77 0.41 1.15 0.63 0.75];
fexp = [48626 12045 196304 40500 54800 28900 86970 44500 53500];
ampGain = vB./vA;
semilogx(fexp, 20*log10(ampGain), 'o');
hold off

subplot(2,1,2);
semilogx(frequencies, angle(H)*180/pi);
xlabel('Frequency (Hz)');
ylabel('Phase (degrees)');
title('Bode Plot - Phase Response');

hold on

phase = [68.37 87.25 16.44 70.53 64.84 75.59 52.89 69.21 66.11];
semilogx(fexp, phase, 'o');
hold off

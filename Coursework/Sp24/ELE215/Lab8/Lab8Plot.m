R1 = 5400;
R2 = 54000;
R3 = 270;
C1 = 1e-8;
C2 = 2.2e-8;

R1real = 9870;
R2real = 56071;
R3real = 99.41;
C1real = 1.1e-8;
C2real = 2.1e-8;

f = logspace(2,5,100);
om = 2*pi*f;

h = ((1i*om)*1/(R1*C1))./((1i*om).^2+(1i*om)*((C1+C2)/(R2*C1*C2))+((R1+R3)/(R1*R2*R3*C1*C2)));
center_freq = (1/(2*pi)) * sqrt((R1+R3)/(R1*R2*R3*C2*C2))
center_gain = -(R2*C2)/(R1*(C1+C2))
bandwidth = (1/(2*pi)) * (C1+C2)/(R2*C1*C2)

hreal = ((1i*om)*1/(R1real*C1real))./((1i*om).^2+(1i*om)*((C1real+C2real)/(R2real*C1real*C2real))+((R1real+R3real)/(R1real*R2real*R3real*C1real*C2real)));
center_freqreal = (1/(2*pi)) * sqrt((R1real+R3real)/(R1real*R2real*R3real*C2real*C2real))
center_gainreal = -(R2real*C2real)/(R1real*(C1real+C2real))
bandwidthreal = (1/(2*pi)) * (C1real+C2real)/(R2real*C1real*C2real)

figure;
subplot(2,1,1);
semilogx(f,20*log10(abs(h)), '-','Linewidth',2);
hold on;
semilogx(f,20*log10(abs(hreal)), 'o');
hold off;
title('Magnitude vs Frequency');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
grid on;

subplot(2,1,2);
semilogx(f,180*angle(h)/pi, '-', 'LineWidth',2);
hold on;
semilogx(f,180*angle(hreal)/pi, 'o');
hold off;
title('Phase vs Frequency');
xlabel('Frequency (Hz)');
ylabel('Phase (Degrees)');
grid on;
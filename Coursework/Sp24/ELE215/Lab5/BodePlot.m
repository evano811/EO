
R = 3893;
C = 0.0021e-6;
f = logspace(0,5);
ZC = 1./(1j*2*pi*f*C);
H = ZC ./ ( R + ZC );
subplot(211)
semilogx(f,20*log10(abs(H)),'linewidth',2)
xlabel('Frequency, Hz'), ylabel('Magnitude, dB')
grid
hold on
vA = [2 2 2 2 1.975 1.975]
vB = [1.975 1.95 1.775 1.4 0.875 0.470]
fexp=[2.35e3 4.711e3 9.405e3 18.78e3 37.6e3 75.4e3]
ampGain = vB./vA
semilogx(fexp,20*log10(ampGain),'o')
hold off

subplot(212)
semilogx(f,180*angle(H)/pi,'linewidth',2)
xlabel('freq in Hz'), ylabel('angle in degrees')
grid
hold on
phase = -[7.65 13.54 27.15 45.7 63.6 75.6]
semilogx(fexp, phase, 'o')
hold off

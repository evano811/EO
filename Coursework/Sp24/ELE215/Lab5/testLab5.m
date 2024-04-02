% Constants
R = 3900; % Resistance in Ohms
C = 0.0022e-6; % Capacitance in Farads

% Compute break frequency
fc = 1 / (2 * pi * R * C);

% Generate frequency range
f = logspace(log10(0.02*fc), log10(50*fc), 100);

% Compute magnitude and phase
omega = 2 * pi * f;
H = 1 ./ (1 + 1i*omega*R*C);
magnitude = 20*log10(abs(H)); % Convert magnitude to decibels
phase = angle(H) * (180/pi); % Convert phase to degrees

% Plot Bode plot
subplot(2,1,1); % Upper plot for magnitude
semilogx(f, magnitude, '--');
grid on;
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Bode Plot - Magnitude');

subplot(2,1,2); % Lower plot for phase
semilogx(f, phase, '--');
grid on;
xlabel('Frequency (Hz)');
ylabel('Phase (degrees)');
title('Bode Plot - Phase');

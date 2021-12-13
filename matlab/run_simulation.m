% Input signal
inputFreq = 11*10^3;     % frequency of input signal (Hz)
inputAmp = 0.05;        % amplitude of input signal (V)

% VCO, DCO parameters
V_bs2 = 0.4;
K_vco = [11.14 5.7]*10^6;   % [sensitive  central_frequency]
K_dco = [24 1.6]*10^6;  % [sensitive  central_frequency]
freq_top=K_dco(1)*0.4+ K_dco(2)
freq_bot=K_dco(2)
% System Parameters
F_sample = 24*10^6;     % Over sampling frequency of ADC
nop = 1;                % number of phases (nop)
OSR = 500;              % Over sampling rate

% Simulation parameters
transient_time = 4e-3;  % Transient time of simulation
div = 40;               % Time division
%%
run second_order_noise_shaping_behavioral_model.m;

%% Plot result 
count2 = sum (qtz(1:OSR));
figure(1);
plot_fft(qtz - mean(qtz), F_sample, 8192*8)
xlim([0 24000]);
figure(2)
plot(decimation(qtz, F_sample, OSR));
output = decimation(qtz, F_sample, OSR);
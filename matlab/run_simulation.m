% VCO_profile = readtable('./Workspace/VCO_extraction_1.txt',...
%                         'Delimiter',' ','ReadVariableNames',true,...
%                         'Format', '%f%f%f%f%f', 'HeaderLines', 0);
% Input signal
inputFreq = 1*10^3;     % frequency of input signal (Hz)
inputAmp = 0.45;        % amplitude of input signal (V)
V_bs2=0.4;
% VCO, DCO parameters
%K_vco = [6.32 5.819]*10^6;   % [sensitive  central_frequency]V_bs2 = 0.4;
K_vco = [6.1430 5.3471]*10^6;   % [sensitive  central_frequency]
K_dco = [16 2.25]*10^6;  % [sensitive  lowest_frequency]
freq_top=K_dco(1)*0.4 + K_dco(2)
freq_bot=K_dco(2)
% System Parameters
F_sample = 24*10^6;     % Over sampling frequency of ADC
nop = 1;                % number of phases (nop)
OSR = 500;              % Over sampling rate

% Simulation parameters
time = 1.2;
transient_time = time*10e-3;  % Transient time of simulation
div = 40;               % Time division
%%
run second_order_noise_shaping_behavioral_model.m;

%% Plot result 
count2 = sum (qtz(1:OSR));
figure(1);
plot_fft(qtz-mean(qtz), F_sample, 2048*128)
%xlim([0 24000]);
figure(2)
plot(decimation(qtz, F_sample, OSR));
output = decimation(qtz, F_sample, OSR);
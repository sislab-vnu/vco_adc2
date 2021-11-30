% matlab behavior model of second order noise shaping
close all;

%% ----------------- Overall system ----------------
trans_time = 4e-3;                     % Transient time of simulation
Fs = 24*10^6;                          % Over sampling frequency of ADC
t_s = 0:(1/Fs):(trans_time);           % Discrete time
div = 40;                              % Time division
Fs_dis = Fs*div;
t = 0:1/Fs_dis:trans_time;           % Display continious time range of sumlation
OSR = 500;                             % Over sampling rate

%%  -----------------Input signal Block--------------
f1 = 9*10^3;                        %set up frequency of input signal (Hz)
V_ip = 0.25*cos(2*pi*f1*t);
%V_in =-0.4*sin(2*pi*f1*t)+0.6;

%% --- Init VCO, DCO phase, voltage, K_vco,... -----------
nop = 1;        % number of phases (nop)
init_val = zeros(nop,1);    % Create init value by zeros matrix
i = 1:1:nop;   
% init phase values fix(mod(phase_d2(fix(mod(phase_d2(:,t_i(2:end)), 2)):,t_i(2:end)), 2))
phase_init(i) = 0:-1/nop:-(nop-1)/nop;  % Initiate phase value of $nop phases;
if (nop>3)
    i = 2:2:nop-1;
    phase_init(i) = phase_init(i)-1;
    % initiate phase value of even phases;
end
% init phase values
phase_init = phase_init + 2;    % Phase_init + 2*pi (make all phase value greater than 0)
phase_v1 = phase_init;          % Initate phase_v1 (phases of VCO1)
phase_d2 = phase_init;          % Initate phase_v1 (phases of DCO2)
% init counter values
counter1 = zeros(nop,div+1);    %rpt1 = [];
counter2 = zeros(nop,div+1);    %rpt2 = [];
% initate quantizer(qtz) values
qtz = zeros(nop,1);
% initate idac
V_bs2 = 0.4;
V_dco2 = [];
K_vco = [7.2 4.8]*10^6;  % [sensitive  central_frequency]
K_dco = [17.5 2.5]*10^6;  % [sensitive  central_frequency]

%% Second order noise shapping
for i = 1:length(t_s)-1
    t_i = (i-1)*div+1:i*div+1;      % time between two sample
    
    % generate phase values of VCO_1
    [phase_v1(:,t_i), freq_v1(t_i)] = RO_phase_gen(V_ip(t_i), Fs_dis, K_vco, phase_v1(:, t_i(1)), div);
    
    % reduce phase _v1 from 0 to 2pi radian
    phase_v1(:,t_i) = mod(phase_v1(:,t_i), 2);
    
    % get rise pulse time (rpt) of phase_v1 signal
    if (i > 1)
        [~, rpt] = find((fix(mod(phase_v1(:,t_i(1:end)), 2)).*~fix(mod(phase_v1(:,t_i(1:end)-1), 2)))==1);
    end
    % initate counter1 in new clock cycle
    if(i>1)
        if (qtz(:, i-1)==1)
            counter1(:,t_i) = 0;
        else
            counter1(:,t_i) = counter1(:, t_i(1)-1);
        end
    end
    % up down counter hold high value of phase_v1 signal
    counter1(:,t_i(rpt:end)) = 1;
    
    % caculate voltage supply for DCO_2
    V_dco2(t_i) = counter1(:,t_i)*V_bs2;
    
    % generate phase value of DCO_2
    [phase_d2(:,t_i), freq_d2(:,t_i)] = RO_phase_gen(V_dco2(t_i), Fs_dis, K_dco, phase_d2(:, t_i(1)), div);
    
    % get rise pulse time (rpt) of phase_d2 signal
    if (i>1)
        %[~, rpt] = find((fix(mod(phase_d2(:,t_i(1:end)), 2)).*~fix(mod(phase_d2(:,t_i(1:end)-1), 2)))==1);
        [~, rpt] = find((fix(mod(phase_d2(:,t_i(2:end)), 2)).*~fix(mod(phase_d2(:,t_i(1:end-1)), 2)))==1);
    end
    % initate counter2 in new clock cycle
    counter2(:,t_i) = 0;
    
    % up down counter hold high value of phase_d2 signal
    counter2(:,t_i(rpt:end)) = 1;
    
    % phase_d2 quantization (qtz)
    qtz(:, i) = counter2(:,t_i(end));
end
 
%% Plot result 
id_img =1; num_img = 7;         % define figure results
figure(1)
subplot(num_img,1,id_img); plot(freq_v1, 'r','LineWidth', 2.2);
set(gca,'xtick',[0:40:40*OSR]); grid on; id_img=id_img+1;
xlim([0 40*OSR]); set(gca,'xticklabel',{[]}); title('vco1 freq');

subplot(num_img,1,id_img); plot(mod(phase_v1, 2), 'r','LineWidth', 2.2);
set(gca,'xtick',[0:40:40*OSR]); grid on; id_img=id_img+1;
xlim([0 40*OSR]); set(gca,'xticklabel',{[]}); title('vco1 phase');

subplot(num_img,1,id_img); plot(counter1, 'r','LineWidth', 2.2);
set(gca,'xtick',[0:40:40*OSR]); grid on; id_img=id_img+1;
xlim([0 40*OSR]); set(gca,'xticklabel',{[]}); title('counter 1');

subplot(num_img,1,id_img); plot(freq_d2, 'r','LineWidth', 2.2);
set(gca,'xtick',[0:40:40*OSR]); grid on; id_img=id_img+1;
xlim([0 40*OSR]); set(gca,'xticklabel',{[]}); title('DCO2 freq');

subplot(num_img,1,id_img); plot(mod(phase_d2, 2), 'r','LineWidth', 2.2);
set(gca,'xtick',[0:40:40*OSR]); grid on; id_img=id_img+1;
xlim([0 40*OSR]); set(gca,'xticklabel',{[]}); title('dco2 phase');

subplot(num_img,1,id_img); plot(counter2, 'r','LineWidth', 2.2);
set(gca,'xtick',[0:40:40*OSR]); grid on; id_img=id_img+1;
xlim([0 40*OSR]); set(gca,'xticklabel',{[]}); title('counter2');

subplot(num_img,1,id_img); plot(counter2_method2, 'r','LineWidth', 2.2);
set(gca,'xtick',[0:40:40*OSR]); grid on; id_img=id_img+1;
xlim([0 40*OSR]); set(gca,'xticklabel',{[]}); title('counter2_med2');

%subplot(num_img,1,id_img); stem(qtz, 'r','LineWidth', 2.2);
%set(gca,'xtick',[0:1:OSR]); grid on; id_img=id_img+1;
%xlim([0 OSR]); set(gca,'xticklabel',{[]}); title('quantize value');

count2 = sum (qtz(1:OSR))
% subplot(num_img,1,5);
% stem(qtz, 'r','LineWidth', 2.2);
% set(gca,'xtick',[0:1:OSR]);
% grid on
% set(gca,'xticklabel',{[]})

figure(2);
plot_fft(qtz, Fs, 8192*8)
xlim([0 24000]);
% % plot (qtz);
% figure(3)
% plot(decimation(qtz, Fs, OSR));
% figure(3)
% output = decimation(qtz, Fs, OSR);
% plot_fft(output, Fs/OSR, 256);
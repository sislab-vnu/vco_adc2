% matlab behavioral model of second order noise shaping

%% ----------------- setup time for the simulation ----------------
t_s = 0:(1/F_sample):(transient_time);  % Discrete time
F_display = F_sample*div;               % Scope frequency
t = 0:1/F_display:transient_time;       % Pseudo-continious time

%% ----- Input signal generator -----
Vin_Pchannel = inputAmp*cos(2*pi*inputFreq*t);
% Vin_Nchannel = -inputAmp*cos(2*pi*f1*t);

%% --- Init VCO, DCO phase, counters quantizer -----------
tmp = 1:1:nop;   
phase_init(tmp) = 0:-1/nop:-(nop-1)/nop;  % Initiate phase value of $nop phases;
if (nop>3)                      % initiate phase value of even phases;
    tmp = 2:2:nop-1;
    phase_init(tmp) = phase_init(tmp)-1;    
end
phase_init = phase_init + 2;    % Phase_init + 2*pi (make all phase value greater than 0)
phase_v1 = phase_init;          % Initate phase_v1 (phases of VCO1)
phase_d2 = phase_init;          % Initate phase_v1 (phases of DCO2)

counter1 = zeros(nop,div+1);    % init counter values
counter2 = zeros(nop,div+1);    % init counter values
qtz = zeros(nop,1);             % initate quantizer(qtz) values
rpt= [];
%% Second-order noise-shapping implementation 
for i = 1:length(t_s)-1
    t_i = (i-1)*div+1:i*div+1;      % time between two sample
    
    [phase_v1(:,t_i), freq_v1(t_i)] = RO_phase_gen(Vin_Pchannel(t_i),...
        F_display, K_vco, phase_v1(:, t_i(1)), div);    % generate phase values of VCO_1
    
    phase_v1(:,t_i) = mod(phase_v1(:,t_i), 2);          % reduce phase _v1 from 0 to 2pi radian
    
    if (i > 1)                                          % get rise pulse time (rpt) of phase_v1 signal
        [~, rpt] = find((fix(mod(phase_v1(:,t_i(1:end)), 2)).*~...
            fix(mod(phase_v1(:,t_i(1:end)-1), 2)))==1);
    end
    
    if(i>1)                         % initate counter1 in new clock cycle
        if (qtz(:, i-1)==1)
            counter1(:,t_i) = 0;    
        else
            counter1(:,t_i) = counter1(:, t_i(1)-1);
        end
    end
    
    counter1(:,t_i(rpt:end)) = 1;            % up down counter hold high value of phase_v1 signal
    V_dco2(t_i) = counter1(:,t_i)*V_bs2;     % caculate voltage supply for DCO_2
    
    [phase_d2(:,t_i), freq_d2(:,t_i)] = RO_phase_gen(V_dco2(t_i),...
        F_display, K_dco, phase_d2(:, t_i(1)), div);    % generate phase value of DCO_2
    
    if (i>1)                            % get rise pulse time (rpt) of phase_d2 signal
        [~, rpt] = find((fix(mod(phase_d2(:,t_i(2:end)), 2)).*~...
            fix(mod(phase_d2(:,t_i(1:end-1)), 2)))==1);
    end
    counter2(:,t_i) = 0;                % initate counter2 in new clock cycle
    counter2(:,t_i(rpt:end)) = 1;       % up down counter hold high value of phase_d2 signal
    
    qtz(:, i) = counter2(:,t_i(end));   % phase_d2 quantization (qtz)

end
%%
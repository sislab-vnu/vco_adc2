function [out_sinc3, out_integ] = decimation(input_sig, F_samp, OSR)
%integral
num = [1];
den = [1 -1];
Ts = 1/F_samp;
integral = filt(num,den,Ts);
%comb filter
num = [0 -1];   
den = [1];
Ts = 1/F_samp;
comb = filt(num, den, Ts)^OSR;
comb = 1-comb;

sinc1 = integral*comb;         %sinc filter first order
sinc3 = sinc1^3;               %sinc filter three order 
t_s = 0:1/F_samp:(length(input_sig)-1)/F_samp;
output_sinc3 = lsim(sinc3, input_sig, t_s(1:end));
tmp = lsim(integral^3, input_sig, t_s(1:end));
i = OSR:OSR:length(t_s);
out_integ = tmp(i);
i = 1:OSR:length(output_sinc3);
out_sinc3 = output_sinc3(i);
end

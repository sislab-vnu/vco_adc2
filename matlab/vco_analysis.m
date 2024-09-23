profile = "VCO65meas2";
n_order = 1;        %% set order of function
ub = 200; lb = 1;    %% set bounds of signal
[K_vco, freq_cal, acc]=vcoAnalysis(n_order,...
    eval(profile+".Vin"), eval(profile+".freq"), ub, lb);
%%
figure (1);
subplot ( 1, 2, 1);
scatter(eval(profile+".Vin"), eval(profile+".freq"));
hold on;
plot (eval(profile+".Vin(lb:ub)"), freq_cal(lb:ub));
subplot ( 1, 2, 2);
plot (eval(profile+".Vin(lb:ub)"), 100*acc(lb:ub)/freq_cal(lb:ub));
% hold on;
% subplot ( 2, 2, 3);
% plot (eval(profile+".Vin"), eval(profile+".Vctrl"));
% hold on;
% subplot ( 2, 2, 4);
% plot (eval(profile+".Vin"), eval(profile+".Vin")-2*eval(profile+".Vctrl"),  'LineWidth',2);
% hold on;
%% Function analyzes vco linear and extracts Kvco
function [kvco, y, diff_freq] = vcoAnalysis(n_order, vol, freq, ub, lb)
    kvco = polyfit(vol(lb:ub), freq(lb:ub), n_order);
    x = vol;
    switch n_order
        case 1
            y = kvco(1)*x + kvco(2);
        case 2    
            y = kvco(1)*x.^2 + kvco(2)*x + kvco(3);
        case 3
            y = kvco(1)*x.^3 + kvco(2)*x.^2 + kvco(3)*x + kvco(4);
        case 4
            y = kvco(1)*x.^4 + kvco(2)*x.^3 + kvco(3)*x.^2 + kvco(4)*x + kvco(5);
        case 5
            y = kvco(1)*x.^5 + kvco(2)*x.^4 + kvco(3)*x.^3 + kvco(4)*x.^2 + kvco(5)*x + kvco(6);
        case 6
            y = kvco(1)*x.^6 + kvco(2)*x.^5 + kvco(3)*x.^4 + kvco(4)*x.^3 + kvco(5)*x.^2 + kvco(6)*x + kvco(7);
    end
diff_freq =  y - freq;
end
%Fig 1 for power
figure(1)
subplot(4,1,1)
plot(time.time,ibatt.signals.values);
ylabel('I_{battery} Amp')
title('I_{battery} vs time')

subplot(4,1,2)
plot(time.time,soc.signals.values);
ylabel('SOC')
title('SOC vs time')

subplot(4,1,3)
plot(time.time,vbatt.signals.values);
ylabel('V_{battery} V')
title('V_{battery} vs time')

subplot(4,1,4)
plot(time.time,pbatt.signals.values);
xlabel('time(s)')
ylabel('P_{battery} KW')
title('P_{battery} vs. time')


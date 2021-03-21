%Fig 1 for power
figure(1)
subplot(4,1,1)
plot(time.time,P_gen.signals.values);
ylabel('P_{gen} KW')
title('P_{gen} vs time')

subplot(4,1,2)
plot(time.time,P_mot.signals.values);
ylabel('P_{mot} KW')
title('P_{mot} vs time')

subplot(4,1,3)
plot(time.time,P_eng.signals.values);
ylabel('P_{eng} KW')
title('P_{eng} vs time')

subplot(4,1,4)
plot(time.time,P_batt.signals.values);
xlabel('time(s)')
ylabel('P_{batt} KW')
title('P_{batt} vs. time')

%Fig 2 for speed
figure(2)
subplot(4,1,1)
plot(time.time,w_gen.signals.values);
ylabel('w_{gen} rpm')
title('w_{gen} vs time')

subplot(4,1,2)
plot(time.time,w_mot.signals.values);
ylabel('w_{mot} rpm')
title('w_{mot} vs time')

subplot(4,1,3)
plot(time.time,w_eng.signals.values);
ylabel('w_{eng} rpm')
title('w_{eng} vs time')

subplot(4,1,4)
plot(time.time,speed.signals.values);
xlabel('time(s)')
ylabel('v_{veh} mph')
title('v_{veh} vs time')

%Fig 3 for torque
figure(3)
subplot(3,1,1)
plot(time.time,T_gen.signals.values);
ylabel('T_{gen} Nm')
title('T_{gen} vs time')

subplot(3,1,2)
plot(time.time,T_mot.signals.values);
ylabel('T_{mot} Nm')
title('T_{mot} vs time')

subplot(3,1,3)
plot(time.time,T_eng.signals.values);
xlabel('time(s)')
ylabel('T_{eng} Nm')
title('T_{eng} vs time')


%Fig 4 for torque
figure(4)
subplot(2,1,1)
plot(time.time,E_batt.signals.values);
ylabel('E_{batt} KWhr')
title('E_{batt} vs time')

subplot(2,1,2)
plot(time.time,E_eng.signals.values);
ylabel('E_{eng} KWhr')
xlabel('time(s)')
title('E_{eng} vs time')
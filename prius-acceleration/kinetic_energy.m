
%rotation
M_veh = 1361 +100; % vehicle and driver mass in kg
% rotating inertias
J_eng = 0.1598; % engine inertia in kg-m^2 from SAE 2000-01-3096
J_mg1 = 0.02; % mg1 (generator) inertia in kg-m^2
J_mg2 = 0.05; % mg2 (motor) inertia in kg-m^2
N_s = 30; % number of sun teeth
N_r = 78; % number of ring teeth
G_fd = 0.2431; % ratio of wheel speed to motor speed
r_wheel = 0.3107; % wheel radius in m

% evaluate kinematic state matrix SLIDE 14
M_hat_veh = M_veh + J_mg1*(N_r/(N_s*G_fd*r_wheel))^2 ;
J_eng_hat = J_eng + J_mg1*((N_r+N_s)/N_s)^2;
K = J_mg1 * ((N_r+N_s)/N_s) * N_r/(N_s*G_fd*r_wheel);


%Energy calculated from simulink block simulation at 60mph
E_aero = 33.19; %in KJ, P_aero=F_aero*v_veh, then integrate and divide by 1000 
E_eng = 384.8;  %in KJ, P_eng integrated and divide by 1000
E_batt = 204.6; %in KJ, P_batt integrated and divide by 1000


%at 60 mph
v_veh = 26.82; %m/s
w_gen = 942.69; %9002 rpm converted to rad/s
w_mot = 355.21; %3392 rpm converted to rad/s
w_eng = 518.36; %4950 rpm converted to rad/s

%from slide 16
KE = (0.5*J_eng_hat*w_eng^2 + .5*M_hat_veh*v_veh^2 - K*w_eng*v_veh)/1000 + E_aero %in KJ
%Kinetic_energy = 0.5*(M_veh*v_veh^2 + J_eng*w_eng^2 + J_mg1*w_gen^2 + J_mg2*w_mot^2)/1000 + E_aero %KE in KJ

Vehicle_energy = E_eng + E_batt
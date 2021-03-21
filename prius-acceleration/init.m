clear all

M_veh = 1361 +100; % vehicle and driver mass in kg
C_D = 0.26;  % drag coefficient
C_0 = 0.00475;  % rolling resistance coefficient
A_F = 2.33;   % frontal area
eta_batt = 0.7; % battery efficiency
r_wheel = 0.3107; % wheel radius in m

% rotating inertias
J_eng = 0.1598; % engine inertia in kg-m^2 from SAE 2000-01-3096
J_mg1 = 0.02; % mg1 (generator) inertia in kg-m^2
J_mg2 = 0.05; % mg2 (motor) inertia in kg-m^2

N_s = 30; % number of sun teeth
N_r = 78; % number of ring teeth
G_fd = 0.2431; % ratio of wheel speed to motor speed

rho = 1.225; % density if air in 
g = 9.8; % acceeration due to gravity in m/s^s

m_to_mi = 1/1609; % meters to miles
g_hr_to_gal_s = 44.4/32.4 * 0.264 /1000/3600; % grams per hout to gal per s
mph_to_mps = 0.44704; % miles per hour to meters per s
mps_to_mph = 1/0.44704; % other way around
radps_to_rpm = 3600/377; %radians per sec to rev per min

w_eng_min = 1000 * 2*pi/60; % min engine speed
w_eng_max = 5000 * 2*pi/60; % max engine speed

w_gen_min = -10000 * 2*pi/60;  % min generator speed
w_gen_max = 9000 * 2*pi/60;   % max generator speed

Emax = 1.7*3.6e6; % in J -- 1kW-h = 3.6e6 J

P_mot_max = 50000;  % maximum motor power in W
P_gen_max = 30000;  % maximum generator power in W

T_mot_max = 400; %  maximum motor torque  in N-m
T_gen_max = 240; %  maximum generator torque  in N-m

P_eng_max = 57000.0;

% evaluate kinematic state matrix SLIDE 14
M_hat_veh = M_veh + J_mg1*(N_r/(N_s*G_fd*r_wheel))^2 ;
J_eng_hat = J_eng + J_mg1*((N_r+N_s)/N_s)^2;
K = J_mg1 * ((N_r+N_s)/N_s) * N_r/(N_s*G_fd*r_wheel);

A = [J_eng_hat -K; 
    -K M_hat_veh];

% form parameter data structure
Param.Ainv = inv(A);
Param.G_fd = G_fd;
Param.N_r = N_r;
Param.N_s = N_s;
Param.r_wheel = r_wheel;
Param.P_batt_max = 21000;
Param.P_eng_max = P_eng_max;
Param.w_eng_min = w_eng_min;

load full_throttle.mat

load optimum_bsfc.mat

F_trac_max = T_mot_max/(G_fd*r_wheel);





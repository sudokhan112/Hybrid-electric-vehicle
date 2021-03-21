
M_veh = 1746;  % vehicle weight, kg
C_D = 0.35;    % drag coefficient
C_0 = 0.015;   % rolling resistance coefficient
A_F = 1.93;    % frontal area, m^2
eta_ess = 0.7; % energy storage subsystem efficiency
r_wheel = 0.2794; % wheel radius, m
P_min_eng = 10000.0; % min engine power, W
P_max_eng = 80000.0; % max engine power, W

G_diff = 0.25;     % differential gear ratio
G_trans_min = 0.3; % minimum tansmission gear ratio

% unit conversions
m_to_mi = 1/1609; % meters to miles
g_hr_to_gal_s = 9.778e-8;  % g/hr to gal/s
mph_to_mps = 0.44704; % mi/hr to m/s

% physical constants
rho = 1.225; % density of air, kg/m^3
g = 9.8; % acceleration due to gravity,  m/s^s


SOC_init = 0.5; %initial SOC
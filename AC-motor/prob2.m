% motor parameters
P = 6; % number of poles
lambda_m = 0.1062;  %flux constant V-s/rad
rs = 0.01;  % stator resistance in ohms
Ld = 0.3e-3; %d-axis inductance in H
Lq = 0.3e-3; %q-axis inductance in H
V_batt = 350; %V

%Filter parameters
L = 5e-6; %inductance in H
R = 0.01; %resistance in ohms
C = 1e-3; %capacitance in F

% define electrical rotor speed
omega_r = 3000*2*pi/60 * P/2; %rad/s
omega_rm = 3000*2*pi/60; %rad/s

%Target torque +ve
%T_e_star = 100; %Nm
%Target torque -ve
T_e_star = -100; %Nm

%set d-axis current to zero for maximum efficiency
I_ds_star = 0;

%%%  solution  %%%

%determine q-axis current
I_qs_star = T_e_star * 2/P * 2/3 /lambda_m;

%calculate q- and d-axis components of stator voltages
V_qs_r = rs*I_qs_star + omega_r*Ld*I_ds_star + omega_r*lambda_m
V_ds_r = rs*I_ds_star - omega_r*Lq*I_qs_star 

%calculate peak ac voltage
V_max = sqrt ( V_qs_r^2 + V_ds_r^2 ) ; 
sprintf('Is V_max %.2f V smaller than Vbatt/sqrt(3) = 202 V? It should!', V_max)

%Calculate electrical and mechanical power
P_mech = T_e_star * omega_rm;
P_elec = 3/2 * V_qs_r * I_qs_star;
sprintf('Is P_mech %.2f W smaller than P_elec %.2f W? It should!', P_mech,P_elec)

% Assuming no inverter loss and R not-negligible
% P_dc = P_elec+Ploss
%I_batt = I_dc
I_batt = P_elec/V_batt %Amp
P_loss = R*I_batt^2
P_dc = P_elec+P_loss %W



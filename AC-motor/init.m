% motor parameters
P = 6; % number of poles
lambda_m = 0.1062;  %flux constant V-s/rad
rs = 0.01;  % stator resistance in ohms
Ld = 0.3e-3; %d-axis inductance in H
Lq = 0.3e-3; %q-axis inductance in H

%Filter parameters
L = 5e-6; %inductance in H
R = 0.01; %resistance in ohms
C = 1e-3; %capacitance in F

% define electrical rotor speed
omega_r = 3000*2*pi/60 * P/2; %rad/s

T_e_star = 100;
%determine q-axis current
I_qs_star = T_e_star * 2/P * 2/3 /lambda_m;

%set d-axis current to zero for maximum efficiency
I_ds_star = 0;

%calculate q- and d-axis components of stator voltages
V_qs = rs*I_qs_star + omega_r*Ld*I_ds_star + omega_r*lambda_m;
V_ds = rs*I_ds_star - omega_r*Lq*I_qs_star ;

%calculate peak ac voltage
V_p = sqrt(V_qs^2+V_ds^2);

V_batt = 350; 

Kq = 0.5;
Kd = 0.5;




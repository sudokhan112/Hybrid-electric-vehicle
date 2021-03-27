clear all

P = 6; % number of poles
lambda = 0.1062;  %flux constant V-s/rad
rs = 0.01;  % stator resistance in ohms
Ld = 0.3e-3; %d-axis inductance in H
Lq = 0.3e-3; %q-axis inductance in H
V_batt = 350;

%Filter parameters
L = 5e-6; %inductance in H
R = 0.01; %resistance in ohms
C = 1e-3; %capacitance in F

N_w = 10000;
N_i = 10000;
I_max = 210; %I_qs_star in amp
V_max = V_batt/sqrt(3); 
%I_max = V_max/R;


w_r = linspace ( 0 , 5000 , N_w); % in radians per second
i_ds = - linspace ( 0 , I_max , N_i ); % in A


for i =1:N_w
    Te_max = 0 ;
    %perform one dimensional search for optimal ids , iqs
    for j = 1 : N_i
        i_qs = sqrt(I_max^2 - i_ds(j)^2) ;
        v_qs = rs * i_qs + w_r(i) * ( Ld * i_ds(j) + lambda ) ;
        v_ds = rs * i_qs - w_r(i) * Lq * i_ds(j);
        v_p = sqrt ( v_qs^2 + v_ds^2 ) ;
        if ( v_p < V_max) % viable but not necessarily optimal solution
            T = 1.5 * (P/2) * lambda * i_qs ;
            if (T > Te_max )
                Te_max = T;
            end
        end
    end
    T_e (i) = Te_max ;
    w_rm (i) = 2*w_r(i)/P;
    P_mech (i) = Te_max * w_rm(i); 
    
end

figure
plot (w_rm, T_e)
title('Maximum torque vs mechanical speed')
xlabel('w_{rm} (rad/s)')
ylabel('Te_{max} (Nm)')

figure
plot (w_rm, P_mech/1000)
title('Maximum P_{mechanical} vs mechanical speed')
xlabel('w_{rm} (rad/s)')
ylabel('Max P_{mech} (KW)')
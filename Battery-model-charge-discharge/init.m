% Lookup Table Breakpoints
clearvars;

% Cell capacity
Capacity = 31; % Ampere*hours

Q = Capacity*3600; % cell capacity in Coulombs

% Terminal Resistance Properties

% R0 resistance vs SOC rows
R0 = 0.009;

% R1 Resistance vs SOC rows and T columns
R1 = 0.0015; %Ohms

% C1 Capacitance vs SOC rows and T columns
C1 = 3.5e4; %Farads

Ns = 80; % Number of cells in series
Np = 1;  % Number of celss in parallel

Q_batt = Q * Ns * Np; % net battery capacity
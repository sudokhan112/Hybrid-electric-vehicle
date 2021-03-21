# Hybrid-electric-vehicle

This repository contains simulation and modeling works related to hybrid electric vehicle powertrain and control. Some of the works are under Hybrid Vehicle Systems Graduate Certificate from Purdue University.

<img src="https://github.com/sudokhan112/Hybrid-electric-vehicle/blob/main/admin.png" width="600" height="400">

### 1. Analysis of Mild Parallel Hybrid Electric Vehicle

The primary objective of the first project is to analyze the performance of a mild parallel hybrid gas/electric vehicle. In this vehicle, an electric machine is to propel the vehicle at low speeds with the main engine disengaged. The electric machine is also used as a boost motor to improve high-speed accelerating characteristics. This permits a smaller internal combustion engine to be used without sacrificing overall performance. A block diagram of the vehicle is depicted here.

<img src="https://github.com/sudokhan112/Hybrid-electric-vehicle/blob/main/mild-hev/vehmod.png" width="600" height="400">

**Overall Conclusions:**
* Increasing Engine cutoff power (Pmin) increases mpg. But it also needs higher power from battery (bigger battery). Increasing battery size also increases battery weight which adversely affects mpg. This shows the importance of research on battery capacity to increase hybrid vehicle mpg. Increasing the battery size does not increase mpg and also maintain SOC within the desired limit. This indicates the given battery energy density is too low.
* Mpg increases more rapidly in urban stop and go cycle (LA92), than moderately highway cycle (US06).
* Increasing battery size (keeping very other variables same) decreases mpg.
* Decreasing the threshold to a certain limit in charge sustaining mode increases mpg. After that, battery weight is too high for any improvement.
* Using more aggressive power management (taking more power from motor) increases mpg more rapidly but decreases SOC more rapidly too.
* Decreasing Max engine power decreases mpg but increases SOC.
* Rule based optimization (what we are doing) is easy to implement and also provides insight into the system. But when too many variables are involved, it is hard to keep track of all the variables. A generalized optimization method may show us where the highest optimization (max mpg) happens. Then going to that optimization point through rule-based method could be a good exercise.
* Engine and motor mass can be considered separately to analyze how that affects when different sizes of engine (based on Pmax and Pmin) and motor is used.

**[Download code and detailed report](https://github.com/sudokhan112/Hybrid-electric-vehicle/tree/main/mild-hev)**

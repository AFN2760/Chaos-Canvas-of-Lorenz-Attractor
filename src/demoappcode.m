clc,clearvars,close all;

% Parameters
sigma = 10;
rho = 28;
beta = 8/3;

% Define the Lorenz equations
dx_dt = @(x, y, z) sigma * (y - x);
dy_dt = @(x, y, z) x * (rho - z) - y;
dz_dt = @(x, y, z) x * y - beta * z;

% Time span
tspan = [0, 50];
dt = 0.01;  % Time step size

% Initial conditions
x = 11;
y = 10;
z = 13;

% Initialize arrays to store trajectory
num_steps = ceil((tspan(2) - tspan(1)) / dt);
x_traj = zeros(num_steps, 1);
y_traj = zeros(num_steps, 1);
z_traj = zeros(num_steps, 1);
t_traj = zeros(num_steps, 1);
x_traj(1) = x;
y_traj(1) = y;
z_traj(1) = z;
t_traj(1) = tspan(1);

% Runge-Kutta method
for i = 1:num_steps-1
    k1_x = dx_dt(x, y, z);
    k1_y = dy_dt(x, y, z);
    k1_z = dz_dt(x, y, z);
    
    k2_x = dx_dt(x + 0.5*dt*k1_x, y + 0.5*dt*k1_y, z + 0.5*dt*k1_z);
    k2_y = dy_dt(x + 0.5*dt*k1_x, y + 0.5*dt*k1_y, z + 0.5*dt*k1_z);
    k2_z = dz_dt(x + 0.5*dt*k1_x, y + 0.5*dt*k1_y, z + 0.5*dt*k1_z);
    
    k3_x = dx_dt(x + 0.5*dt*k2_x, y + 0.5*dt*k2_y, z + 0.5*dt*k2_z);
    k3_y = dy_dt(x + 0.5*dt*k2_x, y + 0.5*dt*k2_y, z + 0.5*dt*k2_z);
    k3_z = dz_dt(x + 0.5*dt*k2_x, y + 0.5*dt*k2_y, z + 0.5*dt*k2_z);
    
    k4_x = dx_dt(x + dt*k3_x, y + dt*k3_y, z + dt*k3_z);
    k4_y = dy_dt(x + dt*k3_x, y + dt*k3_y, z + dt*k3_z);
    k4_z = dz_dt(x + dt*k3_x, y + dt*k3_y, z + dt*k3_z);
    
    x = x + (dt/6) * (k1_x + 2*k2_x + 2*k3_x + k4_x);
    y = y + (dt/6) * (k1_y + 2*k2_y + 2*k3_y + k4_y);
    z = z + (dt/6) * (k1_z + 2*k2_z + 2*k3_z + k4_z);
    
    t_traj(i+1) = t_traj(i) + dt;
    x_traj(i+1) = x;
    y_traj(i+1) = y;
    z_traj(i+1) = z;
end

% Plot the trajectory
figure(1);
plot(t_traj, x_traj);
xlabel('Time (t)');
ylabel('x');
title('x vs t');

figure(2);
plot(t_traj, y_traj);
xlabel('Time (t)');
ylabel('y');
title('y vs t');

figure(3);
plot(t_traj, z_traj);
xlabel('Time (t)');
ylabel('z');
title('z vs t');

figure(4)
plot(x_traj,y_traj);
xlabel('x'),ylabel('y');
grid on;
title('X vs Y');

figure(5)
plot(x_traj,z_traj);
xlabel('x'),ylabel('z');
grid on;
title('X vs Z');

figure(6)
plot3(x_traj,y_traj,z_traj);
xlabel('x'),ylabel('y'),zlabel('z');
grid on;
title('X vs Y vs Z');




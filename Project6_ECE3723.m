clc;
clear;
close all;
% Assign the value of L1,C1,L2,C2
L1 = 112.54e-9;
C1 = 37.806e-15;
L2 = 94.514e-12;
C2 = 45.016e-12;
% Source is 50 Ohm and Load is 50 Ohm
RS = 50;
RL = 50;
% Continuous-time transfer function.
s = tf('s');
% Create frequency domain function
Z1 = s*L1 + (1/(s*C1)) + RS;
Z2 = 1/(1/(s*L2) + s*C2 + (1/RL));
% Transfer function
H = Z2/(Z1 + Z2)
% Use bodeplot function to plot the graph
h = bodeplot(H);
% Transfer the frequency from rad/s to Hz
p = getoptions(h);
p.FreqUnits = 'Hz';
setoptions(h,p);
grid on;

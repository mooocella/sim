% updated motor map, THIS IS A TEST FUNCTION THAT WILL CALL THE MOTOR MODEL FUNCTION (called motor_op_point). This is a test run, but the real input should be fed in.

clear; clc; close all;

%% Script to call motor_op_point function

% input parameters
V_dc = 600;       % DC bus / peak-phase voltage limit (V)
T_dmd = 21;     % Requested electromagnetic torque (Nm)
Temp = 80;        % Temperature (Celsius)

% Call the motor operating point function
res = motor_op_point(V_dc, T_dmd, Temp);

%% Display results
fprintf('Motor Operating Point Results:\n');
fprintf('------------------------------------\n');
fprintf('Selected column index: %d\n', res.I_op_idx);
fprintf('Phase current (A): %.3f\n', res.I_op);
fprintf('Torque achieved (Nm): %.3f\n', res.T_Shaft);
fprintf('Phase-peak voltage (V): %.3f\n', res.V_op);
fprintf('Speed (rpm): %.1f\n', res.S_op);
fprintf('\nNotes:\n');
for k = 1:length(res.notes)
    fprintf(' - %s\n', res.notes{k});
end

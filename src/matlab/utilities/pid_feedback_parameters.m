% Script that defines parameters for this project

%   Copyright 2012 The MathWorks, Inc.

%% Specify control system sample time
T_IR_Control = 20e-3;
T_IR_Plant = 1e-3;
%% PID parameter setup 
% We would like the parameters of the PID controller to appear as a
% tunable structure in the generated code. To do this, we must first create
% a bus object - this configures the parameter typedef struct. Then we can
% create a parameter object which makes use of the bus object and defines
% default parameter values.

% Load bus object ready for parameter structure
pid_param_type;

% Create PID controller parameter object
LongiPid = Simulink.Parameter;
LongiPid.Value = Simulink.Bus.createMATLABStruct( 'pid_param' );
LongiPid.Value.P = 0.1;
LongiPid.Value.I = 1.0;
LongiPid.Value.D = 0.004;
%LongiPid.Value.N = 10000;
LongiPid.RTWInfo.StorageClass = 'SimulinkGlobal';
LongiPid.DataType = 'Bus: pid_param';

% Create PID controller parameter object
LatPid = Simulink.Parameter;
LatPid.Value = Simulink.Bus.createMATLABStruct( 'pid_param' );
LatPid.Value.P = 0.5;
LatPid.Value.I = 5.0;
LatPid.Value.D = 0.02;
%LatPid.Value.N = 1000;
LatPid.RTWInfo.StorageClass = 'SimulinkGlobal';
LatPid.DataType = 'Bus: pid_param';

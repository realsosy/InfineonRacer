function pid_param_type()
% pid_param_type  Initialize bus objects
% 
% pid_param_type initializes a set of bus objects in the MATLAB base
% workspace. Automatically created using the following command:
%
%   Simulink.Bus.save('pid_param_type.m', 'object')

%   Copyright 2012 The MathWorks, Inc.

% Bus object: pid_param 
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'P';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).SampleTime = -1;
elems(1).Complexity = 'real';
elems(1).SamplingMode = 'Sample based';
elems(1).Min = [];
elems(1).Max = [];

elems(2) = Simulink.BusElement;
elems(2).Name = 'I';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).SampleTime = -1;
elems(2).Complexity = 'real';
elems(2).SamplingMode = 'Sample based';
elems(2).Min = [];
elems(2).Max = [];

elems(3) = Simulink.BusElement;
elems(3).Name = 'D';
elems(3).Dimensions = 1;
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).SampleTime = -1;
elems(3).Complexity = 'real';
elems(3).SamplingMode = 'Sample based';
elems(3).Min = [];
elems(3).Max = [];

elems(4) = Simulink.BusElement;
elems(4).Name = 'N';
elems(4).Dimensions = 1;
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'double';
elems(4).SampleTime = -1;
elems(4).Complexity = 'real';
elems(4).SamplingMode = 'Sample based';
elems(4).Min = [];
elems(4).Max = [];

pid_param = Simulink.Bus;
pid_param.HeaderFile = '';
pid_param.Description = sprintf('');
pid_param.DataScope = 'Auto';
pid_param.Alignment = -1;
pid_param.Elements = elems;
assignin('base', 'pid_param', pid_param)


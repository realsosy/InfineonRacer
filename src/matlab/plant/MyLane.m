function MyLane(block)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

setup(block);

function setup(block)
% Register number of ports and parameters
block.NumInputPorts  = 2;
block.NumOutputPorts = 2;

% Setup functional port properties to dynamically inherited
block.SetPreCompInpPortInfoToDynamic;
block.SetPreCompOutPortInfoToDynamic;

% Register the properties of the input port
block.InputPort(1).DataTypeID        = 0;
block.InputPort(1).Complexity        = 'Real';
block.InputPort(1).SamplingMode      = 'Sample';
block.InputPort(1).Dimensions       = [1,1];
block.InputPort(1).DimensionsMode    = 'Fixed';

block.InputPort(2).DataTypeID        = 0;
block.InputPort(2).Complexity        = 'Real';
block.InputPort(2).SamplingMode      = 'Sample';
block.InputPort(2).Dimensions       = [1,1];
block.InputPort(2).DimensionsMode    = 'Fixed';


% Register the properties of the output port
  block.OutputPort(1).DatatypeID  = 0; % double
  block.OutputPort(1).Complexity  = 'Real';
  block.OutputPort(1).SamplingMode = 'Sample';
  block.OutputPort(1).Dimensions   = [128,1];
  block.OutputPort(1).DimensionsMode    = 'Fixed';

  block.OutputPort(2).DatatypeID  = 0; % double
  block.OutputPort(2).Complexity  = 'Real';
  block.OutputPort(2).SamplingMode = 'Sample';
  block.OutputPort(2).Dimensions = [128,1];
  block.OutputPort(2).DimensionsMode    = 'Fixed';

% Register sample times
  %  [0 offset]            : Continuous sample time
  %  [positive_num offset] : Discrete sample time
  %
  %  [-1, 0]               : Inherited sample time
  %  [-2, 0]               : Variable sample time
block.SampleTimes = [-1 0];

block.SimStateCompliance = 'HasNoSimState';

% % Register methods called during update diagram/compilation
% %block.RegBlockMethod('SetInputPortDimensions',      @SetInputPortDims);
% block.RegBlockMethod('PostPropagationSetup',        @DoPostPropSetup);
% 
% Register methods called at run-time
block.RegBlockMethod('SetInputPortDimensions', @SetInpPortDims);
block.RegBlockMethod('SetOutputPortDimensions', @SetOutPortDims);

block.RegBlockMethod('PostPropagationSetup',@DoPostPropSetup);
block.RegBlockMethod('InitializeConditions',@InitConditions);
block.RegBlockMethod('Outputs',             @Outputs);  
block.RegBlockMethod('Update',              @Update);  

function SetInpPortDims(block, idx, di)
  
  block.InputPort(idx).Dimensions = di;
%  block.OutputPort(1).Dimensions  = di;

%endfunction

function SetOutPortDims(block, idx, di)
  
  block.OutputPort(idx).Dimensions = di;
%  block.InputPort(1).Dimensions    = di;

%endfunction

function InitConditions(block)

% Initialize Dwork
%  block.Dwork(1).Data = block.DialogPrm(1).Data;
% -------------------------------------------------------------------------
function DoPostPropSetup(block)
% Set the type of signal size to be dependent on input values, i.e.,
% dimensions have to be updated at output
%block.SignalSizesComputeType = 'FromInputValueAndSize';

function Update(block)

function Outputs(block)
% Output function:
% -update output values
% -update signal dimensions
%block.OutputPort(1).CurrentDimensions = [1 block.InputPort(1).Data];
    for i = 1:128
        if i<(128-64+block.InputPort(1).Data)
            block.OutputPort(1).Data(i) = 0;
            block.OutputPort(2).Data(i) = block.InputPort(2).Data;
        else
            block.OutputPort(1).Data(i) = block.InputPort(2).Data;
            block.OutputPort(2).Data(i) = 0;
        end
        
    end
function generate_controller_code()
%generate_controller_code
%

%   Copyright 2012 The MathWorks, Inc.

% Use the Simulink Coder API to generate code for controllerModel:

controllerModel = 'IR_Controller';

if(~bdIsLoaded(controllerModel))
    open_system(controllerModel);
end

slbuild(controllerModel);
% coder.report.generate(controllerModel);

!cp ./work/IR_Controller_ert_rtw/IR_Controller.c ../InfineonRacer_TC23A/0_Src/AppSw/Tricore/Algorithm/ert
!cp ./work/IR_Controller_ert_rtw/IR_Controller.h ../InfineonRacer_TC23A/0_Src/AppSw/Tricore/Algorithm/ert
!cp ./work/IR_Controller_ert_rtw/IR_Controller_data.c ../InfineonRacer_TC23A/0_Src/AppSw/Tricore/Algorithm/ert
!cp ./work/IR_Controller_ert_rtw/IR_Controller_private.h ../InfineonRacer_TC23A/0_Src/AppSw/Tricore/Algorithm/ert
!cp ./work/IR_Controller_ert_rtw/IR_Controller_types.h ../InfineonRacer_TC23A/0_Src/AppSw/Tricore/Algorithm/ert
!cp ./work/IR_Controller_ert_rtw/rtwtypes.h ../InfineonRacer_TC23A/0_Src/AppSw/Tricore/Algorithm/ert
end


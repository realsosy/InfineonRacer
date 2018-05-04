/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: IR_Controller.c
 *
 * Code generated for Simulink model 'IR_Controller'.
 *
 * Model version                  : 1.135
 * Simulink Coder version         : 8.13 (R2017b) 24-Jul-2017
 * C/C++ source code generated on : Fri May  4 09:46:39 2018
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Infineon->TriCore
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "IR_Controller.h"
#include "IR_Controller_private.h"

/* Block states (auto storage) */
D_Work_IR_Controller IR_Controller_DWork;

/* Real-time model */
RT_MODEL_IR_Controller IR_Controller_M_;
RT_MODEL_IR_Controller *const IR_Controller_M = &IR_Controller_M_;

/* Model step function */
void IR_Controller_step(void)
{
  real_T rtb_LaneOffset;
  real_T rtb_ProportionalGain;
  real_T rtb_TSamp;
  int32_T rtb_PulseGenerator1;
  real_T Integrator;

  /* DiscretePulseGenerator: '<Root>/Pulse Generator' */
  rtb_LaneOffset = ((IR_Controller_DWork.clockTickCounter < 125) &&
                    (IR_Controller_DWork.clockTickCounter >= 0)) ? 100.0 : 0.0;
  if (IR_Controller_DWork.clockTickCounter >= 249) {
    IR_Controller_DWork.clockTickCounter = 0;
  } else {
    IR_Controller_DWork.clockTickCounter++;
  }

  /* End of DiscretePulseGenerator: '<Root>/Pulse Generator' */

  /* Sum: '<Root>/Add' incorporates:
   *  Inport: '<Root>/EncSpd'
   */
  rtb_LaneOffset -= IR_getEncSpeed();

  /* Gain: '<S2>/Proportional Gain' */
  rtb_ProportionalGain = IR_Controller_P.LongiPid.P * rtb_LaneOffset;

  /* DiscreteIntegrator: '<S2>/Integrator' incorporates:
   *  Gain: '<S2>/Integral Gain'
   */
  Integrator = ((IR_Controller_P.LongiPid.I * rtb_LaneOffset) * 0.02) +
    IR_Controller_DWork.Integrator_DSTATE;

  /* Gain: '<S2>/Derivative Gain' */
  rtb_LaneOffset *= IR_Controller_P.LongiPid.D;

  /* SampleTimeMath: '<S4>/TSamp'
   *
   * About '<S4>/TSamp':
   *  y = u * K where K = 1 / ( w * Ts )
   */
  rtb_TSamp = rtb_LaneOffset * 50.0;

  /* Sum: '<S2>/Sum' incorporates:
   *  Delay: '<S4>/UD'
   *  Sum: '<S4>/Diff'
   */
  IR_setMotor0Vol((rtb_ProportionalGain + Integrator) + (rtb_TSamp -
    IR_Controller_DWork.UD_DSTATE));

  /* Sum: '<Root>/Add2' incorporates:
   *  Inport: '<Root>/L0Margin'
   *  Inport: '<Root>/L1Margin'
   */
  rtb_LaneOffset = IR_getLs1Margin() - IR_getLs0Margin();

  /* SampleTimeMath: '<S3>/TSamp' incorporates:
   *  Gain: '<S1>/Derivative Gain'
   *
   * About '<S3>/TSamp':
   *  y = u * K where K = 1 / ( w * Ts )
   */
  rtb_ProportionalGain = (IR_Controller_P.LatPid.D * rtb_LaneOffset) * 50.0;

  /* Sum: '<S1>/Sum' incorporates:
   *  Delay: '<S3>/UD'
   *  DiscreteIntegrator: '<S1>/Integrator'
   *  Gain: '<S1>/Proportional Gain'
   *  Sum: '<S3>/Diff'
   */
  IR_setSrvAngle(((IR_Controller_P.LatPid.P * rtb_LaneOffset) +
                  IR_Controller_DWork.Integrator_DSTATE_p) +
                 (rtb_ProportionalGain - IR_Controller_DWork.UD_DSTATE_d));

  /* DiscretePulseGenerator: '<Root>/Pulse Generator1' */
  rtb_PulseGenerator1 = ((IR_Controller_DWork.clockTickCounter_a < 25) &&
    (IR_Controller_DWork.clockTickCounter_a >= 0));
  if (IR_Controller_DWork.clockTickCounter_a >= 49) {
    IR_Controller_DWork.clockTickCounter_a = 0;
  } else {
    IR_Controller_DWork.clockTickCounter_a++;
  }

  /* End of DiscretePulseGenerator: '<Root>/Pulse Generator1' */

  /* DataTypeConversion: '<Root>/Data Type Conversion' */
  IR_setLed108((rtb_PulseGenerator1 != 0));

  /* Update for DiscreteIntegrator: '<S2>/Integrator' */
  IR_Controller_DWork.Integrator_DSTATE = Integrator;

  /* Update for Delay: '<S4>/UD' */
  IR_Controller_DWork.UD_DSTATE = rtb_TSamp;

  /* Update for DiscreteIntegrator: '<S1>/Integrator' incorporates:
   *  Gain: '<S1>/Integral Gain'
   */
  IR_Controller_DWork.Integrator_DSTATE_p += (IR_Controller_P.LatPid.I *
    rtb_LaneOffset) * 0.02;

  /* Update for Delay: '<S3>/UD' */
  IR_Controller_DWork.UD_DSTATE_d = rtb_ProportionalGain;
}

/* Model initialize function */
void IR_Controller_initialize(void)
{
  /* Start for DiscretePulseGenerator: '<Root>/Pulse Generator' */
  IR_Controller_DWork.clockTickCounter = -50;

  /* ConstCode for Constant: '<Root>/Constant' */
  IR_setMotor0En(1.0);
}

/* Model terminate function */
void IR_Controller_terminate(void)
{
  /* (no terminate code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: IR_Controller_data.c
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

/* Block parameters (auto storage) */
Parameters_IR_Controller IR_Controller_P = {
  /* Variable: LatPid
   * Referenced by:
   *   '<S1>/Derivative Gain'
   *   '<S1>/Integral Gain'
   *   '<S1>/Proportional Gain'
   */
  {
    0.7,
    7.0,
    0.02,
    0.0
  },

  /* Variable: LongiPid
   * Referenced by:
   *   '<S2>/Derivative Gain'
   *   '<S2>/Integral Gain'
   *   '<S2>/Proportional Gain'
   */
  {
    0.1,
    1.0,
    0.004,
    0.0
  }
};

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

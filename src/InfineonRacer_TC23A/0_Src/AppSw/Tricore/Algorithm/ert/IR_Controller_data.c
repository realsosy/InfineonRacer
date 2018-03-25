/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: IR_Controller_data.c
 *
 * Code generated for Simulink model 'IR_Controller'.
 *
 * Model version                  : 1.127
 * Simulink Coder version         : 8.11 (R2016b) 25-Aug-2016
 * C/C++ source code generated on : Tue Feb 06 00:39:45 2018
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
  {
    0.5,
    5.0,
    0.02,
    0.0
  },                                   /* Variable: LatPid
                                        * Referenced by:
                                        *   '<S1>/Derivative Gain'
                                        *   '<S1>/Integral Gain'
                                        *   '<S1>/Proportional Gain'
                                        */

  {
    0.1,
    1.0,
    0.004,
    0.0
  }                                    /* Variable: LongiPid
                                        * Referenced by:
                                        *   '<S2>/Derivative Gain'
                                        *   '<S2>/Integral Gain'
                                        *   '<S2>/Proportional Gain'
                                        */
};

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

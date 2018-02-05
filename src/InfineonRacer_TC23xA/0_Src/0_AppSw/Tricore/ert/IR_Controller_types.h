/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: IR_Controller_types.h
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

#ifndef RTW_HEADER_IR_Controller_types_h_
#define RTW_HEADER_IR_Controller_types_h_
#include "rtwtypes.h"
#ifndef DEFINED_TYPEDEF_FOR_pid_param_
#define DEFINED_TYPEDEF_FOR_pid_param_

typedef struct {
  real_T P;
  real_T I;
  real_T D;
  real_T N;
} pid_param;

#endif

/* Parameters (auto storage) */
typedef struct Parameters_IR_Controller_ Parameters_IR_Controller;

/* Forward declaration for rtModel */
typedef struct tag_RTM_IR_Controller RT_MODEL_IR_Controller;

#endif                                 /* RTW_HEADER_IR_Controller_types_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: IR_Controller.h
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

#ifndef RTW_HEADER_IR_Controller_h_
#define RTW_HEADER_IR_Controller_h_
#ifndef IR_Controller_COMMON_INCLUDES_
# define IR_Controller_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* IR_Controller_COMMON_INCLUDES_ */

#include "IR_Controller_types.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
# define rtmGetErrorStatus(rtm)        ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
# define rtmSetErrorStatus(rtm, val)   ((rtm)->errorStatus = (val))
#endif

/* Block states (auto storage) for system '<Root>' */
typedef struct {
  real_T Integrator_DSTATE;            /* '<S2>/Integrator' */
  real_T UD_DSTATE;                    /* '<S4>/UD' */
  real_T Integrator_DSTATE_p;          /* '<S1>/Integrator' */
  real_T UD_DSTATE_d;                  /* '<S3>/UD' */
  int32_T clockTickCounter;            /* '<Root>/Pulse Generator' */
  int32_T clockTickCounter_a;          /* '<Root>/Pulse Generator1' */
} D_Work_IR_Controller;

/* Parameters (auto storage) */
struct Parameters_IR_Controller_ {
  pid_param LatPid;                    /* Variable: LatPid
                                        * Referenced by:
                                        *   '<S1>/Derivative Gain'
                                        *   '<S1>/Integral Gain'
                                        *   '<S1>/Proportional Gain'
                                        */
  pid_param LongiPid;                  /* Variable: LongiPid
                                        * Referenced by:
                                        *   '<S2>/Derivative Gain'
                                        *   '<S2>/Integral Gain'
                                        *   '<S2>/Proportional Gain'
                                        */
};

/* Real-time Model Data Structure */
struct tag_RTM_IR_Controller {
  const char_T * volatile errorStatus;
};

/* Block parameters (auto storage) */
extern Parameters_IR_Controller IR_Controller_P;

/* Block states (auto storage) */
extern D_Work_IR_Controller IR_Controller_DWork;

/* Model entry point functions */
extern void IR_Controller_initialize(void);
extern void IR_Controller_step(void);
extern void IR_Controller_terminate(void);

/* Real-time Model object */
extern RT_MODEL_IR_Controller *const IR_Controller_M;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'IR_Controller'
 * '<S1>'   : 'IR_Controller/LatPidCtrl'
 * '<S2>'   : 'IR_Controller/LongiPidCtrl'
 * '<S3>'   : 'IR_Controller/LatPidCtrl/Differentiator'
 * '<S4>'   : 'IR_Controller/LongiPidCtrl/Differentiator'
 */
#endif                                 /* RTW_HEADER_IR_Controller_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

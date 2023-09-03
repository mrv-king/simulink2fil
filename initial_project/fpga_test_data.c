/*
 * fpga_test_data.c
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "fpga_test".
 *
 * Model version              : 1.19
 * Simulink Coder version : 9.1 (R2019a) 23-Nov-2018
 * C source code generated on : Tue Aug 22 16:01:50 2023
 *
 * Target selection: grt.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Emulation hardware selection:
 *    Differs from embedded hardware (Intel->x86-32 (Windows32))
 * Code generation objective: Execution efficiency
 * Validation result: Not run
 */

#include "fpga_test.h"
#include "fpga_test_private.h"

/* Block parameters (default storage) */
P_fpga_test_T fpga_test_P = {
  /* Mask Parameter: my_source_Amplitude
   * Referenced by: '<S7>/AC'
   */
  100.0,

  /* Mask Parameter: my_source_Frequency
   * Referenced by: '<S7>/AC'
   */
  60.0,

  /* Mask Parameter: my_source_Phase
   * Referenced by: '<S7>/AC'
   */
  0.0,

  /* Expression: zeros(1,1)
   * Referenced by: '<S10>/SwitchCurrents'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S7>/AC'
   */
  0.0,

  /* Expression: S.D
   * Referenced by: '<S8>/State-Space'
   */
  { -0.99999900000100006, 0.99999900000100006, 0.999999000001, 9.99999000001E-7
  },

  /* Expression: 1
   * Referenced by: '<S4>/do not delete this gain'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<S5>/0 1'
   */
  0.0,

  /* Expression: 2
   * Referenced by: '<S5>/Gain'
   */
  2.0,

  /* Expression: 0
   * Referenced by: '<S5>/Delay Ts'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S5>/Delay Ts '
   */
  0.0,

  /* Expression: BR.com
   * Referenced by: '<S5>/C4'
   */
  1.0,

  /* Expression: tv
   * Referenced by: '<S6>/Look-Up Table'
   */
  { -1.0, 0.0, 1.0E+6, 1.0E+6, 1.000001E+6 },

  /* Expression: opv
   * Referenced by: '<S6>/Look-Up Table'
   */
  { 1.0, 1.0, 1.0, 0.0, 0.0 },

  /* Expression: 0.5
   * Referenced by: '<S5>/Switch3'
   */
  0.5,

  /* Expression: 1.5
   * Referenced by: '<S5>/>1.5'
   */
  1.5,

  /* Expression: 0
   * Referenced by: '<S5>/>1.5'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<S5>/>1.5'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<S5>/>1.5'
   */
  0.0,

  /* Expression: double(InitialState)
   * Referenced by: '<S5>/IC'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S6>/Hit  Crossing'
   */
  0.0
};

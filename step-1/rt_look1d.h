/*
 * rt_look1d.h
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "fpga_test".
 *
 * Model version              : 1.28
 * Simulink Coder version : 9.1 (R2019a) 23-Nov-2018
 * C source code generated on : Sun Sep  3 16:57:40 2023
 *
 * Target selection: grt.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Emulation hardware selection:
 *    Differs from embedded hardware (Intel->x86-32 (Windows32))
 * Code generation objective: Execution efficiency
 * Validation result: Not run
 */

#ifndef RTW_HEADER_rt_look1d_h_
#define RTW_HEADER_rt_look1d_h_
#include "rtwtypes.h"
#include "rt_look.h"

extern real_T rt_Lookup(const real_T *x, int_T xlen, real_T u, const real_T *y);

#endif                                 /* RTW_HEADER_rt_look1d_h_ */
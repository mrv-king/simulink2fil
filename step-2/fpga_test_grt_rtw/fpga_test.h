/*
 * fpga_test.h
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

#ifndef RTW_HEADER_fpga_test_h_
#define RTW_HEADER_fpga_test_h_
#include <math.h>
#include <float.h>
#include <string.h>
#include <stddef.h>
#include "rtw_modelmap.h"
#ifndef fpga_test_COMMON_INCLUDES_
# define fpga_test_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#include "rt_logging.h"
#endif                                 /* fpga_test_COMMON_INCLUDES_ */

#include "fpga_test_types.h"

/* Shared type includes */
#include "multiword_types.h"
#include "rtGetInf.h"
#include "rt_nonfinite.h"
#include "rt_look.h"
#include "rt_look1d.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetDataMapInfo
# define rtmGetDataMapInfo(rtm)        ((rtm)->DataMapInfo)
#endif

#ifndef rtmSetDataMapInfo
# define rtmSetDataMapInfo(rtm, val)   ((rtm)->DataMapInfo = (val))
#endif

#ifndef rtmGetFinalTime
# define rtmGetFinalTime(rtm)          ((rtm)->Timing.tFinal)
#endif

#ifndef rtmGetRTWLogInfo
# define rtmGetRTWLogInfo(rtm)         ((rtm)->rtwLogInfo)
#endif

#ifndef rtmGetErrorStatus
# define rtmGetErrorStatus(rtm)        ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
# define rtmSetErrorStatus(rtm, val)   ((rtm)->errorStatus = (val))
#endif

#ifndef rtmGetStopRequested
# define rtmGetStopRequested(rtm)      ((rtm)->Timing.stopRequestedFlag)
#endif

#ifndef rtmSetStopRequested
# define rtmSetStopRequested(rtm, val) ((rtm)->Timing.stopRequestedFlag = (val))
#endif

#ifndef rtmGetStopRequestedPtr
# define rtmGetStopRequestedPtr(rtm)   (&((rtm)->Timing.stopRequestedFlag))
#endif

#ifndef rtmGetT
# define rtmGetT(rtm)                  (rtmGetTPtr((rtm))[0])
#endif

#ifndef rtmGetTFinal
# define rtmGetTFinal(rtm)             ((rtm)->Timing.tFinal)
#endif

#ifndef rtmGetTPtr
# define rtmGetTPtr(rtm)               ((rtm)->Timing.t)
#endif

/* Block signals (default storage) */
typedef struct {
  float AC;                           /* '<S7>/AC' */
  real_T StateSpace_o1[2];             /* '<S8>/State-Space' */
  real_T StateSpace_o2;                /* '<S8>/State-Space' */
  real_T DataTypeConversion2;          /* '<S5>/Data Type  Conversion2' */
  real_T LookUpTable;                  /* '<S6>/Look-Up Table' */
  real_T IC;                           /* '<S5>/IC' */
  real_T Derivative;                   /* '<S6>/Derivative' */
  boolean_T DataTypeConversion1;       /* '<S5>/Data Type  Conversion1' */
} B_fpga_test_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  real_T DelayTs_DSTATE;               /* '<S5>/Delay Ts' */
  real_T DelayTs_DSTATE_f;             /* '<S5>/Delay Ts ' */
  real_T IC_FirstOutputTime;           /* '<S5>/IC' */
  real_T TimeStampA;                   /* '<S6>/Derivative' */
  real_T LastUAtTimeA;                 /* '<S6>/Derivative' */
  real_T TimeStampB;                   /* '<S6>/Derivative' */
  real_T LastUAtTimeB;                 /* '<S6>/Derivative' */
  struct {
	real_T DS[4];
	real_T DX_COL[2];
    real_T TMP2[2];
    int_T SWITCH_STATUS;
    int_T SWITCH_STATUS_INIT;
    int_T SW_CHG;
    int_T G_STATE;
    real_T USWLAST;
    real_T Y_SWITCH;
    int_T SWITCH_TYPES;
    int_T IDX_OUT_SW;
  } StateSpace_PWORK;                  /* '<S8>/State-Space' */

  int_T StateSpace_IWORK[11];          /* '<S8>/State-Space' */
  boolean_T u5_Mode;                   /* '<S5>/>1.5' */
} DW_fpga_test_T;

/* External inputs (root inport signals with default storage) */
typedef struct {
  boolean_T my_input;                     /* '<Root>/my_input' */
} ExtU_fpga_test_T;

/* External outputs (root outports fed by signals with default storage) */
typedef struct {
  int my_output;                    /* '<Root>/my_output' */
} ExtY_fpga_test_T;

/* Parameters (default storage) */
struct P_fpga_test_T_ {
  real_T my_source_Amplitude;          /* Mask Parameter: my_source_Amplitude
                                        * Referenced by: '<S7>/AC'
                                        */
  real_T my_source_Frequency;          /* Mask Parameter: my_source_Frequency
                                        * Referenced by: '<S7>/AC'
                                        */
  real_T my_source_Phase;              /* Mask Parameter: my_source_Phase
                                        * Referenced by: '<S7>/AC'
                                        */
  real_T SwitchCurrents_Value;         /* Expression: zeros(1,1)
                                        * Referenced by: '<S10>/SwitchCurrents'
                                        */
  real_T AC_Bias;                      /* Expression: 0
                                        * Referenced by: '<S7>/AC'
                                        */
  real_T StateSpace_DS_param[4];       /* Expression: S.D
                                        * Referenced by: '<S8>/State-Space'
                                        */
  real_T donotdeletethisgain_Gain;     /* Expression: 1
                                        * Referenced by: '<S4>/do not delete this gain'
                                        */
  real_T u1_Value;                     /* Expression: 0
                                        * Referenced by: '<S5>/0 1'
                                        */
  real_T Gain_Gain;                    /* Expression: 2
                                        * Referenced by: '<S5>/Gain'
                                        */
  real_T DelayTs_InitialCondition;     /* Expression: 0
                                        * Referenced by: '<S5>/Delay Ts'
                                        */
  real_T DelayTs_InitialCondition_m;   /* Expression: 0
                                        * Referenced by: '<S5>/Delay Ts '
                                        */
  real_T C4_Value;                     /* Expression: BR.com
                                        * Referenced by: '<S5>/C4'
                                        */
  real_T LookUpTable_XData[5];         /* Expression: tv
                                        * Referenced by: '<S6>/Look-Up Table'
                                        */
  real_T LookUpTable_YData[5];         /* Expression: opv
                                        * Referenced by: '<S6>/Look-Up Table'
                                        */
  real_T Switch3_Threshold;            /* Expression: 0.5
                                        * Referenced by: '<S5>/Switch3'
                                        */
  real_T u5_OnVal;                     /* Expression: 1.5
                                        * Referenced by: '<S5>/>1.5'
                                        */
  real_T u5_OffVal;                    /* Expression: 0
                                        * Referenced by: '<S5>/>1.5'
                                        */
  real_T u5_YOn;                       /* Expression: 1
                                        * Referenced by: '<S5>/>1.5'
                                        */
  real_T u5_YOff;                      /* Expression: 0
                                        * Referenced by: '<S5>/>1.5'
                                        */
  real_T IC_Value;                     /* Expression: double(InitialState)
                                        * Referenced by: '<S5>/IC'
                                        */
  real_T HitCrossing_Offset;           /* Expression: 0
                                        * Referenced by: '<S6>/Hit  Crossing'
                                        */
};

/* Real-time Model Data Structure */
struct tag_RTM_fpga_test_T {
  //char_T errorStatus;
  //RTWLogInfo rtwLogInfo;
  //RTWSolverInfo solverInfo;

  /*
   * DataMapInfo:
   * The following substructure contains information regarding
   * structures generated in the model's C API.
   */
  /*struct {
    rtwCAPI_ModelMappingInfo mmi;
  } DataMapInfo;*/

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    uint32_T clockTick0;
    uint32_T clockTickH0;
    time_T stepSize0;
    uint32_T clockTick1;
    uint32_T clockTickH1;
    time_T tFinal;
    //SimTimeStep simTimeStep;
    boolean_T stopRequestedFlag;
    time_T t[2];
    time_T tArray[2];
  } Timing;
};

/* Block parameters (default storage) */
extern P_fpga_test_T fpga_test_P;

/* Block signals (default storage) */
extern B_fpga_test_T fpga_test_B;

/* Block states (default storage) */
extern DW_fpga_test_T fpga_test_DW;

/* External inputs (root inport signals with default storage) */
extern ExtU_fpga_test_T fpga_test_U;

/* External outputs (root outports fed by signals with default storage) */
extern ExtY_fpga_test_T fpga_test_Y;

/* Real-time Model object */
extern RT_MODEL_fpga_test_T fpga_test_M;

/* Model entry point functions */
extern void fpga_test_initialize(B_fpga_test_T* _fpga_test_B, DW_fpga_test_T* _fpga_test_DW, RT_MODEL_fpga_test_T * fpga_test_M);
extern void fpga_test_step(ExtU_fpga_test_T fpga_test_U, ExtY_fpga_test_T* fpga_test_Y, B_fpga_test_T fpga_test_B, B_fpga_test_T *_fpga_test_B, DW_fpga_test_T fpga_test_DW, DW_fpga_test_T* _fpga_test_DW, RT_MODEL_fpga_test_T* fpga_test_M);
extern void fpga_test_terminate(void);

/* Function to get C API Model Mapping Static Info */
extern const rtwCAPI_ModelMappingStaticInfo*
  fpga_test_GetCAPIStaticMap(void);



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
 * '<Root>' : 'fpga_test'
 * '<S1>'   : 'fpga_test/my_breaker'
 * '<S2>'   : 'fpga_test/my_source'
 * '<S3>'   : 'fpga_test/powergui'
 * '<S4>'   : 'fpga_test/vs'
 * '<S5>'   : 'fpga_test/my_breaker/Model'
 * '<S6>'   : 'fpga_test/my_breaker/Model/Timer'
 * '<S7>'   : 'fpga_test/my_source/Model'
 * '<S8>'   : 'fpga_test/powergui/EquivalentModel1'
 * '<S9>'   : 'fpga_test/powergui/EquivalentModel1/Gates'
 * '<S10>'  : 'fpga_test/powergui/EquivalentModel1/Sources'
 * '<S11>'  : 'fpga_test/powergui/EquivalentModel1/Status'
 * '<S12>'  : 'fpga_test/powergui/EquivalentModel1/Yout'
 * '<S13>'  : 'fpga_test/vs/Model'
 */
#endif                                 /* RTW_HEADER_fpga_test_h_ */

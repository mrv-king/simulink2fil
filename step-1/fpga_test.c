/*
 * fpga_test.c
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

#include "rt_logging_mmi.h"
#include "fpga_test_capi.h"
#include "fpga_test.h"
#include "fpga_test_private.h"

/* Block signals (default storage) */
B_fpga_test_T fpga_test_B;

/* Block states (default storage) */
DW_fpga_test_T fpga_test_DW;

/* External inputs (root inport signals with default storage) */
ExtU_fpga_test_T fpga_test_U;

/* External outputs (root outports fed by signals with default storage) */
ExtY_fpga_test_T fpga_test_Y;

/* Real-time model */
RT_MODEL_fpga_test_T fpga_test_M_;
RT_MODEL_fpga_test_T *const fpga_test_M = &fpga_test_M_;

/* Model step function */
void fpga_test_step(void)
{
  /* local block i/o variables */
  real_T rtb_Sum;

  {
    real_T *lastU;
    real_T rtb_DataTypeConversion;
    real_T rtb_sum;
    real_T AC_tmp;
    real_T LookUpTable_tmp;

    /* Sin: '<S7>/AC' incorporates:
     *  InitialCondition: '<S5>/IC'
     */
    AC_tmp = fpga_test_M->Timing.t[0];
    fpga_test_B.AC = sin(6.2831853071795862 * fpga_test_P.my_source_Frequency *
                         AC_tmp + fpga_test_P.my_source_Phase *
                         3.1415926535897931 / 180.0) *
      fpga_test_P.my_source_Amplitude + fpga_test_P.AC_Bias;

    /* S-Function (sfun_spssw_discc): '<S8>/State-Space' incorporates:
     *  Constant: '<S10>/SwitchCurrents'
     */

    /* S-Function block: <S8>/State-Space */
    {
      real_T accum;

      /* Circuit has switches */
      int_T *switch_status = (int_T*)
        fpga_test_DW.StateSpace_PWORK.SWITCH_STATUS;
      int_T *switch_status_init = (int_T*)
        fpga_test_DW.StateSpace_PWORK.SWITCH_STATUS_INIT;
      int_T *SwitchChange = (int_T*) fpga_test_DW.StateSpace_PWORK.SW_CHG;
      int_T *gState = (int_T*) fpga_test_DW.StateSpace_PWORK.G_STATE;
      real_T *yswitch = (real_T*)fpga_test_DW.StateSpace_PWORK.Y_SWITCH;
      int_T *switchTypes = (int_T*) fpga_test_DW.StateSpace_PWORK.SWITCH_TYPES;
      int_T *idxOutSw = (int_T*) fpga_test_DW.StateSpace_PWORK.IDX_OUT_SW;
      real_T *DxCol = (real_T*)fpga_test_DW.StateSpace_PWORK.DX_COL;
      real_T *tmp2 = (real_T*)fpga_test_DW.StateSpace_PWORK.TMP2;
      real_T *uswlast = (real_T*)fpga_test_DW.StateSpace_PWORK.USWLAST;
      int_T newState;
      int_T swChanged = 0;
      int loopsToDo = 20;
      real_T temp;

      /* keep an initial copy of switch_status*/
      memcpy(switch_status_init, switch_status, 1 * sizeof(int_T));
      memcpy(uswlast, &fpga_test_B.StateSpace_o1[0], 1*sizeof(real_T));
      do {
        if (loopsToDo == 1) {          /* Need to reset some variables: */
          swChanged = 0;

          /* return to the original switch status*/
          {
            int_T i1;
            for (i1=0; i1 < 1; i1++) {
              swChanged = ((SwitchChange[i1] = switch_status_init[i1] -
                            switch_status[i1]) != 0) ? 1 : swChanged;
              switch_status[i1] = switch_status_init[i1];
            }
          }
        } else {
          /*
           * Compute outputs:
           * ---------------
           */
          real_T *Ds = (real_T*)fpga_test_DW.StateSpace_PWORK.DS;
          accum = 0.0;
          accum += *(Ds++) * fpga_test_P.SwitchCurrents_Value;
          accum += *(Ds++) * fpga_test_B.AC;
          fpga_test_B.StateSpace_o1[0] = accum;
          accum = 0.0;
          accum += *(Ds++) * fpga_test_P.SwitchCurrents_Value;
          accum += *(Ds++) * fpga_test_B.AC;
          fpga_test_B.StateSpace_o1[1] = accum;
          swChanged = 0;

          /* Breaker */
          newState = (gState[0] > 0) ? 1 : ((fpga_test_B.StateSpace_o1[0]*
            uswlast[0] < 0.0) ? 0 : switch_status[0]);
          swChanged = ((SwitchChange[0] = newState - switch_status[0]) != 0) ? 1
            : swChanged;
          switch_status[0] = newState; /* Keep new state */
        }

        /*
         * Compute new As, Bs, Cs and Ds matrixes:
         * --------------------------------------
         */
        if (swChanged) {
          real_T *Ds = (real_T*)fpga_test_DW.StateSpace_PWORK.DS;
          real_T a1;

          {
            int_T i1;
            for (i1=0; i1 < 1; i1++) {
              if (SwitchChange[i1] != 0) {
                a1 = 100.0*SwitchChange[i1];
                temp = 1/(1-Ds[i1*3]*a1);
                DxCol[0]= Ds[0 + i1]*temp*a1;
                DxCol[1]= Ds[2 + i1]*temp*a1;
                DxCol[i1] = temp;

                /* Copy row nSw of Ds into tmp2 and zero it out in Ds */
                memcpy(tmp2, &Ds[i1 * 2], 2 * sizeof(real_T));
                memset(&Ds[i1 * 2], '\0', 2 * sizeof(real_T));

                /* Cs = Cs + DxCol * tmp1, Ds = Ds + DxCol * tmp2 *******************/
                a1 = DxCol[0];
                Ds[0 + 0] += a1 * tmp2[0];
                Ds[0 + 1] += a1 * tmp2[1];
                a1 = DxCol[1];
                Ds[2 + 0] += a1 * tmp2[0];
                Ds[2 + 1] += a1 * tmp2[1];
              }
            }
          }
        }                              /* if (swChanged) */
      } while (swChanged > 0 && --loopsToDo > 0);

      if (loopsToDo == 0) {
        real_T *Ds = (real_T*)fpga_test_DW.StateSpace_PWORK.DS;
        accum = 0.0;
        accum += *(Ds++) * fpga_test_P.SwitchCurrents_Value;
        accum += *(Ds++) * fpga_test_B.AC;
        fpga_test_B.StateSpace_o1[0] = accum;
        accum = 0.0;
        accum += *(Ds++) * fpga_test_P.SwitchCurrents_Value;
        accum += *(Ds++) * fpga_test_B.AC;
        fpga_test_B.StateSpace_o1[1] = accum;
      }

      /* Output new switches states */
      fpga_test_B.StateSpace_o2 = (real_T)switch_status[0];
    }

    /* Outport: '<Root>/my_output' incorporates:
     *  Gain: '<S4>/do not delete this gain'
     */
    fpga_test_Y.my_output = fpga_test_P.donotdeletethisgain_Gain *
      fpga_test_B.StateSpace_o1[1];

    /* Sum: '<S5>/Sum' incorporates:
     *  Gain: '<S5>/Gain'
     *  UnitDelay: '<S5>/Delay Ts'
     */
    rtb_Sum = fpga_test_P.Gain_Gain * fpga_test_B.StateSpace_o1[0] -
      fpga_test_DW.DelayTs_DSTATE;

    /* DataTypeConversion: '<S5>/Data Type  Conversion2' incorporates:
     *  Constant: '<S5>/0 1'
     *  Product: '<S5>/Product'
     *  RelationalOperator: '<S5>/b5'
     *  UnitDelay: '<S5>/Delay Ts '
     */
    fpga_test_B.DataTypeConversion2 = (rtb_Sum * fpga_test_DW.DelayTs_DSTATE_f >
      fpga_test_P.u1_Value);

    /* Clock: '<S6>/Clock' incorporates:
     *  Derivative: '<S6>/Derivative'
     */
    LookUpTable_tmp = fpga_test_M->Timing.t[0];

    fpga_test_U.my_input = 1;
    printf("step: %u, voltage: %lf, \n", fpga_test_M->Timing.clockTick1, fpga_test_Y.my_output);

    /* Lookup: '<S6>/Look-Up Table' incorporates:
     *  Clock: '<S6>/Clock'
     */
    fpga_test_B.LookUpTable = rt_Lookup(fpga_test_P.LookUpTable_XData, 5,
      LookUpTable_tmp, fpga_test_P.LookUpTable_YData);

    /* Switch: '<S5>/Switch3' incorporates:
     *  Constant: '<S5>/C4'
     *  Inport: '<Root>/my_input'
     */
    if (fpga_test_P.C4_Value >= fpga_test_P.Switch3_Threshold) {
      rtb_DataTypeConversion = fpga_test_U.my_input;
    } else {
      rtb_DataTypeConversion = fpga_test_B.LookUpTable;
    }

    /* End of Switch: '<S5>/Switch3' */

    /* Sum: '<S5>/sum' */
    rtb_sum = fpga_test_B.DataTypeConversion2 + rtb_DataTypeConversion;

    /* Relay: '<S5>/>1.5' */
    if (rtmIsMajorTimeStep(fpga_test_M)) {
      if (rtb_sum >= fpga_test_P.u5_OnVal) {
        fpga_test_DW.u5_Mode = true;
      } else {
        if (rtb_sum <= fpga_test_P.u5_OffVal) {
          fpga_test_DW.u5_Mode = false;
        }
      }
    }

    if (fpga_test_DW.u5_Mode) {
      /* DataTypeConversion: '<S5>/Data Type  Conversion1' */
      fpga_test_B.DataTypeConversion1 = (fpga_test_P.u5_YOn != 0.0);
    } else {
      /* DataTypeConversion: '<S5>/Data Type  Conversion1' */
      fpga_test_B.DataTypeConversion1 = (fpga_test_P.u5_YOff != 0.0);
    }

    /* End of Relay: '<S5>/>1.5' */

    /* InitialCondition: '<S5>/IC' incorporates:
     *  DataTypeConversion: '<S5>/Data Type  Conversion'
     *  DataTypeConversion: '<S5>/Data Type  Conversion3'
     *  Logic: '<S5>/or'
     */
    if ((fpga_test_DW.IC_FirstOutputTime == (rtMinusInf)) ||
        (fpga_test_DW.IC_FirstOutputTime == AC_tmp)) {
      fpga_test_DW.IC_FirstOutputTime = AC_tmp;
      fpga_test_B.IC = fpga_test_P.IC_Value;
    } else {
      fpga_test_B.IC = (fpga_test_B.DataTypeConversion1 ||
                        (rtb_DataTypeConversion != 0.0));
    }

    /* Derivative: '<S6>/Derivative' */
    if ((fpga_test_DW.TimeStampA >= LookUpTable_tmp) && (fpga_test_DW.TimeStampB
         >= LookUpTable_tmp)) {
      fpga_test_B.Derivative = 0.0;
    } else {
      rtb_DataTypeConversion = fpga_test_DW.TimeStampA;
      lastU = &fpga_test_DW.LastUAtTimeA;
      if (fpga_test_DW.TimeStampA < fpga_test_DW.TimeStampB) {
        if (fpga_test_DW.TimeStampB < LookUpTable_tmp) {
          rtb_DataTypeConversion = fpga_test_DW.TimeStampB;
          lastU = &fpga_test_DW.LastUAtTimeB;
        }
      } else {
        if (fpga_test_DW.TimeStampA >= LookUpTable_tmp) {
          rtb_DataTypeConversion = fpga_test_DW.TimeStampB;
          lastU = &fpga_test_DW.LastUAtTimeB;
        }
      }

      fpga_test_B.Derivative = (fpga_test_B.LookUpTable - *lastU) /
        (LookUpTable_tmp - rtb_DataTypeConversion);
    }
  }

  /* Matfile logging */
  rt_UpdateTXYLogVars(fpga_test_M->rtwLogInfo, (fpga_test_M->Timing.t));

  {
    real_T *lastU;

    /* Update for S-Function (sfun_spssw_discc): '<S8>/State-Space' incorporates:
     *  Constant: '<S10>/SwitchCurrents'
     */
    {
      int_T *gState = (int_T*)fpga_test_DW.StateSpace_PWORK.G_STATE;

      /* Store switch gates values for next step */
      *(gState++) = (int_T) fpga_test_B.IC;
    }

    /* Update for UnitDelay: '<S5>/Delay Ts' */
    fpga_test_DW.DelayTs_DSTATE = fpga_test_B.StateSpace_o1[0];

    /* Update for UnitDelay: '<S5>/Delay Ts ' */
    fpga_test_DW.DelayTs_DSTATE_f = rtb_Sum;

    /* Update for Derivative: '<S6>/Derivative' */
    if (fpga_test_DW.TimeStampA == (rtInf)) {
      fpga_test_DW.TimeStampA = fpga_test_M->Timing.t[0];
      lastU = &fpga_test_DW.LastUAtTimeA;
    } else if (fpga_test_DW.TimeStampB == (rtInf)) {
      fpga_test_DW.TimeStampB = fpga_test_M->Timing.t[0];
      lastU = &fpga_test_DW.LastUAtTimeB;
    } else if (fpga_test_DW.TimeStampA < fpga_test_DW.TimeStampB) {
      fpga_test_DW.TimeStampA = fpga_test_M->Timing.t[0];
      lastU = &fpga_test_DW.LastUAtTimeA;
    } else {
      fpga_test_DW.TimeStampB = fpga_test_M->Timing.t[0];
      lastU = &fpga_test_DW.LastUAtTimeB;
    }

    *lastU = fpga_test_B.LookUpTable;

    /* End of Update for Derivative: '<S6>/Derivative' */
  }

  /* signal main to stop simulation */
  {                                    /* Sample time: [0.0s, 0.0s] */
    if ((rtmGetTFinal(fpga_test_M)!=-1) &&
        !((rtmGetTFinal(fpga_test_M)-fpga_test_M->Timing.t[0]) >
          fpga_test_M->Timing.t[0] * (DBL_EPSILON))) {
      rtmSetErrorStatus(fpga_test_M, "Simulation finished");
    }
  }

  /* Update absolute time for base rate */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick0 and the high bits
   * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++fpga_test_M->Timing.clockTick0)) {
    ++fpga_test_M->Timing.clockTickH0;
  }

  fpga_test_M->Timing.t[0] = fpga_test_M->Timing.clockTick0 *
    fpga_test_M->Timing.stepSize0 + fpga_test_M->Timing.clockTickH0 *
    fpga_test_M->Timing.stepSize0 * 4294967296.0;

  {
    /* Update absolute timer for sample time: [0.0001s, 0.0s] */
    /* The "clockTick1" counts the number of times the code of this task has
     * been executed. The resolution of this integer timer is 0.0001, which is the step size
     * of the task. Size of "clockTick1" ensures timer will not overflow during the
     * application lifespan selected.
     * Timer of this task consists of two 32 bit unsigned integers.
     * The two integers represent the low bits Timing.clockTick1 and the high bits
     * Timing.clockTickH1. When the low bit overflows to 0, the high bits increment.
     */
    fpga_test_M->Timing.clockTick1++;
    if (!fpga_test_M->Timing.clockTick1) {
      fpga_test_M->Timing.clockTickH1++;
    }
  }
}

/* Model initialize function */
void fpga_test_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)fpga_test_M, 0,
                sizeof(RT_MODEL_fpga_test_T));

  {
    /* Setup solver object */
    rtsiSetSimTimeStepPtr(&fpga_test_M->solverInfo,
                          &fpga_test_M->Timing.simTimeStep);
    rtsiSetTPtr(&fpga_test_M->solverInfo, &rtmGetTPtr(fpga_test_M));
    rtsiSetStepSizePtr(&fpga_test_M->solverInfo, &fpga_test_M->Timing.stepSize0);
    rtsiSetErrorStatusPtr(&fpga_test_M->solverInfo, (&rtmGetErrorStatus
      (fpga_test_M)));
    rtsiSetRTModelPtr(&fpga_test_M->solverInfo, fpga_test_M);
  }

  rtsiSetSimTimeStep(&fpga_test_M->solverInfo, MAJOR_TIME_STEP);
  rtsiSetSolverName(&fpga_test_M->solverInfo,"FixedStepDiscrete");
  rtmSetTPtr(fpga_test_M, &fpga_test_M->Timing.tArray[0]);
  rtmSetTFinal(fpga_test_M, -1);
  fpga_test_M->Timing.stepSize0 = 0.0001;

  /* Setup for data logging */
  {
    static RTWLogInfo rt_DataLoggingInfo;
    rt_DataLoggingInfo.loggingInterval = NULL;
    fpga_test_M->rtwLogInfo = &rt_DataLoggingInfo;
  }

  /* Setup for data logging */
  {
    rtliSetLogXSignalInfo(fpga_test_M->rtwLogInfo, (NULL));
    rtliSetLogXSignalPtrs(fpga_test_M->rtwLogInfo, (NULL));
    rtliSetLogT(fpga_test_M->rtwLogInfo, "tout");
    rtliSetLogX(fpga_test_M->rtwLogInfo, "");
    rtliSetLogXFinal(fpga_test_M->rtwLogInfo, "");
    rtliSetLogVarNameModifier(fpga_test_M->rtwLogInfo, "rt_");
    rtliSetLogFormat(fpga_test_M->rtwLogInfo, 4);
    rtliSetLogMaxRows(fpga_test_M->rtwLogInfo, 0);
    rtliSetLogDecimation(fpga_test_M->rtwLogInfo, 1);
    rtliSetLogY(fpga_test_M->rtwLogInfo, "");
    rtliSetLogYSignalInfo(fpga_test_M->rtwLogInfo, (NULL));
    rtliSetLogYSignalPtrs(fpga_test_M->rtwLogInfo, (NULL));
  }

  /* block I/O */
  (void) memset(((void *) &fpga_test_B), 0,
                sizeof(B_fpga_test_T));

  /* states (dwork) */
  (void) memset((void *)&fpga_test_DW, 0,
                sizeof(DW_fpga_test_T));

  /* external inputs */
  fpga_test_U.my_input = 0.0;

  /* external outputs */
  fpga_test_Y.my_output = 0.0;

  /* Initialize DataMapInfo substructure containing ModelMap for C API */
  fpga_test_InitializeDataMapInfo();

  /* Matfile logging */
  rt_StartDataLoggingWithStartTime(fpga_test_M->rtwLogInfo, 0.0, rtmGetTFinal
    (fpga_test_M), fpga_test_M->Timing.stepSize0, (&rtmGetErrorStatus
    (fpga_test_M)));

  /* Start for S-Function (sfun_spssw_discc): '<S8>/State-Space' incorporates:
   *  Constant: '<S10>/SwitchCurrents'
   */

  /* S-Function block: <S8>/State-Space */
  {
    fpga_test_DW.StateSpace_PWORK.DS = (real_T*)calloc(2 * 2, sizeof(real_T));
    fpga_test_DW.StateSpace_PWORK.DX_COL = (real_T*)calloc(2, sizeof(real_T));
    fpga_test_DW.StateSpace_PWORK.TMP2 = (real_T*)calloc(2, sizeof(real_T));
    fpga_test_DW.StateSpace_PWORK.SWITCH_STATUS = (int_T*)calloc(1, sizeof(int_T));
    fpga_test_DW.StateSpace_PWORK.SW_CHG = (int_T*)calloc(1, sizeof(int_T));
    fpga_test_DW.StateSpace_PWORK.G_STATE = (int_T*)calloc(1, sizeof(int_T));
    fpga_test_DW.StateSpace_PWORK.Y_SWITCH = (real_T*)calloc(1, sizeof(real_T));
    fpga_test_DW.StateSpace_PWORK.SWITCH_TYPES = (int_T*)calloc(1, sizeof(int_T));
    fpga_test_DW.StateSpace_PWORK.IDX_OUT_SW = (int_T*)calloc(1, sizeof(int_T));
    fpga_test_DW.StateSpace_PWORK.SWITCH_STATUS_INIT = (int_T*)calloc(1, sizeof
      (int_T));
    fpga_test_DW.StateSpace_PWORK.USWLAST = (real_T*)calloc(1, sizeof(real_T));
  }

  /* Start for InitialCondition: '<S5>/IC' */
  fpga_test_B.IC = fpga_test_P.IC_Value;
  fpga_test_DW.IC_FirstOutputTime = (rtMinusInf);

  /* InitializeConditions for S-Function (sfun_spssw_discc): '<S8>/State-Space' incorporates:
   *  Constant: '<S10>/SwitchCurrents'
   */
  {
    int32_T i, j;
    real_T *Ds = (real_T*)fpga_test_DW.StateSpace_PWORK.DS;

    /* Copy and transpose D */
    for (i=0; i<2; i++) {
      for (j=0; j<2; j++)
        Ds[i*2 + j] = (fpga_test_P.StateSpace_DS_param[i + j*2]);
    }

    {
      /* Switches work vectors */
      int_T *switch_status = (int_T*)
        fpga_test_DW.StateSpace_PWORK.SWITCH_STATUS;
      int_T *gState = (int_T*)fpga_test_DW.StateSpace_PWORK.G_STATE;
      real_T *yswitch = (real_T*)fpga_test_DW.StateSpace_PWORK.Y_SWITCH;
      int_T *switchTypes = (int_T*)fpga_test_DW.StateSpace_PWORK.SWITCH_TYPES;
      int_T *idxOutSw = (int_T*)fpga_test_DW.StateSpace_PWORK.IDX_OUT_SW;
      int_T *switch_status_init = (int_T*)
        fpga_test_DW.StateSpace_PWORK.SWITCH_STATUS_INIT;

      /* Initialize work vectors */
      switch_status[0] = 0;
      switch_status_init[0] = 0;
      gState[0] = (int_T) 0.0;
      yswitch[0] = 1/0.01;
      switchTypes[0] = (int_T)2.0;
      idxOutSw[0] = ((int_T)0.0) - 1;
    }
  }

  /* InitializeConditions for UnitDelay: '<S5>/Delay Ts' */
  fpga_test_DW.DelayTs_DSTATE = fpga_test_P.DelayTs_InitialCondition;

  /* InitializeConditions for UnitDelay: '<S5>/Delay Ts ' */
  fpga_test_DW.DelayTs_DSTATE_f = fpga_test_P.DelayTs_InitialCondition_m;

  /* InitializeConditions for Derivative: '<S6>/Derivative' */
  fpga_test_DW.TimeStampA = (rtInf);
  fpga_test_DW.TimeStampB = (rtInf);
}

/* Model terminate function */
void fpga_test_terminate(void)
{
  /* Terminate for S-Function (sfun_spssw_discc): '<S8>/State-Space' incorporates:
   *  Constant: '<S10>/SwitchCurrents'
   */

  /* S-Function block: <S8>/State-Space */
  {
    /* Free memory */
    free(fpga_test_DW.StateSpace_PWORK.DS);
    free(fpga_test_DW.StateSpace_PWORK.DX_COL);
    free(fpga_test_DW.StateSpace_PWORK.TMP2);

    /*
     * Circuit has switches*/
    free(fpga_test_DW.StateSpace_PWORK.G_STATE);
    free(fpga_test_DW.StateSpace_PWORK.SWITCH_STATUS);
    free(fpga_test_DW.StateSpace_PWORK.SW_CHG);
    free(fpga_test_DW.StateSpace_PWORK.SWITCH_STATUS_INIT);
  }
}

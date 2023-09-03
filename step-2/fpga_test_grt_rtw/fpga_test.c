/*
 * fpga_test.c
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

/* Block signals (default storage) */
B_fpga_test_T fpga_test_B;

/* Block states (default storage) */
DW_fpga_test_T fpga_test_DW;

/* External inputs (root inport signals with default storage) */
ExtU_fpga_test_T fpga_test_U;

/* External outputs (root outports fed by signals with default storage) */
ExtY_fpga_test_T fpga_test_Y;

/* Real-time model */

//RT_MODEL_fpga_test_T * fpga_test_M = &fpga_test_M_;

char counter = 0;


/* Model initialize function */
void fpga_test_initialize(B_fpga_test_T *_fpga_test_B, DW_fpga_test_T *_fpga_test_DW, RT_MODEL_fpga_test_T *_fpga_test_M)
{
#pragma HLS inline off
#pragma HLS pipeline off
#pragma HLS disaggregate variable = _fpga_test_B
#pragma HLS disaggregate variable = _fpga_test_DW
#pragma HLS disaggregate variable = _fpga_test_M
  //rt_InitInfAndNaN(sizeof(real_T));

  DW_fpga_test_T fpga_test_DW_;
  B_fpga_test_T fpga_test_B_;
  RT_MODEL_fpga_test_T fpga_test_M_;


  (void) memset((void *)&fpga_test_M_, 0,
                sizeof(RT_MODEL_fpga_test_T));

  fpga_test_M_.Timing.t[0] = 0;
  fpga_test_M_.Timing.t[1] = 0;
  rtmSetTFinal(&fpga_test_M_, -1);
  fpga_test_M_.Timing.stepSize0 = 0.0001;

  // block I/O
  (void) memset(((void *) &fpga_test_B_), 0,
                sizeof(B_fpga_test_T));

  // states (dwork)
  (void) memset((void *)&fpga_test_DW_, 0,
                sizeof(DW_fpga_test_T));



  // Start for InitialCondition: '<S5>/IC'
  fpga_test_B_.IC = fpga_test_P.IC_Value;
  fpga_test_DW_.IC_FirstOutputTime = (rtMinusInf);

  // InitializeConditions for S-Function (sfun_spssw_discc): '<S8>/State-Space' incorporates:
  //  Constant: '<S10>/SwitchCurrents'

  {
    int32_T i, j;
    real_T *Ds = fpga_test_DW_.StateSpace_PWORK.DS;

    // Copy and transpose D
    init_1: for (i=0; i<2; i++) {
      init_2: for (j=0; j<2; j++)
        Ds[i*2 + j] = (fpga_test_P.StateSpace_DS_param[i + j*2]);
    }

    {
      // Switches work vectors
      fpga_test_DW_.StateSpace_PWORK.SWITCH_STATUS = 0;
      fpga_test_DW_.StateSpace_PWORK.G_STATE = 0.0;
      fpga_test_DW_.StateSpace_PWORK.Y_SWITCH = 1/0.01;
      fpga_test_DW_.StateSpace_PWORK.SWITCH_TYPES = 2;
      fpga_test_DW_.StateSpace_PWORK.IDX_OUT_SW = -1;
      fpga_test_DW_.StateSpace_PWORK.SWITCH_STATUS_INIT = 0;
    }
  }

  // InitializeConditions for UnitDelay: '<S5>/Delay Ts'
  fpga_test_DW_.DelayTs_DSTATE = fpga_test_P.DelayTs_InitialCondition;

  // InitializeConditions for UnitDelay: '<S5>/Delay Ts '
  fpga_test_DW_.DelayTs_DSTATE_f = fpga_test_P.DelayTs_InitialCondition_m;

  // InitializeConditions for Derivative: '<S6>/Derivative'
  fpga_test_DW_.TimeStampA = (rtInf);
  fpga_test_DW_.TimeStampB = (rtInf);

  /*_fpga_test_B = &fpga_test_B_;
  _fpga_test_M = &fpga_test_M_;
  _fpga_test_DW = &fpga_test_DW_;*/
  memcpy(_fpga_test_B, &fpga_test_B_, 1 * sizeof(B_fpga_test_T));
  memcpy(_fpga_test_M, &fpga_test_M_, 1 * sizeof(RT_MODEL_fpga_test_T));
  memcpy(_fpga_test_DW, &fpga_test_DW_, 1 * sizeof(DW_fpga_test_T));
}


void fpga_test_step(ExtU_fpga_test_T fpga_test_U, ExtY_fpga_test_T* fpga_test_Y, B_fpga_test_T fpga_test_B, B_fpga_test_T *_fpga_test_B, DW_fpga_test_T fpga_test_DW, DW_fpga_test_T* _fpga_test_DW, RT_MODEL_fpga_test_T* fpga_test_M)
{

#pragma HLS disaggregate variable = _fpga_test_B
#pragma HLS disaggregate variable = fpga_test_B
#pragma HLS disaggregate variable = _fpga_test_DW
#pragma HLS disaggregate variable = fpga_test_DW
#pragma HLS disaggregate variable = fpga_test_M


  // local block i/o variables
    real_T rtb_Sum;

    real_T rtb_DataTypeConversion;
    real_T rtb_sum;
    real_T AC_tmp;
    real_T accum;
    int_T newState;
    int_T swChanged = 0;
    int loopsToDo = 10;
    real_T temp;
    real_T a1;

    //real_T LookUpTable_tmp;
	#pragma HLS inline off
	#pragma HLS pipeline off
	//#pragma HLS pipeline II = 9

    //fpga_test_M->Timing.stepSize0 = 0.000050;

    // Sin: '<S7>/AC' incorporates:
    //  InitialCondition: '<S5>/IC'
    {
    AC_tmp = fpga_test_M->Timing.t[0];
    fpga_test_B.AC = sinf(6.2831853071795862 * fpga_test_P.my_source_Frequency *
                         AC_tmp + fpga_test_P.my_source_Phase *
                         3.1415926535897931 / 180) *
      fpga_test_P.my_source_Amplitude + fpga_test_P.AC_Bias;
    }

      // keep an initial copy of switch_status
      memcpy(&fpga_test_DW.StateSpace_PWORK.SWITCH_STATUS_INIT, &fpga_test_DW.StateSpace_PWORK.SWITCH_STATUS, 1 * sizeof(int_T));
      memcpy(&fpga_test_DW.StateSpace_PWORK.USWLAST, &fpga_test_B.StateSpace_o1[0], 1 * sizeof(real_T));

      vadd: do {
		//#pragma HLS unroll
        //#pragma HLS performance target_ti=100
        if (loopsToDo == 1) {
              swChanged = ((fpga_test_DW.StateSpace_PWORK.SW_CHG = fpga_test_DW.StateSpace_PWORK.SWITCH_STATUS_INIT -
            		  fpga_test_DW.StateSpace_PWORK.SWITCH_STATUS) != 0) ? 1 : 0;
              fpga_test_DW.StateSpace_PWORK.SWITCH_STATUS = fpga_test_DW.StateSpace_PWORK.SWITCH_STATUS_INIT;
        } else {
           //
           // Compute outputs:
           // ---------------

          accum = 0.0;
          accum += fpga_test_DW.StateSpace_PWORK.DS[0] * fpga_test_P.SwitchCurrents_Value;
          accum += fpga_test_DW.StateSpace_PWORK.DS[1] * fpga_test_B.AC;
          fpga_test_B.StateSpace_o1[0] = accum;
          accum = 0.0;
          accum += fpga_test_DW.StateSpace_PWORK.DS[2] * fpga_test_P.SwitchCurrents_Value;
          accum += fpga_test_DW.StateSpace_PWORK.DS[3] * fpga_test_B.AC;
          fpga_test_B.StateSpace_o1[1] = accum;
          swChanged = 0;

          // Breaker
          newState = (fpga_test_DW.StateSpace_PWORK.G_STATE > 0) ? 1 : ((fpga_test_B.StateSpace_o1[0]*
        		  fpga_test_DW.StateSpace_PWORK.USWLAST < 0.0) ? 0 : fpga_test_DW.StateSpace_PWORK.SWITCH_STATUS);
          swChanged = ((fpga_test_DW.StateSpace_PWORK.SW_CHG = newState - fpga_test_DW.StateSpace_PWORK.SWITCH_STATUS) != 0) ? 1
            : swChanged;
          fpga_test_DW.StateSpace_PWORK.SWITCH_STATUS = newState;
        }


         // Compute new As, Bs, Cs and Ds matrixes:
         // --------------------------------------

        if (swChanged) {
          {
              if (fpga_test_DW.StateSpace_PWORK.SW_CHG != 0) {
                a1 = 100*fpga_test_DW.StateSpace_PWORK.SW_CHG;
                temp = 1/(1-fpga_test_DW.StateSpace_PWORK.DS[0]*a1);
                fpga_test_DW.StateSpace_PWORK.DX_COL[0]= fpga_test_DW.StateSpace_PWORK.DS[0]*temp*a1;
                fpga_test_DW.StateSpace_PWORK.DX_COL[1]= fpga_test_DW.StateSpace_PWORK.DS[2]*temp*a1;
                fpga_test_DW.StateSpace_PWORK.DX_COL[0] = temp;

                // Copy row nSw of Ds into tmp2 and zero it out in Ds
                memcpy(&fpga_test_DW.StateSpace_PWORK.TMP2, &fpga_test_DW.StateSpace_PWORK.DS[0], 2 * sizeof(real_T));
                memset(&fpga_test_DW.StateSpace_PWORK.DS[0], '\0', 2 * sizeof(real_T));

                a1 = fpga_test_DW.StateSpace_PWORK.DX_COL[0];
                fpga_test_DW.StateSpace_PWORK.DS[0] += a1 * fpga_test_DW.StateSpace_PWORK.TMP2[0];
                fpga_test_DW.StateSpace_PWORK.DS[1] += a1 * fpga_test_DW.StateSpace_PWORK.TMP2[1];
                a1 = fpga_test_DW.StateSpace_PWORK.DX_COL[1];
                fpga_test_DW.StateSpace_PWORK.DS[2] += a1 * fpga_test_DW.StateSpace_PWORK.TMP2[0];
                fpga_test_DW.StateSpace_PWORK.DS[3] += a1 * fpga_test_DW.StateSpace_PWORK.TMP2[1];
              }
          }
        }
      } while (swChanged > 0 && --loopsToDo > 0);

      if (loopsToDo == 0) {
        accum = 0.0;
        accum += fpga_test_DW.StateSpace_PWORK.DS[0] * fpga_test_P.SwitchCurrents_Value;
        accum += fpga_test_DW.StateSpace_PWORK.DS[1] * fpga_test_B.AC;
        fpga_test_B.StateSpace_o1[0] = accum;
        accum = 0.0;
        accum += fpga_test_DW.StateSpace_PWORK.DS[2] * fpga_test_P.SwitchCurrents_Value;
        accum += fpga_test_DW.StateSpace_PWORK.DS[3] * fpga_test_B.AC;
        fpga_test_B.StateSpace_o1[1] = accum;
      }

       fpga_test_B.StateSpace_o2 = fpga_test_DW.StateSpace_PWORK.SWITCH_STATUS;

    // Outport: '<Root>/my_output' incorporates:
    //  Gain: '<S4>/do not delete this gain'

    fpga_test_Y->my_output = (int)(fpga_test_P.donotdeletethisgain_Gain *
      fpga_test_B.StateSpace_o1[1]);

     // Sum: '<S5>/Sum' incorporates:
     //  Gain: '<S5>/Gain'
     //  UnitDelay: '<S5>/Delay Ts'

    rtb_Sum = fpga_test_P.Gain_Gain * fpga_test_B.StateSpace_o1[0] -
      fpga_test_DW.DelayTs_DSTATE;

     // DataTypeConversion: '<S5>/Data Type  Conversion2' incorporates:
     //  Constant: '<S5>/0 1'
     //  Product: '<S5>/Product'
     //  RelationalOperator: '<S5>/b5'
     //  UnitDelay: '<S5>/Delay Ts '

    fpga_test_B.DataTypeConversion2 = (rtb_Sum * fpga_test_DW.DelayTs_DSTATE_f >
      fpga_test_P.u1_Value);

     // Clock: '<S6>/Clock' incorporates:
     //  Derivative: '<S6>/Derivative'

    //LookUpTable_tmp = _fpga_test_M->Timing.t[0];

     // Lookup: '<S6>/Look-Up Table' incorporates:
     //  Clock: '<S6>/Clock'

    // Switch: '<S5>/Switch3' incorporates:
    //  Constant: '<S5>/C4'
    //  Inport: '<Root>/my_input'

    if (fpga_test_P.C4_Value >= fpga_test_P.Switch3_Threshold) {
      rtb_DataTypeConversion = (real_T)fpga_test_U.my_input;
    } else {
      rtb_DataTypeConversion = fpga_test_B.LookUpTable;
    }
    //fpga_test_U.my_input = 1;

    //printf("%lf, %lf, %u\n", fpga_test_U.my_input, fpga_test_Y.my_output, fpga_test_M->Timing.clockTick1);
    //fprintf(fptr, "%lf, %lf, %u\n", fpga_test_U.my_input, fpga_test_Y.my_output, fpga_test_M->Timing.clockTick1);


    rtb_sum = fpga_test_B.DataTypeConversion2 + rtb_DataTypeConversion;

    if ((fpga_test_DW.IC_FirstOutputTime == (rtMinusInf)) ||
        (fpga_test_DW.IC_FirstOutputTime == AC_tmp)) {
      fpga_test_DW.IC_FirstOutputTime = AC_tmp;
      fpga_test_B.IC = fpga_test_P.IC_Value;
    } else {
      fpga_test_B.IC = (fpga_test_B.DataTypeConversion1 ||
                        (rtb_DataTypeConversion != 0.0));
    }

    //real_T *lastU;

    // Update for S-Function (sfun_spssw_discc): '<S8>/State-Space' incorporates:
    //  Constant: '<S10>/SwitchCurrents'

    {

      // Store switch gates values for next step
      fpga_test_DW.StateSpace_PWORK.G_STATE = (int_T) fpga_test_B.IC;
    }

  if (!(++fpga_test_M->Timing.clockTick0)) {
    ++fpga_test_M->Timing.clockTickH0;
  }

  fpga_test_M->Timing.t[0] = fpga_test_M->Timing.clockTick0 *
		  fpga_test_M->Timing.stepSize0 + fpga_test_M->Timing.clockTickH0 *
		  fpga_test_M->Timing.stepSize0 * 4294967296.0;


	  fpga_test_M->Timing.clockTick1++;
    if (!fpga_test_M->Timing.clockTick1) {
    	fpga_test_M->Timing.clockTickH1++;
    }

    //_fpga_test_B = &fpga_test_B;
    //_fpga_test_DW = &fpga_test_DW;
    //fpga_test_Y->my_output = (int)fpga_test_B.AC;
    memcpy(_fpga_test_B, &fpga_test_B, 1 * sizeof(B_fpga_test_T));
    memcpy(_fpga_test_DW, &fpga_test_DW, 1 * sizeof(DW_fpga_test_T));
    //fpga_test_Y->my_output = (int)fpga_test_B.AC;

}


/*
 * fpga_test_capi.c
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

#include "rtw_capi.h"
#ifdef HOST_CAPI_BUILD
#include "fpga_test_capi_host.h"
#define sizeof(s)                      ((size_t)(0xFFFF))
#undef rt_offsetof
#define rt_offsetof(s,el)              ((uint16_T)(0xFFFF))
#define TARGET_CONST
#define TARGET_STRING(s)               (s)
#else                                  /* HOST_CAPI_BUILD */
#include "builtin_typeid_types.h"
#include "fpga_test.h"
#include "fpga_test_capi.h"
#include "fpga_test_private.h"
#ifdef LIGHT_WEIGHT_CAPI
#define TARGET_CONST
#define TARGET_STRING(s)               (NULL)
#else
#define TARGET_CONST                   const
#define TARGET_STRING(s)               (s)
#endif
#endif                                 /* HOST_CAPI_BUILD */

/* Block output signal information */
static const rtwCAPI_Signals rtBlockSignals[] = {
  /* addrMapIndex, sysNum, blockPath,
   * signalName, portNumber, dataTypeIndex, dimIndex, fxpIndex, sTimeIndex
   */
  { 0, 0, TARGET_STRING("fpga_test/my_breaker/Model/Data Type  Conversion1"),
    TARGET_STRING(""), 0, 0, 0, 0, 0 },

  { 1, 0, TARGET_STRING("fpga_test/my_breaker/Model/Data Type  Conversion2"),
    TARGET_STRING(""), 0, 1, 0, 0, 0 },

  { 2, 0, TARGET_STRING("fpga_test/my_breaker/Model/IC"),
    TARGET_STRING(""), 0, 1, 0, 0, 1 },

  { 3, 0, TARGET_STRING("fpga_test/my_source/Model/AC"),
    TARGET_STRING(""), 0, 1, 0, 0, 1 },

  { 4, 0, TARGET_STRING("fpga_test/powergui/EquivalentModel1/State-Space"),
    TARGET_STRING(""), 0, 1, 1, 0, 0 },

  { 5, 0, TARGET_STRING("fpga_test/powergui/EquivalentModel1/State-Space"),
    TARGET_STRING(""), 1, 1, 0, 0, 0 },

  { 6, 0, TARGET_STRING("fpga_test/my_breaker/Model/Timer/Derivative"),
    TARGET_STRING(""), 0, 1, 0, 0, 1 },

  { 7, 0, TARGET_STRING("fpga_test/my_breaker/Model/Timer/Look-Up Table"),
    TARGET_STRING(""), 0, 1, 0, 0, 1 },

  {
    0, 0, (NULL), (NULL), 0, 0, 0, 0, 0
  }
};

static const rtwCAPI_BlockParameters rtBlockParameters[] = {
  /* addrMapIndex, blockPath,
   * paramName, dataTypeIndex, dimIndex, fixPtIdx
   */
  { 8, TARGET_STRING("fpga_test/my_source"),
    TARGET_STRING("Amplitude"), 1, 0, 0 },

  { 9, TARGET_STRING("fpga_test/my_source"),
    TARGET_STRING("Phase"), 1, 0, 0 },

  { 10, TARGET_STRING("fpga_test/my_source"),
    TARGET_STRING("Frequency"), 1, 0, 0 },

  { 11, TARGET_STRING("fpga_test/vs/do not delete this gain"),
    TARGET_STRING("Gain"), 1, 0, 0 },

  { 12, TARGET_STRING("fpga_test/my_breaker/Model/0 1"),
    TARGET_STRING("Value"), 1, 0, 0 },

  { 13, TARGET_STRING("fpga_test/my_breaker/Model/C4"),
    TARGET_STRING("Value"), 1, 0, 0 },

  { 14, TARGET_STRING("fpga_test/my_breaker/Model/Gain"),
    TARGET_STRING("Gain"), 1, 0, 0 },

  { 15, TARGET_STRING("fpga_test/my_breaker/Model/IC"),
    TARGET_STRING("Value"), 1, 0, 0 },

  { 16, TARGET_STRING("fpga_test/my_breaker/Model/>1.5"),
    TARGET_STRING("OnSwitchValue"), 1, 0, 0 },

  { 17, TARGET_STRING("fpga_test/my_breaker/Model/>1.5"),
    TARGET_STRING("OffSwitchValue"), 1, 0, 0 },

  { 18, TARGET_STRING("fpga_test/my_breaker/Model/>1.5"),
    TARGET_STRING("OnOutputValue"), 1, 0, 0 },

  { 19, TARGET_STRING("fpga_test/my_breaker/Model/>1.5"),
    TARGET_STRING("OffOutputValue"), 1, 0, 0 },

  { 20, TARGET_STRING("fpga_test/my_breaker/Model/Switch3"),
    TARGET_STRING("Threshold"), 1, 0, 0 },

  { 21, TARGET_STRING("fpga_test/my_breaker/Model/Delay Ts"),
    TARGET_STRING("InitialCondition"), 1, 0, 0 },

  { 22, TARGET_STRING("fpga_test/my_breaker/Model/Delay Ts "),
    TARGET_STRING("InitialCondition"), 1, 0, 0 },

  { 23, TARGET_STRING("fpga_test/my_source/Model/AC"),
    TARGET_STRING("Bias"), 1, 0, 0 },

  { 24, TARGET_STRING("fpga_test/powergui/EquivalentModel1/State-Space"),
    TARGET_STRING("DS_param"), 1, 2, 0 },

  { 25, TARGET_STRING("fpga_test/my_breaker/Model/Timer/Hit  Crossing"),
    TARGET_STRING("HitCrossingOffset"), 1, 0, 0 },

  { 26, TARGET_STRING("fpga_test/my_breaker/Model/Timer/Look-Up Table"),
    TARGET_STRING("InputValues"), 1, 3, 0 },

  { 27, TARGET_STRING("fpga_test/my_breaker/Model/Timer/Look-Up Table"),
    TARGET_STRING("Table"), 1, 3, 0 },

  { 28, TARGET_STRING("fpga_test/powergui/EquivalentModel1/Sources/SwitchCurrents"),
    TARGET_STRING("Value"), 1, 0, 0 },

  {
    0, (NULL), (NULL), 0, 0, 0
  }
};

/* Block states information */
static const rtwCAPI_States rtBlockStates[] = {
  /* addrMapIndex, contStateStartIndex, blockPath,
   * stateName, pathAlias, dWorkIndex, dataTypeIndex, dimIndex,
   * fixPtIdx, sTimeIndex, isContinuous, hierInfoIdx, flatElemIdx
   */
  { 29, -1, TARGET_STRING("fpga_test/my_breaker/Model/Delay Ts"),
    TARGET_STRING("DSTATE"), "", 0, 1, 0, 0, 0, 0, -1, 0 },

  { 30, -1, TARGET_STRING("fpga_test/my_breaker/Model/Delay Ts "),
    TARGET_STRING("DSTATE"), "", 0, 1, 0, 0, 0, 0, -1, 0 },

  {
    0, -1, (NULL), (NULL), (NULL), 0, 0, 0, 0, 0, 0, -1, 0
  }
};

/* Root Inputs information */
static const rtwCAPI_Signals rtRootInputs[] = {
  /* addrMapIndex, sysNum, blockPath,
   * signalName, portNumber, dataTypeIndex, dimIndex, fxpIndex, sTimeIndex
   */
  { 31, 0, TARGET_STRING("fpga_test/my_input"),
    TARGET_STRING(""), 1, 1, 0, 0, 1 },

  {
    0, 0, (NULL), (NULL), 0, 0, 0, 0, 0
  }
};

/* Root Outputs information */
static const rtwCAPI_Signals rtRootOutputs[] = {
  /* addrMapIndex, sysNum, blockPath,
   * signalName, portNumber, dataTypeIndex, dimIndex, fxpIndex, sTimeIndex
   */
  { 32, 0, TARGET_STRING("fpga_test/my_output"),
    TARGET_STRING(""), 1, 1, 0, 0, 0 },

  {
    0, 0, (NULL), (NULL), 0, 0, 0, 0, 0
  }
};

/* Tunable variable parameters */
static const rtwCAPI_ModelParameters rtModelParameters[] = {
  /* addrMapIndex, varName, dataTypeIndex, dimIndex, fixPtIndex */
  { 0, (NULL), 0, 0, 0 }
};

#ifndef HOST_CAPI_BUILD

/* Declare Data Addresses statically */
static void* rtDataAddrMap[] = {
  &fpga_test_B.DataTypeConversion1,    /* 0: Signal */
  &fpga_test_B.DataTypeConversion2,    /* 1: Signal */
  &fpga_test_B.IC,                     /* 2: Signal */
  &fpga_test_B.AC,                     /* 3: Signal */
  &fpga_test_B.StateSpace_o1[0],       /* 4: Signal */
  &fpga_test_B.StateSpace_o2,          /* 5: Signal */
  &fpga_test_B.Derivative,             /* 6: Signal */
  &fpga_test_B.LookUpTable,            /* 7: Signal */
  &fpga_test_P.my_source_Amplitude,    /* 8: Mask Parameter */
  &fpga_test_P.my_source_Phase,        /* 9: Mask Parameter */
  &fpga_test_P.my_source_Frequency,    /* 10: Mask Parameter */
  &fpga_test_P.donotdeletethisgain_Gain,/* 11: Block Parameter */
  &fpga_test_P.u1_Value,               /* 12: Block Parameter */
  &fpga_test_P.C4_Value,               /* 13: Block Parameter */
  &fpga_test_P.Gain_Gain,              /* 14: Block Parameter */
  &fpga_test_P.IC_Value,               /* 15: Block Parameter */
  &fpga_test_P.u5_OnVal,               /* 16: Block Parameter */
  &fpga_test_P.u5_OffVal,              /* 17: Block Parameter */
  &fpga_test_P.u5_YOn,                 /* 18: Block Parameter */
  &fpga_test_P.u5_YOff,                /* 19: Block Parameter */
  &fpga_test_P.Switch3_Threshold,      /* 20: Block Parameter */
  &fpga_test_P.DelayTs_InitialCondition,/* 21: Block Parameter */
  &fpga_test_P.DelayTs_InitialCondition_m,/* 22: Block Parameter */
  &fpga_test_P.AC_Bias,                /* 23: Block Parameter */
  &fpga_test_P.StateSpace_DS_param[0], /* 24: Block Parameter */
  &fpga_test_P.HitCrossing_Offset,     /* 25: Block Parameter */
  &fpga_test_P.LookUpTable_XData[0],   /* 26: Block Parameter */
  &fpga_test_P.LookUpTable_YData[0],   /* 27: Block Parameter */
  &fpga_test_P.SwitchCurrents_Value,   /* 28: Block Parameter */
  &fpga_test_DW.DelayTs_DSTATE,        /* 29: Discrete State */
  &fpga_test_DW.DelayTs_DSTATE_f,      /* 30: Discrete State */
  &fpga_test_U.my_input,               /* 31: Root Input */
  &fpga_test_Y.my_output,              /* 32: Root Output */
};

/* Declare Data Run-Time Dimension Buffer Addresses statically */
static int32_T* rtVarDimsAddrMap[] = {
  (NULL)
};

#endif

/* Data Type Map - use dataTypeMapIndex to access this structure */
static TARGET_CONST rtwCAPI_DataTypeMap rtDataTypeMap[] = {
  /* cName, mwName, numElements, elemMapIndex, dataSize, slDataId, *
   * isComplex, isPointer */
  { "unsigned char", "boolean_T", 0, 0, sizeof(boolean_T), SS_BOOLEAN, 0, 0 },

  { "double", "real_T", 0, 0, sizeof(real_T), SS_DOUBLE, 0, 0 }
};

#ifdef HOST_CAPI_BUILD
#undef sizeof
#endif

/* Structure Element Map - use elemMapIndex to access this structure */
static TARGET_CONST rtwCAPI_ElementMap rtElementMap[] = {
  /* elementName, elementOffset, dataTypeIndex, dimIndex, fxpIndex */
  { (NULL), 0, 0, 0, 0 },
};

/* Dimension Map - use dimensionMapIndex to access elements of ths structure*/
static const rtwCAPI_DimensionMap rtDimensionMap[] = {
  /* dataOrientation, dimArrayIndex, numDims, vardimsIndex */
  { rtwCAPI_SCALAR, 0, 2, 0 },

  { rtwCAPI_VECTOR, 2, 2, 0 },

  { rtwCAPI_MATRIX_COL_MAJOR, 4, 2, 0 },

  { rtwCAPI_VECTOR, 6, 2, 0 }
};

/* Dimension Array- use dimArrayIndex to access elements of this array */
static const uint_T rtDimensionArray[] = {
  1,                                   /* 0 */
  1,                                   /* 1 */
  2,                                   /* 2 */
  1,                                   /* 3 */
  2,                                   /* 4 */
  2,                                   /* 5 */
  1,                                   /* 6 */
  5                                    /* 7 */
};

/* C-API stores floating point values in an array. The elements of this  *
 * are unique. This ensures that values which are shared across the model*
 * are stored in the most efficient way. These values are referenced by  *
 *           - rtwCAPI_FixPtMap.fracSlopePtr,                            *
 *           - rtwCAPI_FixPtMap.biasPtr,                                 *
 *           - rtwCAPI_SampleTimeMap.samplePeriodPtr,                    *
 *           - rtwCAPI_SampleTimeMap.sampleOffsetPtr                     */
static const real_T rtcapiStoredFloats[] = {
  5.0E-5, 0.0
};

/* Fixed Point Map */
static const rtwCAPI_FixPtMap rtFixPtMap[] = {
  /* fracSlopePtr, biasPtr, scaleType, wordLength, exponent, isSigned */
  { (NULL), (NULL), rtwCAPI_FIX_RESERVED, 0, 0, 0 },
};

/* Sample Time Map - use sTimeIndex to access elements of ths structure */
static const rtwCAPI_SampleTimeMap rtSampleTimeMap[] = {
  /* samplePeriodPtr, sampleOffsetPtr, tid, samplingMode */
  { (const void *) &rtcapiStoredFloats[0], (const void *) &rtcapiStoredFloats[1],
    1, 0 },

  { (const void *) &rtcapiStoredFloats[1], (const void *) &rtcapiStoredFloats[1],
    0, 0 }
};

static rtwCAPI_ModelMappingStaticInfo mmiStatic = {
  /* Signals:{signals, numSignals,
   *           rootInputs, numRootInputs,
   *           rootOutputs, numRootOutputs},
   * Params: {blockParameters, numBlockParameters,
   *          modelParameters, numModelParameters},
   * States: {states, numStates},
   * Maps:   {dataTypeMap, dimensionMap, fixPtMap,
   *          elementMap, sampleTimeMap, dimensionArray},
   * TargetType: targetType
   */
  { rtBlockSignals, 8,
    rtRootInputs, 1,
    rtRootOutputs, 1 },

  { rtBlockParameters, 21,
    rtModelParameters, 0 },

  { rtBlockStates, 2 },

  { rtDataTypeMap, rtDimensionMap, rtFixPtMap,
    rtElementMap, rtSampleTimeMap, rtDimensionArray },
  "float",

  { 3277800613U,
    3777019350U,
    810284145U,
    1014731362U },
  (NULL), 0,
  0
};

/* Function to get C API Model Mapping Static Info */
const rtwCAPI_ModelMappingStaticInfo*
  fpga_test_GetCAPIStaticMap(void)
{
  return &mmiStatic;
}

/* Cache pointers into DataMapInfo substructure of RTModel */
#ifndef HOST_CAPI_BUILD

void fpga_test_InitializeDataMapInfo(void)
{
  /* Set C-API version */
  rtwCAPI_SetVersion(fpga_test_M->DataMapInfo.mmi, 1);

  /* Cache static C-API data into the Real-time Model Data structure */
  rtwCAPI_SetStaticMap(fpga_test_M->DataMapInfo.mmi, &mmiStatic);

  /* Cache static C-API logging data into the Real-time Model Data structure */
  rtwCAPI_SetLoggingStaticMap(fpga_test_M->DataMapInfo.mmi, (NULL));

  /* Cache C-API Data Addresses into the Real-Time Model Data structure */
  rtwCAPI_SetDataAddressMap(fpga_test_M->DataMapInfo.mmi, rtDataAddrMap);

  /* Cache C-API Data Run-Time Dimension Buffer Addresses into the Real-Time Model Data structure */
  rtwCAPI_SetVarDimsAddressMap(fpga_test_M->DataMapInfo.mmi, rtVarDimsAddrMap);

  /* Cache the instance C-API logging pointer */
  rtwCAPI_SetInstanceLoggingInfo(fpga_test_M->DataMapInfo.mmi, (NULL));

  /* Set reference to submodels */
  rtwCAPI_SetChildMMIArray(fpga_test_M->DataMapInfo.mmi, (NULL));
  rtwCAPI_SetChildMMIArrayLen(fpga_test_M->DataMapInfo.mmi, 0);
}

#else                                  /* HOST_CAPI_BUILD */
#ifdef __cplusplus

extern "C" {

#endif

  void fpga_test_host_InitializeDataMapInfo(fpga_test_host_DataMapInfo_T
    *dataMap, const char *path)
  {
    /* Set C-API version */
    rtwCAPI_SetVersion(dataMap->mmi, 1);

    /* Cache static C-API data into the Real-time Model Data structure */
    rtwCAPI_SetStaticMap(dataMap->mmi, &mmiStatic);

    /* host data address map is NULL */
    rtwCAPI_SetDataAddressMap(dataMap->mmi, NULL);

    /* host vardims address map is NULL */
    rtwCAPI_SetVarDimsAddressMap(dataMap->mmi, NULL);

    /* Set Instance specific path */
    rtwCAPI_SetPath(dataMap->mmi, path);
    rtwCAPI_SetFullPath(dataMap->mmi, NULL);

    /* Set reference to submodels */
    rtwCAPI_SetChildMMIArray(dataMap->mmi, (NULL));
    rtwCAPI_SetChildMMIArrayLen(dataMap->mmi, 0);
  }

#ifdef __cplusplus

}
#endif
#endif                                 /* HOST_CAPI_BUILD */

/* EOF: fpga_test_capi.c */

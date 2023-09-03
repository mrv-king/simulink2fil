################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/nikgal/Vitis/fpga_test/fpga_test_grt_rtw/fpga_test.c \
C:/Users/nikgal/Vitis/fpga_test/fpga_test_grt_rtw/fpga_test_data.c \
C:/Xilinx/Vitis_HLS/2023.1/simulink_include/rtGetInf.c \
C:/Xilinx/Vitis_HLS/2023.1/simulink_include/rtGetNaN.c \
C:/Users/nikgal/Vitis/fpga_test/fpga_test_grt_rtw/rt_look.c \
C:/Users/nikgal/Vitis/fpga_test/fpga_test_grt_rtw/rt_look1d.c \
C:/Xilinx/Vitis_HLS/2023.1/simulink_include/rt_nonfinite.c 

OBJS += \
./source/fpga_test.o \
./source/fpga_test_data.o \
./source/rtGetInf.o \
./source/rtGetNaN.o \
./source/rt_look.o \
./source/rt_look1d.o \
./source/rt_nonfinite.o 

C_DEPS += \
./source/fpga_test.d \
./source/fpga_test_data.d \
./source/rtGetInf.d \
./source/rtGetNaN.d \
./source/rt_look.d \
./source/rt_look1d.d \
./source/rt_nonfinite.d 


# Each subdirectory must supply rules for building sources it contributes
source/fpga_test.o: C:/Users/nikgal/Vitis/fpga_test/fpga_test_grt_rtw/fpga_test.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -IC:/Xilinx/Vitis_HLS/2023.1/simulink_include -IC:/Xilinx/Vitis_HLS/2023.1/include/ap_sysc -IC:/Xilinx/Vitis_HLS/2023.1/include/etc -IC:/Xilinx/Vitis_HLS/2023.1/win64/tools/auto_cc/include -IC:/Xilinx/Vitis_HLS/2023.1/win64/tools/systemc/include -IC:/Xilinx/Vitis_HLS/2023.1/include -IC:/Users/nikgal/Vitis/fpga_test -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"source/fpga_test.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/fpga_test_data.o: C:/Users/nikgal/Vitis/fpga_test/fpga_test_grt_rtw/fpga_test_data.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -IC:/Xilinx/Vitis_HLS/2023.1/simulink_include -IC:/Xilinx/Vitis_HLS/2023.1/include/ap_sysc -IC:/Xilinx/Vitis_HLS/2023.1/include/etc -IC:/Xilinx/Vitis_HLS/2023.1/win64/tools/auto_cc/include -IC:/Xilinx/Vitis_HLS/2023.1/win64/tools/systemc/include -IC:/Xilinx/Vitis_HLS/2023.1/include -IC:/Users/nikgal/Vitis/fpga_test -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"source/fpga_test_data.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/rtGetInf.o: C:/Xilinx/Vitis_HLS/2023.1/simulink_include/rtGetInf.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -IC:/Xilinx/Vitis_HLS/2023.1/simulink_include -IC:/Xilinx/Vitis_HLS/2023.1/include/ap_sysc -IC:/Xilinx/Vitis_HLS/2023.1/include/etc -IC:/Xilinx/Vitis_HLS/2023.1/win64/tools/auto_cc/include -IC:/Xilinx/Vitis_HLS/2023.1/win64/tools/systemc/include -IC:/Xilinx/Vitis_HLS/2023.1/include -IC:/Users/nikgal/Vitis/fpga_test -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"source/rtGetInf.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/rtGetNaN.o: C:/Xilinx/Vitis_HLS/2023.1/simulink_include/rtGetNaN.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -IC:/Xilinx/Vitis_HLS/2023.1/simulink_include -IC:/Xilinx/Vitis_HLS/2023.1/include/ap_sysc -IC:/Xilinx/Vitis_HLS/2023.1/include/etc -IC:/Xilinx/Vitis_HLS/2023.1/win64/tools/auto_cc/include -IC:/Xilinx/Vitis_HLS/2023.1/win64/tools/systemc/include -IC:/Xilinx/Vitis_HLS/2023.1/include -IC:/Users/nikgal/Vitis/fpga_test -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"source/rtGetNaN.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/rt_look.o: C:/Users/nikgal/Vitis/fpga_test/fpga_test_grt_rtw/rt_look.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -IC:/Xilinx/Vitis_HLS/2023.1/simulink_include -IC:/Xilinx/Vitis_HLS/2023.1/include/ap_sysc -IC:/Xilinx/Vitis_HLS/2023.1/include/etc -IC:/Xilinx/Vitis_HLS/2023.1/win64/tools/auto_cc/include -IC:/Xilinx/Vitis_HLS/2023.1/win64/tools/systemc/include -IC:/Xilinx/Vitis_HLS/2023.1/include -IC:/Users/nikgal/Vitis/fpga_test -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"source/rt_look.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/rt_look1d.o: C:/Users/nikgal/Vitis/fpga_test/fpga_test_grt_rtw/rt_look1d.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -IC:/Xilinx/Vitis_HLS/2023.1/simulink_include -IC:/Xilinx/Vitis_HLS/2023.1/include/ap_sysc -IC:/Xilinx/Vitis_HLS/2023.1/include/etc -IC:/Xilinx/Vitis_HLS/2023.1/win64/tools/auto_cc/include -IC:/Xilinx/Vitis_HLS/2023.1/win64/tools/systemc/include -IC:/Xilinx/Vitis_HLS/2023.1/include -IC:/Users/nikgal/Vitis/fpga_test -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"source/rt_look1d.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/rt_nonfinite.o: C:/Xilinx/Vitis_HLS/2023.1/simulink_include/rt_nonfinite.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -IC:/Xilinx/Vitis_HLS/2023.1/simulink_include -IC:/Xilinx/Vitis_HLS/2023.1/include/ap_sysc -IC:/Xilinx/Vitis_HLS/2023.1/include/etc -IC:/Xilinx/Vitis_HLS/2023.1/win64/tools/auto_cc/include -IC:/Xilinx/Vitis_HLS/2023.1/win64/tools/systemc/include -IC:/Xilinx/Vitis_HLS/2023.1/include -IC:/Users/nikgal/Vitis/fpga_test -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"source/rt_nonfinite.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



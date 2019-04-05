################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS/startup_gcc/newlib_stubs.c 

S_UPPER_SRCS += \
../CMSIS/startup_gcc/startup_a2fxxxm3.S 

OBJS += \
./CMSIS/startup_gcc/newlib_stubs.o \
./CMSIS/startup_gcc/startup_a2fxxxm3.o 

C_DEPS += \
./CMSIS/startup_gcc/newlib_stubs.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/startup_gcc/%.o: ../CMSIS/startup_gcc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -DACTEL_STDIO_THRU_UART -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\CMSIS -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\CMSIS\startup_gcc -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_gpio -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm\drivers -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm\drivers\F2DSS_NVM -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_pdma -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc\drivers -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc\drivers\mss_rtc -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_timer -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_uart -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\hal -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\hal\CortexM3 -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\hal\CortexM3\GNU -O1 -ffunction-sections -fdata-sections -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CMSIS/startup_gcc/%.o: ../CMSIS/startup_gcc/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Assembler'
	arm-none-eabi-gcc -c -mthumb -mcpu=cortex-m3 -specs=bare.specs  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



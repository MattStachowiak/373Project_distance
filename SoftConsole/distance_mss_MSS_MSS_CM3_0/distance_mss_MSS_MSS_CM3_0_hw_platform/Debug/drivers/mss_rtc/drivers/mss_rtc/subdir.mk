################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/mss_rtc/drivers/mss_rtc/mss_rtc.c 

OBJS += \
./drivers/mss_rtc/drivers/mss_rtc/mss_rtc.o 

C_DEPS += \
./drivers/mss_rtc/drivers/mss_rtc/mss_rtc.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/mss_rtc/drivers/mss_rtc/%.o: ../drivers/mss_rtc/drivers/mss_rtc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -DACTEL_STDIO_THRU_UART -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\CMSIS -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\CMSIS\startup_gcc -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_gpio -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm\drivers -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_nvm\drivers\F2DSS_NVM -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_pdma -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc\drivers -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_rtc\drivers\mss_rtc -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_timer -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\drivers\mss_uart -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\hal -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\hal\CortexM3 -ID:\distance\SoftConsole\distance_mss_MSS_MSS_CM3_0\distance_mss_MSS_MSS_CM3_0_hw_platform\hal\CortexM3\GNU -O1 -ffunction-sections -fdata-sections -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


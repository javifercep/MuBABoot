################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32f4xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32f4xx.o: C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F405xx -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Core\Inc" -I"../..\..\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy" -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Class\DFU\Inc" -I"../..\..\Drivers\CMSIS\Include" -I"../..\..\Drivers\CMSIS\Device\ST\STM32F4xx\Include" -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



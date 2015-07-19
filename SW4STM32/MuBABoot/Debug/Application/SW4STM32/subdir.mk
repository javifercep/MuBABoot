################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f405xx.s 

OBJS += \
./Application/SW4STM32/startup_stm32f405xx.o 


# Each subdirectory must supply rules for building sources it contributes
Application/SW4STM32/startup_stm32f405xx.o: C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f405xx.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -I"C:\Users\JAVIS\Documents\GitLAB\Bootloader\MuBABoot\Inc" -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



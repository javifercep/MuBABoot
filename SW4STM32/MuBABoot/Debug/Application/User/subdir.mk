################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Src/eeprom.c \
C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Src/gpio.c \
C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Src/main.c \
C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Src/stm32f4xx_hal_msp.c \
C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Src/stm32f4xx_it.c \
C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Src/usb_device.c \
C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Src/usbd_conf.c \
C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Src/usbd_desc.c \
C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Src/usbd_dfu_if.c 

OBJS += \
./Application/User/eeprom.o \
./Application/User/gpio.o \
./Application/User/main.o \
./Application/User/stm32f4xx_hal_msp.o \
./Application/User/stm32f4xx_it.o \
./Application/User/usb_device.o \
./Application/User/usbd_conf.o \
./Application/User/usbd_desc.o \
./Application/User/usbd_dfu_if.o 

C_DEPS += \
./Application/User/eeprom.d \
./Application/User/gpio.d \
./Application/User/main.d \
./Application/User/stm32f4xx_hal_msp.d \
./Application/User/stm32f4xx_it.d \
./Application/User/usb_device.d \
./Application/User/usbd_conf.d \
./Application/User/usbd_desc.d \
./Application/User/usbd_dfu_if.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/eeprom.o: C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Src/eeprom.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F405xx -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Core\Inc" -I"../..\..\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy" -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Class\DFU\Inc" -I"../..\..\Drivers\CMSIS\Include" -I"../..\..\Drivers\CMSIS\Device\ST\STM32F4xx\Include" -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/gpio.o: C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Src/gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F405xx -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Core\Inc" -I"../..\..\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy" -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Class\DFU\Inc" -I"../..\..\Drivers\CMSIS\Include" -I"../..\..\Drivers\CMSIS\Device\ST\STM32F4xx\Include" -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/main.o: C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F405xx -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Core\Inc" -I"../..\..\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy" -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Class\DFU\Inc" -I"../..\..\Drivers\CMSIS\Include" -I"../..\..\Drivers\CMSIS\Device\ST\STM32F4xx\Include" -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f4xx_hal_msp.o: C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Src/stm32f4xx_hal_msp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F405xx -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Core\Inc" -I"../..\..\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy" -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Class\DFU\Inc" -I"../..\..\Drivers\CMSIS\Include" -I"../..\..\Drivers\CMSIS\Device\ST\STM32F4xx\Include" -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f4xx_it.o: C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Src/stm32f4xx_it.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F405xx -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Core\Inc" -I"../..\..\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy" -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Class\DFU\Inc" -I"../..\..\Drivers\CMSIS\Include" -I"../..\..\Drivers\CMSIS\Device\ST\STM32F4xx\Include" -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usb_device.o: C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Src/usb_device.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F405xx -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Core\Inc" -I"../..\..\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy" -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Class\DFU\Inc" -I"../..\..\Drivers\CMSIS\Include" -I"../..\..\Drivers\CMSIS\Device\ST\STM32F4xx\Include" -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usbd_conf.o: C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Src/usbd_conf.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F405xx -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Core\Inc" -I"../..\..\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy" -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Class\DFU\Inc" -I"../..\..\Drivers\CMSIS\Include" -I"../..\..\Drivers\CMSIS\Device\ST\STM32F4xx\Include" -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usbd_desc.o: C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Src/usbd_desc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F405xx -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Core\Inc" -I"../..\..\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy" -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Class\DFU\Inc" -I"../..\..\Drivers\CMSIS\Include" -I"../..\..\Drivers\CMSIS\Device\ST\STM32F4xx\Include" -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usbd_dfu_if.o: C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Src/usbd_dfu_if.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F405xx -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Core\Inc" -I"../..\..\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy" -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Class\DFU\Inc" -I"../..\..\Drivers\CMSIS\Include" -I"../..\..\Drivers\CMSIS\Device\ST\STM32F4xx\Include" -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



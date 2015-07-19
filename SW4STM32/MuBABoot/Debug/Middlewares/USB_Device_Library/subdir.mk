################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.c \
C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c \
C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Src/usbd_dfu.c \
C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c 

OBJS += \
./Middlewares/USB_Device_Library/usbd_core.o \
./Middlewares/USB_Device_Library/usbd_ctlreq.o \
./Middlewares/USB_Device_Library/usbd_dfu.o \
./Middlewares/USB_Device_Library/usbd_ioreq.o 

C_DEPS += \
./Middlewares/USB_Device_Library/usbd_core.d \
./Middlewares/USB_Device_Library/usbd_ctlreq.d \
./Middlewares/USB_Device_Library/usbd_dfu.d \
./Middlewares/USB_Device_Library/usbd_ioreq.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/USB_Device_Library/usbd_core.o: C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F405xx -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Core\Inc" -I"../..\..\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy" -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Class\DFU\Inc" -I"../..\..\Drivers\CMSIS\Include" -I"../..\..\Drivers\CMSIS\Device\ST\STM32F4xx\Include" -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/USB_Device_Library/usbd_ctlreq.o: C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F405xx -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Core\Inc" -I"../..\..\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy" -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Class\DFU\Inc" -I"../..\..\Drivers\CMSIS\Include" -I"../..\..\Drivers\CMSIS\Device\ST\STM32F4xx\Include" -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/USB_Device_Library/usbd_dfu.o: C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Src/usbd_dfu.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F405xx -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Core\Inc" -I"../..\..\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy" -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Class\DFU\Inc" -I"../..\..\Drivers\CMSIS\Include" -I"../..\..\Drivers\CMSIS\Device\ST\STM32F4xx\Include" -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/USB_Device_Library/usbd_ioreq.o: C:/Users/JAVIS/Documents/GitLAB/MuBABoot/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F405xx -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Core\Inc" -I"../..\..\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc" -I"../..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy" -I"../..\..\Middlewares\ST\STM32_USB_Device_Library\Class\DFU\Inc" -I"../..\..\Drivers\CMSIS\Include" -I"../..\..\Drivers\CMSIS\Device\ST\STM32F4xx\Include" -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



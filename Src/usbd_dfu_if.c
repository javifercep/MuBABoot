/**
  ******************************************************************************
  * @file           : usbd_dfu_if.c
  * @brief          :
  ******************************************************************************
  * COPYRIGHT(c) 2015 STMicroelectronics
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  * 1. Redistributions of source code must retain the above copyright notice,
  * this list of conditions and the following disclaimer.
  * 2. Redistributions in binary form must reproduce the above copyright notice,
  * this list of conditions and the following disclaimer in the documentation
  * and/or other materials provided with the distribution.
  * 3. Neither the name of STMicroelectronics nor the names of its contributors
  * may be used to endorse or promote products derived from this software
  * without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "usbd_dfu_if.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
#define FLASH_DESC_STR      "@Internal Flash   /0x08000000/03*016Ka,01*016Kg,01*064Kg,07*128Kg,04*016Kg,01*064Kg,07*128Kg"
#define INIT_FLASH_ADD 	    0x08000000
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* USB handler declaration */

/* Handle for USB High Speed IP */
USBD_HandleTypeDef  *hUsbDevice_1;

/* Private function prototypes -----------------------------------------------*/
/* Extern function prototypes ------------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

static uint16_t MEM_If_Init_HS(void);
static uint16_t MEM_If_Erase_HS (uint32_t Add);
static uint16_t MEM_If_Write_HS (uint8_t *src, uint8_t *dest, uint32_t Len);
static uint8_t *MEM_If_Read_HS  (uint8_t *src, uint8_t *dest, uint32_t Len);
static uint16_t MEM_If_DeInit_HS(void);
static uint16_t MEM_If_GetStatus_HS (uint32_t Add, uint8_t Cmd, uint8_t *buffer);

#if defined ( __ICCARM__ ) /*!< IAR Compiler */
  #pragma data_alignment=4   
#endif

__ALIGN_BEGIN USBD_DFU_MediaTypeDef USBD_DFU_fops_HS __ALIGN_END =
{
    (uint8_t*)FLASH_DESC_STR,
    MEM_If_Init_HS,
    MEM_If_DeInit_HS,
    MEM_If_Erase_HS,
    MEM_If_Write_HS,
    MEM_If_Read_HS,
    MEM_If_GetStatus_HS,   
};

/**
  * @brief  MEM_If_Init_HS
  *         Memory initialization routine.
  * @param  None
  * @retval 0 if operation is successful, MAL_FAIL else.
  */
uint16_t MEM_If_Init_HS(void)
{ 
  uint16_t ret = USBD_OK;
  /* USER CODE BEGIN 7 */ 
  /* Unlock the internal flash */
  HAL_FLASH_Unlock();
  return ret;
  /* USER CODE END 7 */ 
}

/**
  * @brief  MEM_If_DeInit_HS
   *         De-Initializes Memory.
  * @param  None
  * @retval 0 if operation is successful, MAL_FAIL else.
  */
uint16_t MEM_If_DeInit_HS(void)
{ 
  /* USER CODE BEGIN 8 */
  HAL_FLASH_Lock();
  return (USBD_OK);
  /* USER CODE END 8 */ 
}

/**
  * @brief  MEM_If_Erase_HS
  *         Erase sector.
  * @param  Add: Address of sector to be erased.
  * @retval 0 if operation is successful, MAL_FAIL else.
  */
uint16_t MEM_If_Erase_HS(uint32_t Add)
{
	/* USER CODE BEGIN 9 */
	USBD_StatusTypeDef RetValue = USBD_OK;

	/* Check which sector has to be erased */
	if (Add < 0x08004000)
	{
		/* This sector is reserved for DFU code */
		//FLASH_Erase_Sector(FLASH_SECTOR_0, FLASH_VOLTAGE_RANGE_3);
	    RetValue = USBD_FAIL;
	}
	else if (Add < 0x08008000)
	{
		/* This sector is reserved for DFU code */
		//FLASH_Erase_Sector(FLASH_SECTOR_1, FLASH_VOLTAGE_RANGE_3);
	    RetValue = USBD_FAIL;
	}
	else if (Add < 0x0800C000)
	{
		/* This sector is reserved for EEprom Emulation */
		//FLASH_Erase_Sector(FLASH_SECTOR_2, FLASH_VOLTAGE_RANGE_3);
	    RetValue = USBD_FAIL;
	}
	else if (Add < 0x08010000)
	{
		/* This sector is reserved for EEprom Emulation */
		//FLASH_Erase_Sector(FLASH_SECTOR_3, FLASH_VOLTAGE_RANGE_3);
	    RetValue = USBD_FAIL;
	}
	else if (Add < 0x08020000)
	{
		FLASH_Erase_Sector(FLASH_SECTOR_4, FLASH_VOLTAGE_RANGE_3);
	}
	else if (Add < 0x08040000)
	{
		FLASH_Erase_Sector(FLASH_SECTOR_5, FLASH_VOLTAGE_RANGE_3);
	}
	else if (Add < 0x08060000)
	{
		FLASH_Erase_Sector(FLASH_SECTOR_6, FLASH_VOLTAGE_RANGE_3);
	}
	else if (Add < 0x08080000)
	{
		FLASH_Erase_Sector(FLASH_SECTOR_7, FLASH_VOLTAGE_RANGE_3);
	}
	else if (Add < 0x080A0000)
	{
		FLASH_Erase_Sector(FLASH_SECTOR_8, FLASH_VOLTAGE_RANGE_3);
	}
	else if (Add < 0x080C0000)
	{
		FLASH_Erase_Sector(FLASH_SECTOR_9, FLASH_VOLTAGE_RANGE_3);
	}
	else if (Add < 0x080E0000)
	{
		FLASH_Erase_Sector(FLASH_SECTOR_10, FLASH_VOLTAGE_RANGE_3);
	}
	else if (Add < 0x08100000)
	{
		FLASH_Erase_Sector(FLASH_SECTOR_11, FLASH_VOLTAGE_RANGE_3);
	}
	else
	{
		RetValue = USBD_FAIL;
	}
	if(RetValue != USBD_FAIL)
	{
        if(FLASH_WaitForLastOperation(1000) == HAL_ERROR)
        {
        	RetValue = USBD_FAIL;
        }
	}

	return RetValue;
	/* USER CODE END 9 */
}

/**
  * @brief  MEM_If_Write_HS
  *         Memory write routine.
  * @param  src: Pointer to the source buffer. Address to be written to.
  * @param  dest: Pointer to the destination buffer.
  * @param  Len: Number of data to be written (in bytes).
  * @retval 0 if operation is successful, MAL_FAIL else.
  */
uint16_t MEM_If_Write_HS(uint8_t *src, uint8_t *dest, uint32_t Len)
{
	uint32_t idx = 0;
	uint32_t Add = (uint32_t)dest;

	if  (Len & 0x3) /* Not an aligned data */
	{
		for (idx = Len; idx < ((Len & 0xFFFC) + 4); idx++)
		{
		    src[idx] = 0xFF;
		}
	}

	/* Data received are Word multiple */
	for (idx = 0; idx <  Len; idx = idx + 4)
	{
		HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, Add, *(uint32_t *)(src + idx));
		Add += 4;
	}
  /* USER CODE BEGIN 10 */ 
  return (USBD_OK);
  /* USER CODE END 10 */ 
}

/**
  * @brief  MEM_If_Read_HS
  *         Memory read routine.
  * @param  src: Pointer to the source buffer. Address to be written to.
  * @param  dest: Pointer to the destination buffer.
  * @param  Len: Number of data to be read (in bytes).
  * @retval Pointer to the physical address where data should be read.
  */
uint8_t *MEM_If_Read_HS (uint8_t *src, uint8_t *dest, uint32_t Len)
{
  /* USER CODE BEGIN 11 */ 

  uint32_t idx = 0;
  uint32_t Add = (uint32_t)src;

   for (idx = 0; idx < Len; idx += 4)
   {
     *(uint32_t*)(dest + idx) = *(uint32_t *)(Add + idx);
   }

   return (uint8_t*)(dest);
  /* USER CODE END 11 */ 
}

/**
  * @brief  Flash_If_GetStatus_HS
  *         Get status routine.
  * @param  Add: Address to be read from.
  * @param  Cmd: Number of data to be read (in bytes).
  * @param  buffer: used for returning the time necessary for a program or an erase operation
  * @retval 0 if operation is successful
  */
uint16_t MEM_If_GetStatus_HS (uint32_t Add, uint8_t Cmd, uint8_t *buffer)
{
  uint16_t ret = USBD_OK;
  /* USER CODE BEGIN 12 */ 
  switch (Cmd)
  {
  case DFU_MEDIA_PROGRAM:
  case DFU_MEDIA_ERASE:
    if((Add > INIT_FLASH_ADD) && (Add < USBD_DFU_APP_DEFAULT_ADD))
      {
	  ret = USBD_FAIL;
      }
    break;
  default:

    break;
  }
  return  ret;
  /* USER CODE END 12 */  
}
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/


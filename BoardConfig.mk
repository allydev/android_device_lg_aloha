# Copyright (c) 2009, Code Aurora Forum.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#
# config.mk
#
# Product-specific compile-time definitions.
#

#    BOARD_USES_QCOM_LIBS := true
#    BOARD_USES_QCOM_HARDWARE := true
    BOARD_USES_ADRENO_200 := true
    HAVE_ADRENO200_FIRMWARE := true
    BOARD_GPS_LIBRARIES := libloc
    
    BOARD_HAVE_BLUETOOTH := true
    BOARD_HAVE_BLUETOOTH_BCM := true
#    BRCM_BT_USE_BTL_IF := true
    
#    BT_ALT_STACK := true
#    BRCM_BTL_INCLUDE_A2DP := true
#    BOARD_WIRELESS_CHIP := bcm4329
    BOARD_USES_GENERIC_AUDIO := false
    USE_CAMERA_STUB := true
#    BOARD_USES_ECLAIR_LIBCAMERA := true
#    BOARD_CAMERA_LIBRARIES := libcamera

#    BOARD_HAVE_FM_RADIO := true

    BOARD_WPA_SUPPLICANT_DRIVER := WEXT
    WPA_SUPPLICANT_VERSION := VER_0_6_X
#    BOARD_WLAN_DEVICE := bcm4329
    WIFI_DRIVER_MODULE_PATH :=  "/system/lib/modules/wireless.ko"
    WIFI_DRIVER_MODULE_ARG  :=  "firmware_path=/system/etc/wl/rtecdc.bin nvram_path=/system/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
    WIFI_DRIVER_MODULE_NAME :=  "wireless"
#    WIFI_DRIVER_FW_STA_PATH :=  "/system/etc/wl/rtecdc_sta.bin"
#    WIFI_DRIVER_FW_AP_PATH :=  "/system/etc/wl/rtecdc.bin"
#    WIFI_SDIO_IF_DRIVER_MODULE_PATH := "/system/lib/modules/librasdioif.ko"
#    WIFI_SDIO_IF_DRIVER_MODULE_NAME := "librasdioif"
#    WIFI_SDIO_IF_DRIVER_MODULE_ARG  := ""


TARGET_USES_2G_VM_SPLIT := true

TARGET_NO_BOOTLOADER := true
#TARGET_NO_KERNEL := true
TARGET_NO_RADIOIMAGE := true
TARGET_PREBUILT_KERNEL := device/lg/aloha/kernel
#TARGET_HARDWARE_3D := true
TARGET_NO_RECOVERY := false
TARGET_HARDWARE_3D := false

WITH_JIT := true
ENABLE_JSC_JIT := true
#JS_ENGINE := jsc
USE_ALT_JS_ENGINE := true

TARGET_GLOBAL_CFLAGS += -mfpu=vfp -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=vfp -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_ARCH_VARIANT_FPU := vfp
#TARGET_CPU_ABI := armeabi
#TARGET_ARCH_VARIANT := armv5te-vfp
TARGET_BOARD_PLATFORM := msm7k
TARGET_BOOTLOADER_BOARD_NAME := aloha
#QCOM_TARGET_PRODUCT := msm7627_ffa

BOARD_KERNEL_BASE    := 0x00200000
BOARD_NAND_PAGE_SIZE := 2048

BOARD_KERNEL_CMDLINE := mem=223M console=ttyMSM0,115200n8 androidboot.hardware=aloha
BOARD_EGL_CFG := device/lg/$(TARGET_PRODUCT)/egl.cfg

#BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x05F00000
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x02000000
#BOARD_FLASH_BLOCK_SIZE := $(BOARD_NAND_PAGE_SIZE) * 64

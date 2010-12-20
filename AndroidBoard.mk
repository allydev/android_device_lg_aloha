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
LOCAL_PATH := $(call my-dir)

#----------------------------------------------------------------------
# Compile (L)ittle (K)ernel bootloader and the nandwrite utility
#----------------------------------------------------------------------
#ifneq ($(strip $(TARGET_NO_BOOTLOADER)),true)

# Compile
#include bootable/bootloader/lk/AndroidBoot.mk

#INSTALLED_BOOTLOADER_TARGET := $(PRODUCT_OUT)/bootloader
#file := $(INSTALLED_BOOTLOADER_TARGET)
#ALL_PREBUILT += $(file)
#$(file): $(TARGET_BOOTLOADER) | $(ACP)
#	$(transform-prebuilt-to-target)

# Copy nandwrite utility to target out directory
#INSTALLED_NANDWRITE_TARGET := $(PRODUCT_OUT)/nandwrite
#file := $(INSTALLED_NANDWRITE_TARGET)
#ALL_PREBUILT += $(file)
#$(file) : $(TARGET_NANDWRITE) | $(ACP)
#	$(transform-prebuilt-to-target)
#endif

#----------------------------------------------------------------------
# Compile Linux Kernel
#----------------------------------------------------------------------
ifeq ($(KERNEL_DEFCONFIG),)
    KERNEL_DEFCONFIG := msm7627-perf_defconfig
endif

#include kernel/AndroidKernel.mk

#file := $(TARGET_OUT_KEYLAYOUT)/qwerty.kl
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/qwerty.kl | $(ACP)
#	$(transform-prebuilt-to-target)

#file := $(TARGET_OUT_KEYLAYOUT)/aloha.kl
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/aloha.kl | $(ACP)
#	$(transform-prebuilt-to-target)

#include $(CLEAR_VARS)
#LOCAL_SRC_FILES := aloha.kcm.bin
#include $(BUILD_KEY_CHAR_MAP)

file := $(TARGET_OUT)/etc/vold.fstab
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/vold.fstab | $(ACP)
	$(transform-prebuilt-to-target)

ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file) : $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.aloha.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.aloha.rc | $(ACP)
	$(transform-prebuilt-to-target)



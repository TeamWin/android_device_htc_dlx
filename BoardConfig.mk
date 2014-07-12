# Copyright (C) 2013 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/dlx/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := dlx
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true

#Kernel
BOARD_KERNEL_BASE := 0x80600000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=dlx user_debug=0 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01800000
TARGET_KERNEL_CONFIG := cyanogenmod_dlx_defconfig
TARGET_KERNEL_SOURCE := kernel/htc/m7

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1946156032
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12482248704
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_MAX_PARTITIONS := 36

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/htc_lpm/lpm_mode

# TWRP
DEVICE_RESOLUTION := 1080x1920
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/usb-otg"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "usb-otg"
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INCLUDE_JB_CRYPTO := true
TW_NO_USB_STORAGE := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_HTC_LED := true
BOARD_RECOVERY_BLDRMSG_OFFSET := 2048

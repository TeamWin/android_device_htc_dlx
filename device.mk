# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product-if-exists, vendor/htc/dlx/dlx-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/dlx/overlay

LOCAL_PATH := device/htc/dlx
ifeq ($(TARGET_PREBUILT_KERNEL),)
        LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
        LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/etc/fstab.dlx:recovery/root/fstab.dlx \
    $(LOCAL_PATH)/recovery/etc/init.recovery.dlx.rc:root/init.recovery.dlx.rc \
    $(LOCAL_PATH)/recovery/etc/lpm.rc:recovery/root/lpm.rc \
    $(LOCAL_PATH)/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    $(LOCAL_PATH)/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    $(LOCAL_PATH)/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    $(LOCAL_PATH)/recovery/sbin/power_test:recovery/root/sbin/power_test

PRODUCT_PACKAGES += \
    chargeled \
    offmode_charging_res_images \
    offmode_charging_warn_res_images

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_dlx
PRODUCT_DEVICE := dlx

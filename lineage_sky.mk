#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/sky

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common lineageos configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/sky/sky-vendor.mk)

## Device identifier
PRODUCT_DEVICE := sky
PRODUCT_NAME := lineage_sky
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23076RN4BI
PRODUCT_MANUFACTURER := Xiaomi

TARGET_USES_BLUR_RECENT := false

# Adding Blur support
TARGET_SUPPORTS_BLUR := false

# For UDFPS devices
TARGET_HAS_UDFPS := false

EXTRA_UDFPS_ANIMATIONS := false

# BLKI
BLACKIRON_MAINTAINER := Dhanush
WITH_GMS := true
BLACKIRON_BUILDTYPE := UNOFFICIAL
TARGET_ENABLE_BLUR := false

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

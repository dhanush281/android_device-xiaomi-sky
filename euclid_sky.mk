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

# Inherit common euclidOS configurations
$(call inherit-product, vendor/euclid/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/sky/sky-vendor.mk)

## Device identifier
PRODUCT_DEVICE := sky
PRODUCT_NAME := euclid_sky
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23076RN4BI
PRODUCT_MANUFACTURER := Xiaomi

#Maintainer
EUCLID_BUILD_TYPE := OFFICIAL
EUCLID_MAINTAINER := Dhanush
#Gapps
EUCLID_GAPPS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_GOOGLE_DIALER := true

#UDFPS
EXTRA_UDFPS_ANIMATIONS := false

#Misc.
TARGET_SUPPORTS_TOUCHGESTURES := false

TARGET_SUPPORTS_BLUR := false

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

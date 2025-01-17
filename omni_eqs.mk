#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from eqs device
$(call inherit-product, device/motorola/eqs/device.mk)

PRODUCT_DEVICE := eqs
PRODUCT_NAME := omni_eqs
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Taro for arm64
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="eqs-user 12 U1SQ34.53-33 2d7225 release-keys"

BUILD_FINGERPRINT := motorola/eqs/eqs:12/U1SQ34.53-33/2d7225:user/release-keys

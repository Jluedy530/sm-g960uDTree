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

# Inherit from starqltesq device
$(call inherit-product, device/samsung/starqltesq/device.mk)

PRODUCT_DEVICE := starqltesq
PRODUCT_NAME := omni_starqltesq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G960U
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="starqltesq-user 10 QP1A.190711.020 G960USQU9FVB2 release-keys"

BUILD_FINGERPRINT := samsung/starqltesq/starqltesq:10/QP1A.190711.020/G960USQU9FVB2:user/release-keys

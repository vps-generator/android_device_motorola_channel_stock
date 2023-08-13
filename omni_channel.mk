#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from channel device
$(call inherit-product, device/motorola/channel/device.mk)

PRODUCT_DEVICE := channel
PRODUCT_NAME := omni_channel
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(7) play
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="channel-user 9 PPY29.148-140 687ae release-keys"

BUILD_FINGERPRINT := motorola/lineage_channel/channel:12/SP2A.220505.002/vitor05160055:userdebug/release-keys

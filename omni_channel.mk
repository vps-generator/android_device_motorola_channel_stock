#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/omni/config/common.mk)

AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    system \
    vendor

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_verifier

 # The following modules are included in debuggable builds only.
PRODUCT_PACKAGES_DEBUG += \
    bootctl \
    update_engine_client

 # Boot control HAL
PRODUCT_PACKAGES += \
    bootctrl.msm8953

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.msm8953 \
    libcutils \
    libgptutils \
    libz


PRODUCT_DEVICE := channel
PRODUCT_NAME := omni_channel
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(7) play
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="channel-user 9 PPY29.148-140 687ae release-keys"

BUILD_FINGERPRINT := motorola/lineage_channel/channel:12/SP2A.220505.002/vitor05160055:userdebug/release-keys

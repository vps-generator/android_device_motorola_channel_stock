#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

ifneq ($(filter channel,$(TARGET_DEVICE)),)

LOCAL_PATH := device/motorola/channel/

include $(call all-makefiles-under,$(LOCAL_PATH))

endif

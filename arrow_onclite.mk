#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from onclite device
$(call inherit-product, device/xiaomi/onclite/device.mk)

# Inherit some ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

DEVICE_MAINTAINER := TheAcanthite

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_onclite
PRODUCT_DEVICE := onclite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="onc-user 9 PKQ1.181021.001 V10.3.4.0.PFLMIXM release-keys" \
    PRODUCT_NAME="onc" \
    TARGET_DEVICE="onc"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


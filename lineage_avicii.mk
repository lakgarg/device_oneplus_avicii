#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Nord_IND device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := oneplus
PRODUCT_DEVICE := avicii
PRODUCT_MANUFACTURER := oneplus
PRODUCT_NAME := lineage_avicii
PRODUCT_MODEL := OnePlus Nord

PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="Nord-user 10 QKQ1.200412.002 2007170006 release-keys"

# Build info
BUILD_FINGERPRINT := "Redmi/picasso/picasso:10/QKQ1.191117.002/V11.0.3.0.QGICNXM:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=nord  \
    PRODUCT_NAME=nord \
    PRIVATE_BUILD_DESC="Nord-user 10 QKQ1.200412.002 2007170006 release-keys"
      
# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := OnePlus/Nord_IND/Nord:10/QKQ1.200412.002/2007170006:user/release-keys

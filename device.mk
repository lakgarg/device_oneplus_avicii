#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# Bluetooth
PRODUCT_PACKAGES += \
    libbluetooth_qti

# Camera
PRODUCT_PACKAGES += \
    Snap

# Init
PRODUCT_PACKAGES += \
    init.qcom.rc \
    init.recovery.qcom.rc

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.oneplus_avicii \
    lineage.biometrics.fingerprint.inscreen@1.0-service.oneplus_avicii \
    vendor.oneplus.fingerprint.extension@1.0 \
    vendor.oneplus.hardware.display@1.0

# Lineage Permissions
PRODUCT_COPY_FILES += \
    vendor/lineage/config/permissions/vendor.lineage.biometrics.fingerprint.inscreen.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/vendor.lineage.biometrics.fingerprint.inscreen.xml

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/framework_manifest.xml

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gf_input.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/gf_input.kl

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    Tag \
    SecureElement

# Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    device/oneplus/common

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    
# Telephony
PRODUCT_PACKAGES += \
    telephony-ext \

PRODUCT_BOOT_JARS += \
    telephony-ext

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

# Update Engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

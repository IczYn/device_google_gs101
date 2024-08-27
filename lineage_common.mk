#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/gs101/overlay-lineage

# AiAi Config
PRODUCT_COPY_FILES += \
    device/google/gs101/allowlist_com.google.android.as.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/allowlist_com.google.android.as.xml

# Adaptive charging
PRODUCT_COPY_FILES += \
    device/google/gs101/conf/adaptivecharging.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/adaptivecharging.xml

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# Google Assistant
PRODUCT_PRODUCT_PROPERTIES += ro.opa.eligible_device=true

# EUICC
PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay

# Linker config
PRODUCT_VENDOR_LINKER_CONFIG_FRAGMENTS += \
    device/google/gs101/linker.config.json

# Parts
PRODUCT_PACKAGES += \
    GoogleParts

# Touch
include hardware/google/pixel/touch/device.mk

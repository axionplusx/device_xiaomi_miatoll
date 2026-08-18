#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# AxionOS Flags
TARGET_DISABLE_EPPE := true
TARGET_INCLUDES_LOS_PREBUILTS := true

# Enable AxionFx
TARGET_INCLUDE_AXFX := true

# Enable debugging (persist.sys.ax_debug_enabled=1)
TARGET_ENABLE_AX_DEBUG := true


# Google Mobile Services (Full GMS)
WITH_GMS := true
TARGET_GAPPS_VARIANT := gms
TARGET_INCLUDE_GOOGLE_TELECOMM := true
TARGET_INCLUDE_PARTNER_SETUP := true

# AxionOS Device Properties
AXION_CAMERA_REAR_INFO := 64,8,5,2
AXION_CAMERA_FRONT_INFO := 16
AXION_MAINTAINER := AbdoElbanaa
AXION_PROCESSOR := Snapdragon_720G

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from miatoll device
$(call inherit-product, device/xiaomi/miatoll/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_NAME := lineage_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := SM6250

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="miatoll_global-user 12 SKQ1.211019.001 V14.0.3.0.SJZMIXM release-keys" \
    BuildFingerprint=Redmi/miatoll_global/miatoll:12/RKQ1.211019.001/V14.0.3.0.SJZMIXM:user/release-keys

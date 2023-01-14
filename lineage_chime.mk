#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from chime device
$(call inherit-product, device/xiaomi/chime/device.mk)

# Inherit some common Pixel Flags.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# lineageFlags!
USE_LEGACY_BOOTANIMATION := true
TARGET_FACE_UNLOCK_SUPPORTED := true
RICE_MAINTAINER := Ayan-whyyraku
RICE_OFFICIAL := true
RICE_CHIPSET := SD662
SUSHI_BOOTANIMATION := 720
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := false
TARGET_USE_PIXEL_FINGERPRINT := false
TARGET_OPTOUT_GOOGLE_TELEPHONY := true
# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_chime
PRODUCT_DEVICE := chime
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SM6115
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

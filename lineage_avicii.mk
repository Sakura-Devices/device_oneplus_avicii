#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from avicii device
$(call inherit-product, device/oneplus/avicii/device.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# PixelExperience Properties
#TARGET_USES_AOSP_RECOVERY := true
#TARGET_USES_CUSTOM_AVB_KEY := true

PRODUCT_NAME := lineage_avicii
PRODUCT_DEVICE := avicii
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := AC2003
CUSTOM_DEVICE := Nord
TARGET_BOOT_ANIMATION_RES := 1080
SAKURA_MAINTAINER := HMTheBoy154
SAKURA_LAWNCHAIR := true
SAKURA_OFFICIAL := true

# FOD animations
TARGET_WANTS_FOD_ANIMATIONS := true

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=Nord \
    PRODUCT_NAME=Nord

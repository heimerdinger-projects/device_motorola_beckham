#
# Copyright (C) 2017 The LineageOS Open Source Project
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

# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Device
$(call inherit-product, device/motorola/beckham/device.mk)

# Device identifiers
PRODUCT_DEVICE := beckham
PRODUCT_NAME := lineage_beckham
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto Z3 Play
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=beckham

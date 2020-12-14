#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from motorola sdm660-common
-include device/motorola/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/beckham

# A/B updater
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    system \
    vendor

# Assertions
TARGET_BOARD_INFO_FILE := device/motorola/beckham/board-info.txt
TARGET_OTA_ASSERT_DEVICE := beckham

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
TARGET_KERNEL_CONFIG := beckham_defconfig

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/vintf/motomods.xml

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864 # 64 MB

# Retrofit dynamic partitions
BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 3187671040 # 3040 MB
BOARD_SUPER_PARTITION_VENDOR_DEVICE_SIZE := 939524096 # 896 MB
BOARD_SUPER_PARTITION_SIZE := 4127195136 # 3936 MB
BOARD_MOTO_DYNAMIC_PARTITIONS_SIZE := 4123000832 # 3932 MB

# Power
TARGET_HAS_NO_WLAN_STATS := true

# Properties
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# SELinux
PRODUCT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy-mods/private
PRODUCT_PUBLIC_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy-mods/public
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy-mods/vendor

# inherit from the proprietary version
include vendor/motorola/beckham/BoardConfigVendor.mk

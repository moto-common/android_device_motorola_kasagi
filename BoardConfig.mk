# Copyright 2014 The Android Open Source Project
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

# Platform Config
PRODUCT_PLATFORM := sm6150
include device/motorola/sm6150-common/PlatformConfig.mk

# Device Path
DEVICE_PATH := device/motorola/kasagi

# Partition information
BOARD_SUPER_PARTITION_SIZE := 9730785280
BOARD_SUPER_PARTITION_GROUPS := mot_dynamic_partitions

# DYNAMIC_PARTITIONS_SIZE = (SUPER_PARTITION_SIZE / 2) - 4MB
BOARD_MOT_DYNAMIC_PARTITIONS_SIZE := 4861198336
BOARD_MOT_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    product \
    vendor

# Recovery
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# VINTF (Camera)
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/motorola.hardware.popup_v1.0.xml

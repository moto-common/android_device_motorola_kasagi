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

# Device path
DEVICE_PATH := device/motorola/kasagi/rootdir

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=400

# Fingerprint
TARGET_USES_EGISTEC_FINGERPRINT := true

# Model
PRODUCT_MODEL := motorola one hyper

# VBMeta
TARGET_HAS_VBMETA_SYSTEM := false

# Inherit from those products. Most specific first.
$(call inherit-product, device/motorola/sm6150-common/platform.mk)

# include board vendor blobs
$(call inherit-product-if-exists, vendor/motorola/kasagi/kasagi-vendor.mk)

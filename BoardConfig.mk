#
# Copyright (C) 2021-2023 The LineageOS Project
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

## Inherit from the common tree
include device/samsung/mt6768-common/BoardConfig9825-r.mk

## Inherit from the proprietary configuration
include vendor/samsung/a31/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/a31

## APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

## Display
TARGET_SCREEN_DENSITY := 412

## Fingerprint
TARGET_SEC_FP_HAS_FINGERPRINT_GESTURES := true

## Kernel
TARGET_KERNEL_CONFIG := a31_defconfig

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

## Vibrator
$(call soong_config_set,samsungVibratorVars,duration_amplitude,true)

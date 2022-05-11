# Copyright (C) 2021 Paranoid Android
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

DEVICE_PATH := device/xiaomi/alioth

-include device/xiaomi/sm8250-common/BoardConfigCommon.mk

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Gestures
TARGET_TAP_TO_WAKE_NODE := "/sys/touchpanel/double_tap"

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    $(DEVICE_PATH)/configs/vintf/xiaomi_vendor_framework_compatibility_matrix.xml

ODM_MANIFEST_SKUS += alioth
ODM_MANIFEST_ALIOTH_FILES := \
    $(DEVICE_PATH)/configs/vintf/manifest-nfc.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_alioth

# Hacks
BUILD_BROKEN_VENDOR_PROPERTY_NAMESPACE := true

# Kernel
KERNEL_DEFCONFIG := alioth_defconfig

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.qcom

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

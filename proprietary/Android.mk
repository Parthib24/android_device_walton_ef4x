#
# Copyright (C) 2017 The Lineage Project
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

LOCAL_PATH := $(my-dir)
INSTALL_SHIT:= function installshit(){;}



ifneq ($(TARGET_PREBUILT_KERNEL),)
## PREBUILT KERNEL MODULES
# SET KERNEL MODULE PATH
ifeq ($(INSTALL_KERNEL_MODULES_ON_RAMDISK),true)
KMODULE_PATH := $(TARGET_ROOT_OUT)/lib/modules
else
KMODULE_PATH := $(OUT)/system/lib/modules
endif # INSTALL_KERNEL_MODULES_ON_RAMDISK

include $(CLEAR_VARS)
LOCAL_MODULE := autotst.ko
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(KMODULE_PATH)
LOCAL_SRC_FILES := lib/modules/autotst.ko
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := gator.ko
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(KMODULE_PATH)
LOCAL_SRC_FILES := lib/modules/gator.ko
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := mali.ko
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(KMODULE_PATH)
LOCAL_SRC_FILES := lib/modules/mali.ko
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := mmc_test.ko
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(KMODULE_PATH)
LOCAL_SRC_FILES := lib/modules/mmc_test.ko
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := sprdwl.ko
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(KMODULE_PATH)
LOCAL_SRC_FILES := lib/modules/sprdwl.ko
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := trout_fm.ko
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(KMODULE_PATH)
LOCAL_SRC_FILES := lib/modules/trout_fm.ko
include $(BUILD_PREBUILT)
endif #

## HWC
#include $(CLEAR_VARS)
#LOCAL_MODULE_TAGS := optional
#LOCAL_MODULE_CLASS := ETC
#LOCAL_MODULE 	   := pbgralloc.sc8830
#MODULE_OUTPUT_NAME := gralloc.sc8830.so
#LOCAL_MODULE_PATH :=  $(OUT)/system/lib/hw
#LOCAL_SRC_FILES := lib/hw/gralloc.sc8830.so
#LOCAL_POST_INSTALL_CMD := \
#	$(hide) rm -rf $(LOCAL_MODULE_PATH)/$(MODULE_OUTPUT_NAME); \
#	$(hide) mv -f $(LOCAL_MODULE_PATH)/$(LOCAL_MODULE) $(LOCAL_MODULE_PATH)/$(MODULE_OUTPUT_NAME); \
#	echo -e "\e[0;36m"Rename: $(LOCAL_MODULE) to $(MODULE_OUTPUT_NAME);
#include $(BUILD_PREBUILT)
## 

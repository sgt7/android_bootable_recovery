LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := fix_permissions
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := parted
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := sdparted
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

# include $(CLEAR_VARS)
# LOCAL_MODULE := e2fsck
# LOCAL_MODULE_TAGS := optional
# LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
# LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
# LOCAL_SRC_FILES := $(LOCAL_MODULE)
# include $(BUILD_PREBUILT)

# include $(CLEAR_VARS)
# LOCAL_MODULE := tune2fs
# LOCAL_MODULE_TAGS := optional
# LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
# LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
# LOCAL_SRC_FILES := $(LOCAL_MODULE)
# include $(BUILD_PREBUILT)

# include $(CLEAR_VARS)
# LOCAL_MODULE := mke2fs
# LOCAL_MODULE_TAGS := optional
# LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
# LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
# ifeq ($(BOARD_MKE2FS),)
# LOCAL_SRC_FILES := $(LOCAL_MODULE)
# else
# LOCAL_SRC_FILES := ../../../$(BOARD_MKE2FS)
# endif
# include $(BUILD_PREBUILT)

BOARD_RECOVERY_RFS_CHECK := $(shell grep rfs $(TARGET_DEVICE_DIR)/recovery.fstab)
ifneq ($(BOARD_RECOVERY_RFS_CHECK),)
include $(CLEAR_VARS)
LOCAL_MODULE := fat.format
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

endif
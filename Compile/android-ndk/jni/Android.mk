LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android-ndk
LOCAL_SRC_FILES := tmp.c
include $(BUILD_EXECUTABLE)
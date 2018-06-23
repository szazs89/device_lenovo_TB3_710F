LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),codename)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif

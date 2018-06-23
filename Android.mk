LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),TB3_710F)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif

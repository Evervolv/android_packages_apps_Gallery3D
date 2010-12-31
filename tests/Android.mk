LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

# We only want this apk build for tests.
LOCAL_MODULE_TAGS := tests
LOCAL_CERTIFICATE := media

LOCAL_JAVA_LIBRARIES := android.test.runner

# Include all test java files.
LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := Gallery3DTests

LOCAL_INSTRUMENTATION_FOR := Gallery3D
LOCAL_SDK_VERSION := current

include $(BUILD_PACKAGE)

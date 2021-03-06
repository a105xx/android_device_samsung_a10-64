LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LIBGLES_MALI_LIBRARY := vendor/lib/egl/libGLES_mali.so
LIBGLES_MALI64_LIBRARY := vendor/lib64/egl/libGLES_mali.so

LIBGLES_MALI_SYMLINK := $(TARGET_OUT_VENDOR)/lib/libGLES_mali.so
$(LIBGLES_MALI_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating lib/libGLES_mali.so symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $(LIBGLES_MALI_LIBRARY) $@

LIBGLES_MALI64_SYMLINK := $(TARGET_OUT_VENDOR)/lib64/libGLES_mali.so
$(LIBGLES_MALI64_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating lib64/libGLES_mali.so symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $(LIBGLES_MALI64_LIBRARY) $@

ALL_DEFAULT_INSTALLED_MODULES += \
	$(LIBGLES_MALI_SYMLINK) \
	$(LIBGLES_MALI64_SYMLINK) \

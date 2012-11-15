ifneq ($(filter dlx,$(TARGET_DEVICE)),)
    include $(all-subdir-makefiles)
endif

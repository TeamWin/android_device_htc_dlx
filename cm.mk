# Release name
PRODUCT_RELEASE_NAME := dlx

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/dlx/device_dlx.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dlx
PRODUCT_NAME := cm_dlx
PRODUCT_BRAND := htc
PRODUCT_MODEL := dlx
PRODUCT_MANUFACTURER := htc

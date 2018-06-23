# Release name
PRODUCT_RELEASE_NAME := TB3_710F

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/TB3_710F/device_TB3_710F.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := TB3_710F
PRODUCT_NAME := cm_TB3_710F
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := TB3_710F
PRODUCT_MANUFACTURER := lenovo

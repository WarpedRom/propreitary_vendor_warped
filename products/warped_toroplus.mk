# Inherit AOSP device configuration for toroplus.
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)

# Inherit common product files.
$(call inherit-product, vendor/warped/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := warped_toroplus
PRODUCT_BRAND := Google
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT=samsung/mysidspr/toroplus:4.0.4/IMM76I/330937:user/release-keys PRIVATE_BUILD_DESC="mysidspr-user 4.0.4 IMM76I 330937 release-keys" BUILD_NUMBER=330937

# Torospr specific packages
PRODUCT_PACKAGES += \
    Thinkfree

# Inherit media effect blobs
-include vendor/warped/products/common_media_effects.mk

# Inherit drm blobs
-include vendor/warped/products/common_drm_phone.mk
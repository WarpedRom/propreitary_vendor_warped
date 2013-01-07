# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/warped/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := warped_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=takju BUILD_FINGERPRINT="google/takju/maguro:4.2/JOP40C/517167:user/release-keys" PRIVATE_BUILD_DESC="takju-user 4.2 JOP40C 517167 release-keys"

# Inherit media effect blobs
-include vendor/warped/products/common_media_effects.mk

# Inherit drm blobs
-include vendor/warped/products/common_drm_phone.mk


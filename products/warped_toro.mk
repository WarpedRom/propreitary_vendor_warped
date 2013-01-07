# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/warped/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := warped_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_FINGERPRINT="google/mysid/toro:4.1.1/JRO03O/424425:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 4.1.1 JRO03O 424425 release-keys"

# Inherit media effect blobs
-include vendor/warped/products/common_media_effects.mk

# Inherit drm blobs
-include vendor/warped/products/common_drm_phone.mk

# Generic product
PRODUCT_NAME := Warped
PRODUCT_BRAND := dhemke17
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1
    camera.flash_off=0 \
    persist.sys.root_access=1

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/warped/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/warped/overlay/dictionaries

# Required packages
PRODUCT_PACKAGES += \
    busybox \
    Superuser \
    Torch \
    su

# system/lib
PRODUCT_COPY_FILES += \
    vendor/warped/proprietary/common/lib/libjni_eglfence.so:system/lib/libjni_eglfence.so \
    vendor/warped/proprietary/common/lib/libjni_filtershow_filters.so:system/lib/libjni_filtershow_filters.so \
    vendor/warped/proprietary/common/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so 


# system/vendor/etc
PRODUCT_COPY_FILES += \
    vendor/warped/proprietary/common/vendor/etc/smc_normal_world_android_cfg.ini:system/vendor/etc/smc_normal_world_android_cfg.ini

# system/vendor/firmware
PRODUCT_COPY_FILES += \
    vendor/warped/proprietary/common/vendor/firmware/smc_pa_wvdrm.ift:system/vendor/firmware/smc_pa_wvdrm.ift

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_COPY_FILES += \
    vendor/warped/proprietary/common/etc/init.local.rc:root/init.warped.rc

# init.d support
PRODUCT_COPY_FILES += \
    vendor/warped/proprietary/common/bin/sysinit:system/bin/sysinit \
    vendor/warped/proprietary/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/warped/proprietary/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/warped/proprietary/common/etc/init.d/02zipalign:system/etc/init.d/02zipalign \
    vendor/warped/proprietary/common/xbin/zipalign:system/xbin/zipalign

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/warped/proprietary/common/bin/compcache:system/bin/compcache \
    vendor/warped/proprietary/common/bin/handle_compcache:system/bin/handle_compcache

# T-Mobile theme engine
include vendor/warped/products/themes_common.mk

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JDQ39

PRODUCT_PROPERTY_OVERRIDES += \
ro.rommanager.developerid=dhemke17 

PRODUCT_VERSION_MAJOR = 3
PRODUCT_VERSION_MINOR = 0
PRODUCT_VERSION_MAINTENANCE = 0

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JDQ39

ifdef NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.warped.version=Warped-AOSP-$(PRODUCT_VERSION_MAJOR)-NIGHTLY-$(shell date +%m%d%Y) \
        ro.modversion=Warped-AOSP-$(PRODUCT_VERSION_MAJOR)-NIGHTLY-$(shell date +%m%d%Y)-$(PRODUCT_RELEASE_NAME)
else
    ifdef RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.warped.version=Warped-AOSP-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC) \
            ro.modversion=Warped-AOSP-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.warped.version=Warped-AOSP-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-UNOFFICIAL \
            ro.modversion=Warped-AOSP-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-UNOFFICIAL
    endif
endif

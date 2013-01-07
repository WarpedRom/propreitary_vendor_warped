# Blobs necessary for media effects

# system/media
PRODUCT_COPY_FILES +=  \
    vendor/warped/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/warped/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/warped/proprietary/common/media/bootanimation.zip:system/media/bootanimation.zip

# video files
$(call inherit-product-if-exists, frameworks/base/data/videos/VideoPackage2.mk)

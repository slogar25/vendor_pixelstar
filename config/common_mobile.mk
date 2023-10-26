# Inherit common mobile Pixelstar stuff
$(call inherit-product, vendor/pixelstar/config/common.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

ifneq ($(WITH_PIXEL_CHARGER),false)
PRODUCT_PACKAGES += \
    pixelstar_charger_animation \
    pixelstar_charger_animation_vendor
endif

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

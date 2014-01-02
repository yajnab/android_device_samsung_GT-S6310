# Inherit CM common GSM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_royss
PRODUCT_DEVICE := royss
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-S6310
PRODUCT_RELEASE_NAME := GT-S6310
## Bootanimation
TARGET_SCREEN_HEIGHT := 640
TARGET_SCREEN_WIDTH := 480

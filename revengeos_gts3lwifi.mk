# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from gts3lwifi device
$(call inherit-product, device/samsung/gts3lwifi/device.mk)

# Inherit some common Revenge stuff.
$(call inherit-product, vendor/revengeos/config/common.mk)
TARGET_BOOT_ANIMATION_RES := 1440
REVENGEOS_BUILDTYPE := UNOFFICIAL
BUILD_GAPPS := false

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := revengeos_gts3lwifi
PRODUCT_DEVICE := gts3lwifi
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-T820
PRODUCT_MANUFACTURER := Samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="gts3lwifi" \
    PRODUCT_NAME="gts3lwifi" \
    PRIVATE_BUILD_DESC="gts3lwifixx-user 8.0.0 R16NW T820XXU2BRL2 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "samsung/gts3lwifixx/gts3lwifi:8.0.0/R16NW/T820XXU2BRL2:user/release-keys"

TARGET_VENDOR := Samsung

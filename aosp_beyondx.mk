$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/beyondx/device.mk)

### BOOTANIMATION
# vendor/lineage/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 3040
TARGET_SCREEN_WIDTH := 1440
# vendor/lineage/config/common.mk
TARGET_BOOTANIMATION_HALF_RES := true

### LINEAGE
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_beyondx
PRODUCT_DEVICE := beyondx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G977B
PRODUCT_MANUFACTURER := samsung
PRODUCT_PDA_VERSION := G977BXXS8FUF3
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=beyondx \
    PRODUCT_DEVICE=beyondx \
    PRIVATE_BUILD_DESC="beyondxxx-user 11 RP1A.200720.012 $(PRODUCT_PDA_VERSION) release-keys"

BUILD_FINGERPRINT := samsung/beyondxxx/beyondx:11/RP1A.200720.012/$(PRODUCT_PDA_VERSION):user/release-keys

TARGET_GAPPS_ARCH := arm64
IS_PHONE := true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.PDA=$(PRODUCT_PDA_VERSION)

ifneq ($(LINEAGE_DEV_CERTIFICATE),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(LINEAGE_DEV_CERTIFICATE)
endif

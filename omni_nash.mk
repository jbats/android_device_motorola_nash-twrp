# Release name
PRODUCT_RELEASE_NAME := nash

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nash
PRODUCT_MODEL := Z2 Force
PRODUCT_NAME := omni_nash
PRODUCT_BRAND := Motorola
PRODUCT_MANUFACTURER := Motorola

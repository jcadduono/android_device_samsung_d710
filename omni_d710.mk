# Release name
PRODUCT_RELEASE_NAME := d710

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d710
PRODUCT_NAME := omni_d710
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SPH-D710
PRODUCT_MANUFACTURER := samsung

# Release name
PRODUCT_RELEASE_NAME := A100

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/acer/vangogh/vangogh.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE       := vangogh
PRODUCT_NAME         := cm_vangogh
PRODUCT_BRAND        := Acer
PRODUCT_MODEL        := A100
PRODUCT_MANUFACTURER := Acer

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=vangogh \
    BUILD_FINGERPRINT="acer/a100_ww_gen1/vangogh:4.0.3/IML74K/1332408262:user/release-keys" \
    PRIVATE_BUILD_DESC="a100_ww_gen1-user 4.0.3 IML74K 1332408262 release-keys"


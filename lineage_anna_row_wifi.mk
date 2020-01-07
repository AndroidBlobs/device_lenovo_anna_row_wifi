# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from anna_row_wifi device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := lenovo
PRODUCT_DEVICE := anna_row_wifi
PRODUCT_MANUFACTURER := lenovo
PRODUCT_NAME := lineage_anna_row_wifi
PRODUCT_MODEL := Lenovo TB-8505FS

PRODUCT_GMS_CLIENTID_BASE := android-lenovo
TARGET_VENDOR := lenovo
TARGET_VENDOR_PRODUCT_NAME := anna_row_wifi
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_anna_row_wifi-user 9 PPR1.180610.011 TB-8505FS_ release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := full_anna_row_wifi-user-9-PPR1.180610.011-TB-8505FS_-release-keys

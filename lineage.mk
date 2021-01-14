# Inherit from AOSP product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Dalvik heap config
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/telephony.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Release name
PRODUCT_RELEASE_NAME := j23g

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/j23g.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j23g
PRODUCT_NAME := lineage_j23g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-J200H
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone

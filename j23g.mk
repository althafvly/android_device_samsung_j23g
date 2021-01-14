# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := device/samsung/j23g

# Inherit from vendor tree
$(call inherit-product-if-exists, vendor/samsung/j23g/j23g-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Bluetooth
PRODUCT_PACKAGES += \
	bt_vendor.conf

# GPS
PRODUCT_PACKAGES += \
	libgpspc \
	libefuse \
	gps.conf \
	gps.xml

# WiFi
PRODUCT_PACKAGES += \
	wpa_supplicant_overlay.conf \
	p2p_supplicant_overlay.conf \
	nvram_net.txt

# Rootdir
PRODUCT_PACKAGES += \
	fstab.sc8830 \
	init.sc8830.rc \
	init.sc8830.usb.rc \
	ueventd.sc8830.rc

# RIL
PRODUCT_PACKAGES += \
	rild.rc

# Interactive governor configs
PRODUCT_PACKAGES += \
	interactive_gov.rc

# Media
PRODUCT_PACKAGES += \
	media_codecs.xml

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Keylayouts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl

# sdcardfs
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.sdcardfs=true

# Offmode charger
PRODUCT_PACKAGES += \
    charger_res_images \
    cm_charger_res_images

# Low-RAM configs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.bg_apps_limit=10 \
    config.disable_atlas=true 

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_j23g
PRODUCT_DEVICE := j23g
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-J200H

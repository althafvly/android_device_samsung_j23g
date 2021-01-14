# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from the proprietary version
-include vendor/samsung/j23g/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := SC7730SE

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5872025600
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Wifi
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WLAN_DEVICE_REV := bcm4343
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_NVRAM_PATH_PARAM := "/sys/module/dhd/parameters/nvram_path"
WIFI_DRIVER_NVRAM_PATH := "/system/etc/wifi/nvram_net.txt"
WIFI_BAND := 802_11_ABG
BOARD_HAVE_SAMSUNG_WIFI := true

# Bluetooth
USE_BLUETOOTH_BCM4343 := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/j23g/bluetooth
BOARD_CUSTOM_BT_CONFIG := device/samsung/j23g/bluetooth/libbt_vndcfg.txt

# Graphics
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_FORCE_SCREENSHOT_CPU_PATH := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Kernel
TARGET_KERNEL_CONFIG := j23g-dt_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/j23g

# Resolution
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# System properties
TARGET_SYSTEM_PROP += device/samsung/j23g/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/j23g/rootdir/fstab.sc8830

# RIL
BOARD_RIL_CLASS += ../../../device/samsung/j23g/ril

# Hardware-specific
SOC_SCX30G_V2 := true

# CMHW
BOARD_HARDWARE_CLASS := \
	device/samsung/j23g/cmhw
TARGET_TAP_TO_WAKE_NODE := "/sys/android_touch/doubletap2wake"

# Assert
TARGET_OTA_ASSERT_DEVICE := SM-J200H,j23g,j23gdd
BLOCK_BASED_OTA := false

# RIL
TARGET_SPECIFIC_HEADER_PATH := device/samsung/j23g/include

#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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
#

BOARD_VENDOR := samsung

DEVICE_PATH := device/samsung/gts3lwifi

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Assert
TARGET_OTA_ASSERT_DEVICE := gts3lwifi

# ADB Legacy Interface
TARGET_USES_LEGACY_ADB_INTERFACE := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := kryo

TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8996
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7464900.sdhci lpm_levels.sleep_disabled=1 rcupdate.rcu_expedited=1 cma=32M@0-0xffffffff
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02200000 --tags_offset 0x02000000
TARGET_KERNEL_SOURCE := kernel/samsung/msm8996
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_CONFIG := lineage_gts3lwifi_defconfig

TARGET_COMPILE_WITH_MSM_KERNEL := true
#SELINUX_IGNORE_NEVERALLOWS := true

# Platform
TARGET_BOARD_PLATFORM := msm8996
TARGET_BOARD_PLATFORM_GPU := qcom-adreno530

# Properties
#BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Audio
#AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
#AUDIO_FEATURE_ENABLED_APE_OFFLOAD := true
#AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
#AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
#AUDIO_FEATURE_ENABLED_DEV_ARBI := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HFP := true
#AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NT_PAUSE_TIMEOUT := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
#AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
#AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
#AUDIO_FEATURE_ENABLED_WMA_OFFLOAD := true
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
#BOARD_SUPPORTS_SOUND_TRIGGER := true
#BOARD_USES_ALSA_AUDIO := true
#USE_CUSTOM_AUDIO_POLICY := 1

# Bionic
TARGET_NEEDS_LEGACY_MUTEX_HANDLE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAS_QCA_BT_ROME := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_USE_BTNV := true
BOARD_BLUETOOTH_BDROID_HCILP_INCLUDED := false

# CAF HALs
TARGET_QCOM_MEDIA_VARIANT := caf-msm8996
TARGET_QCOM_DISPLAY_VARIANT := caf-msm8996

PRODUCT_SOONG_NAMESPACES += \
    hardware/qcom/display-$(TARGET_QCOM_DISPLAY_VARIANT) \
    hardware/qcom/media-$(TARGET_QCOM_MEDIA_VARIANT)

# Camera
USE_CAMERA_STUB := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_USES_MEDIA_EXTENSIONS := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Display
BOARD_USES_ADRENO := true

MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_OVERLAY := true

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000

OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so
USE_OPENGL_RENDERER := true

# surfaceflinger orientation
SF_PRIMARY_DISPLAY_ORIENTATION := 270

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/configs/vendor_framework_compatibility_matrix.xml
#DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/configs/framework_manifest.xml
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/configs/compatibility_matrix.xml

# Lineage Hardware
JAVA_SOURCE_OVERLAYS := org.lineageos.hardware|$(DEVICE_PATH)/lineagehw|**/*.java

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 79691776
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 79691776
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 3072000000
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4194304000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26226982912
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USES_MKE2FS := true

# Fingerprint
TARGET_SEC_FP_HAL_VARIANT := bauth

TARGET_LD_SHIM_LIBS := \
	/system/vendor/lib/libbauthserver.so|/vendor/lib/libbauthtzcommon_shim.so \
	/system/vendor/lib64/libbauthserver.so|/vendor/lib64/libbauthtzcommon_shim.so

TARGET_LD_SHIM_LIBS += \
   /system/vendor/lib/hw/camera.msm8996.so|/system/vendor/lib/libshims_cameraclient.so

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/

# Keymaster
#TARGET_PROVIDES_KEYMASTER := true

# Power
TARGET_HAS_NO_WLAN_STATS := true
TARGET_USES_INTERACTION_BOOST := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
#TARGET_USE_SDCLANG := true

# Ramdisk
BOARD_ROOT_EXTRA_FOLDERS := dsp efs firmware firmware-modem persist
BOARD_ROOT_EXTRA_SYMLINKS := /system/etc/firmware/btfw32.tlv:/bt_firmware/image/btfw32.tlv
BOARD_ROOT_EXTRA_SYMLINKS += /system/etc/firmware/btnv32.bin:/bt_firmware/image/btnv32.bin
BOARD_ROOT_EXTRA_SYMLINKS += /data/tombstones:/tombstones

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Treble
#PRODUCT_FULL_TREBLE_OVERRIDE := true
#PRODUCT_VENDOR_MOVE_ENABLED := true

# Security patch level - T825XXU2BRL2
VENDOR_SECURITY_PATCH := 2018-12-01

SELINUX_IGNORE_NEVERALLOWS := true

# RIL
#TARGET_PROVIDES_QTI_TELEPHONY_JAR := true
TARGET_RIL_VARIANT := caf

# SELinux
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
HOSTAPD_VERSION := VER_0_8_X
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WPA_SUPPLICANT_VERSION := VER_0_8_X

BOARD_HAVE_SAMSUNG_WIFI := true

# inherit from the proprietary version
-include vendor/samsung/gts3lwifi/BoardConfigVendor.mk

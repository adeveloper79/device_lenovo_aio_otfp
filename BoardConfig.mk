# Board Config for mt6752

#Short cut to point files in device tree
LOCAL_PATH := device/lenovo/aio_otfp

#point out board config vendor file
-include vendor/lenovo/aio_otfp/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

BLOCK_BASED_OTA := false

#Tell it is 64 bit device
MTK_K64_SUPPORT := yes

#CPU
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI_LIST := arm64-v8a,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT := armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_64_BIT := arm64-v8a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

#Cpu is of type Cortex a53
TARGET_CPU_CORTEX_A53 := true

TARGET_BOOTLOADER_BOARD_NAME := mt6752

#To specify platform features
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_PLATFORM := mt6752
TARGET_BOARD_PLATFORM_GPU := mali-t760mp2
MTK_BOARD_PLATFORMS := mt6752
TARGET_NO_BOOTLOADER := true
TARGET_NO_FACTORYIMAGE := true

TARGET_LDPRELOAD += libxlog.so

#kernel specifics
TARGET_IS_64_BIT := true
TARGET_USES_64_BIT_BINDER := true
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.hardware=mt6752 androidboot.selinux=disabled
TARGET_KMODULES := true
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --second_offset 0x00e88000 --tags_offset 0x0df88000 --board 79507
TARGET_MKIMAGE := $(LOCAL_PATH)/bootimg/mkimage
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
BOARD_CUSTOM_BOOTIMG := true
TARGET_MTK_KERNEL := true

TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

#Display configs
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

#Nougat requirements added
MALLOC_SVELTE := true

#Lib light
TARGET_PROVIDES_LIBLIGHT := true

#charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

#Fonts
EXTENDED_FONT_FOOTPRINT := true

#Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

#GPS
BOARD_GPS_LIBRARIES :=true
BOARD_CONNECTIVITY_MODULE := CONSYS_MT6752
BOARD_MEDIATEK_USES_GPS := true

BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw

#MediatekHardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true
BOARD_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL -DDISABLE_ASHMEM_TRACKING
BOARD_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_USES_MTK_AUDIO := true

#FM
MTK_FM_SUPPORT :=true
MTK_FM_RX_SUPPORT :=true
MTK_FM_CHIP = MT6627_FM

#Wireless driver update
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_P2P := P2P

#Partition sizes mentioned

TARGET_USERIMAGES_USE_EXT4:=true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1644167168
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1237319680
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

#Lun file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

#Recovery properties
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/root/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

#Camera Stubs
USE_CAMERA_STUB := true

#sepolicy path
#BOARD_SEPOLICY_DIRS := \
#        device/lenovo/aio_otfp/sepolicy

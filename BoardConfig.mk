# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8998
TARGET_NO_BOOTLOADER := true
TARGET_RECOVERY_FSTAB := device/motorola/nash/recovery/root/etc/twrp.fstab

# Platform
TARGET_BOARD_PLATFORM := msm8998
TARGET_BOARD_PLATFORM_GPU := qcom-adreno540

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := krait
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 earlycon=msm_serial_dm,0xc1b0000 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=2048 androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3 androidboot.hab.csv=0 androidboot.hab.product=nash androidboot.hab.cid=21 buildvariant=user veritykeyid=id:b640f6ee9102b88daa3450b13ef25fc9eb143d63 androidboot.selinux=permissive

BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# prebuilt kernel
TARGET_PREBUILT_KERNEL := device/motorola/nash/kernel
# else uncomment below to build from sauce
# TARGET_KERNEL_SOURCE := kernel/motorola/msm8998
# TARGET_KERNEL_CONFIG := nash_defconfig

BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
# BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4378853376
BOARD_USERDATAIMAGE_PARTITION_SIZE := 51564486656
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_UI_LIB := librecovery_ui_nanohub
# Crypto
# TARGET_HW_DISK_ENCRYPTION := true
TW_INCLUDE_CRYPTO := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
# TARGET_CRYPTFS_HW_PATH := $(DEVICE_PATH)/cryptfs_hw

# TWRP
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_THEME := portrait_hdpi
BOARD_SUPPRESS_SECURE_ERASE := true
TW_INCLUDE_CRYPTO := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_DEFAULT_BRIGHTNESS := "80"
AB_OTA_UPDATER := true
TW_EXCLUDE_DEFAULT_USB_INIT := true

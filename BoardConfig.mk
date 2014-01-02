# config.mk
#
# Product-specific compile-time definitions.
#

# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true

# Note: we build the platform images for ARMv7-A _without_ NEON.
#
# Technically, the emulator supports ARMv7-A _and_ NEON instructions, but
# emulated NEON code paths typically ends up 2x slower than the normal C code
# it is supposed to replace (unlike on real devices where it is 2x to 3x
# faster).
#
# What this means is that the platform image will not use NEON code paths
# that are slower to emulate. On the other hand, it is possible to emulate
# application code generated with the NDK that uses NEON in the emulator.
#
include device/samsung/msm7x27a-common/BoardConfigCommon.mk

## Platform
TARGET_BOOTLOADER_BOARD_NAME := royss
##Kernel
TARGET_KERNEL_CONFIG := royss_user_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/royss
## OTA assert
TARGET_OTA_ASSERT_DEVICE := royss,GT-6310
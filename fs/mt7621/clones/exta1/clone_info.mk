PRODUCT_ID := exta1
CLASS_ID:=iptime

CPU_NAME:=mt7628
WIFI_2G:=mt7628
WIFI_5G:=mt7610e
DRAM_SIZE:=64m
OPTION_TAG:=extender


FLASH_SIZE:=400000
EEPROM_FILE:=EEPROM_2G.BIN
EEPROM_FILE_5G:=EEPROM_5G.BIN
BOOT_FILENAME:=uboot.bin.mt7628.64m.extender
USE_FACTORY_SECTION:=y
SQUASHCMD:=./mksquash
SQUASHCMD_COMP:=xz
NO_PADDING_FOR_ROOTFS:=y
LOAD_ADDRESS := 80000000

PRODUCT_TAG:=$(CPU_NAME).$(WIFI_2G).$(WIFI_5G).$(DRAM_SIZE)$(if $(OPTION_TAG),.$(OPTION_TAG))
KERNEL_FILENAME:=vmlinux.$(PRODUCT_TAG)
KCONFIG_FILE_NAME:=config.$(PRODUCT_TAG)
MODULE_DIR:=$(PRODUCT_TAG)

SDK_VERSION:=SDK_4320
KERNEL_PATH:=../../linux
PREMAKE_TARGET_NAME:=$(WIFI_2G) $(WIFI_5G)


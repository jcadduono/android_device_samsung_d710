INSTALLED_RECOVERYIMAGE_TARGET := $(PRODUCT_OUT)/recovery.img

BUILT_KERNEL_TARGET  := $(PRODUCT_OUT)/kernel
BUILT_RAMDISK_TARGET := $(PRODUCT_OUT)/ramdisk-recovery.cpio
FLASH_KERNEL_TARGET  := $(PRODUCT_OUT)/zImage
FLASH_RAMDISK_TARGET := $(PRODUCT_OUT)/recovery.bin
FLASH_IMAGE_TARGET   := $(PRODUCT_OUT)/recovery.tar

$(INSTALLED_RECOVERYIMAGE_TARGET): $(recovery_ramdisk)
	$(hide) mv "$(BUILT_KERNEL_TARGET)" "$(FLASH_KERNEL_TARGET)"
	$(hide) lzop -9c "$(BUILT_RAMDISK_TARGET)" > "$(FLASH_RAMDISK_TARGET)"
	@echo "------- Made recovery ramdisk: recovery.bin -------"
	$(hide) tar -c -H ustar -C "$(PRODUCT_OUT)" zImage recovery.bin > "$(FLASH_IMAGE_TARGET)"
	@echo "------- Made flashable image: recovery.tar -------"

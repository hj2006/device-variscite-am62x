# Use this file to generate dtb.img and dtbo.img instead of using
# BOARD_PREBUILT_DTBIMAGE_DIR. We need to keep dtb and dtbo files at the fixed
# positions in images, so that bootloader can rely on their indexes in the
# image. As dtbo.img must be signed with AVB tool, we generate intermediate
# dtbo.img, and the resulting $(PRODUCT_OUT)/dtbo.img will be created with
# Android build system, by exploiting BOARD_PREBUILT_DTBOIMAGE variable.

ifneq ($(filter am62x_var_som%, $(TARGET_DEVICE)),)

MKDTIMG := system/libufdt/utils/src/mkdtboimg.py
DTBIMAGE := $(PRODUCT_OUT)/dtb.img


# Please keep this list fixed: add new files in the end of the list
DTB_FILES += \
       device/variscite/am62x-kernel/kernel/6.1/k3-am625-var-som-symphony.dtb
endif

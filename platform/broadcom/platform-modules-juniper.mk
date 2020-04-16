# Juniper Platform modules

JUNIPER_QFX5210_PLATFORM_MODULE_VERSION = 1.1
JUNIPER_QFX5200_PLATFORM_MODULE_VERSION = 1.1

export JUNIPER_QFX5210_PLATFORM_MODULE_VERSION
export JUNIPER_QFX5200_PLATFORM_MODULE_VERSION

JUNIPER_QFX5210_PLATFORM_MODULE = sonic-platform-juniper-qfx5210_$(JUNIPER_QFX5210_PLATFORM_MODULE_VERSION)_amd64.deb
$(JUNIPER_QFX5210_PLATFORM_MODULE)_SRC_PATH = $(PLATFORM_PATH)/sonic-platform-modules-juniper
$(JUNIPER_QFX5210_PLATFORM_MODULE)_DEPENDS += $(LINUX_HEADERS) $(LINUX_HEADERS_COMMON)
$(JUNIPER_QFX5210_PLATFORM_MODULE)_PLATFORM = x86_64-juniper_qfx5210-r0
SONIC_DPKG_DEBS += $(JUNIPER_QFX5210_PLATFORM_MODULE)

JUNIPER_QFX5200_PLATFORM_MODULE = sonic-platform-juniper-qfx5200_$(JUNIPER_QFX5200_PLATFORM_MODULE_VERSION)_amd64.deb
$(JUNIPER_QFX5200_PLATFORM_MODULE)_PLATFORM = x86_64-juniper_qfx5200-r0

$(eval $(call add_extra_package,$(JUNIPER_QFX5210_PLATFORM_MODULE),$(JUNIPER_QFX5200_PLATFORM_MODULE)))

SONIC_STRETCH_DEBS += $(JUNIPER_QFX5210_PLATFORM_MODULE)

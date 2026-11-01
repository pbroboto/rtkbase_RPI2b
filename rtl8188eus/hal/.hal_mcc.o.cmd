savedcmd_/home/rtkbase/rtkbase/rtl8188eus/hal/hal_mcc.o :=  arm-linux-gnueabihf-gcc-12 -Wp,-MMD,/home/rtkbase/rtkbase/rtl8188eus/hal/.hal_mcc.o.d -nostdinc -I/usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include -I./arch/arm/include/generated -I/usr/src/linux-headers-6.12.75+rpt-common-rpi/include -I./include -I/usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/uapi -I./arch/arm/include/generated/uapi -I/usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi -I./include/generated/uapi -include /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/compiler-version.h -include /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kconfig.h -include /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/compiler_types.h -D__KERNEL__ -mlittle-endian -D__LINUX_ARM_ARCH__=7 -fmacro-prefix-map=/usr/src/linux-headers-6.12.75+rpt-common-rpi/= -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -fno-dwarf2-cfi-asm -mno-fdpic -fno-ipa-sra -mtp=cp15 -mabi=aapcs-linux -mfpu=vfp -funwind-tables -marm -Wa,-mno-warn-deprecated -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -O2 -fno-allow-store-data-races -fstack-protector-strong -ftrivial-auto-var-init=zero -fno-stack-clash-protection -pg -fno-strict-overflow -fno-stack-check -fconserve-stack -fno-builtin-wcslen -fno-builtin-wcslen -Wall -Wextra -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wmissing-declarations -Wmissing-prototypes -Wframe-larger-than=1024 -Wno-main -Wno-dangling-pointer -Wvla -Wno-pointer-sign -Wcast-function-type -Wno-array-bounds -Wno-stringop-overflow -Wno-alloc-size-larger-than -Wimplicit-fallthrough=5 -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wenum-conversion -Wunused -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-packed-not-aligned -Wno-format-overflow -Wno-format-truncation -Wno-stringop-truncation -Wno-override-init -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-maybe-uninitialized -Wno-sign-compare -Wno-unused-parameter -mstack-protector-guard=tls -mstack-protector-guard-offset=1648 -fno-pie -O1 -Wno-unused-variable -Wno-unused-value -Wno-unused-label -Wno-unused-parameter -Wno-unused-function -Wno-unused -Wno-address -Wno-cast-function-type -Wno-uninitialized -Wno-sometimes-uninitialized -Wno-enum-conversion -Wno-vla -Wno-date-time -Wno-date-time -I/home/rtkbase/rtkbase/rtl8188eus/include -I/usr/src/linux-headers-6.12.75+rpt-common-rpi//home/rtkbase/rtkbase/rtl8188eus/include -I/home/rtkbase/rtkbase/rtl8188eus/platform -I/usr/src/linux-headers-6.12.75+rpt-common-rpi//home/rtkbase/rtkbase/rtl8188eus/platform -I/home/rtkbase/rtkbase/rtl8188eus/hal/btc -I/usr/src/linux-headers-6.12.75+rpt-common-rpi//home/rtkbase/rtkbase/rtl8188eus/hal/btc -I/home/rtkbase/rtkbase/rtl8188eus/hal/phydm -I/usr/src/linux-headers-6.12.75+rpt-common-rpi//home/rtkbase/rtkbase/rtl8188eus/hal/phydm -DCONFIG_RTL8188E -DCONFIG_MP_INCLUDED -DCONFIG_EFUSE_CONFIG_FILE -DEFUSE_MAP_PATH=\"/system/etc/wifi/wifi_efuse_8188eu.map\" -DWIFIMAC_PATH=\"/data/wifimac.txt\" -DCONFIG_LOAD_PHY_PARA_FROM_FILE -DREALTEK_CONFIG_PATH=\"/lib/firmware/\" -DCONFIG_TXPWR_BY_RATE_EN=0 -DCONFIG_TXPWR_LIMIT_EN=0 -DCONFIG_RTW_ADAPTIVITY_EN=0 -DCONFIG_RTW_ADAPTIVITY_MODE=0 -DCONFIG_BR_EXT '-DCONFIG_BR_EXT_BRNAME="'br0'"' -DCONFIG_WIFI_MONITOR -DCONFIG_RTW_NAPI -DCONFIG_RTW_GRO -DCONFIG_RTW_NETIF_SG -DCONFIG_RTW_WIFI_HAL -DCONFIG_RTW_CFGVEDNOR_LLSTATS -DDM_ODM_SUPPORT_TYPE=0x04 -DCONFIG_LITTLE_ENDIAN -DCONFIG_IOCTL_CFG80211 -DRTW_USE_CFG80211_STA_EVENT -I/home/rtkbase/rtkbase/rtl8188eus/hal/phydm  -DMODULE  -DKBUILD_BASENAME='"hal_mcc"' -DKBUILD_MODNAME='"8188eu"' -D__KBUILD_MODNAME=kmod_8188eu -c -o /home/rtkbase/rtkbase/rtl8188eus/hal/hal_mcc.o /home/rtkbase/rtkbase/rtl8188eus/hal/hal_mcc.c  

source_/home/rtkbase/rtkbase/rtl8188eus/hal/hal_mcc.o := /home/rtkbase/rtkbase/rtl8188eus/hal/hal_mcc.c

deps_/home/rtkbase/rtkbase/rtl8188eus/hal/hal_mcc.o := \
    $(wildcard include/config/MCC_MODE) \
    $(wildcard include/config/MCC_MODE_V2) \
    $(wildcard include/config/MCC_MODE_DEBUG) \
    $(wildcard include/config/TDLS) \
    $(wildcard include/config/P2P_PS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/compiler_types.h \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/PAHOLE_HAS_BTF_TAG) \
    $(wildcard include/config/FUNCTION_ALIGNMENT) \
    $(wildcard include/config/CC_HAS_SANE_FUNCTION_ALIGNMENT) \
    $(wildcard include/config/X86_64) \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/LD_DEAD_CODE_DATA_ELIMINATION) \
    $(wildcard include/config/LTO_CLANG) \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/KCSAN) \
    $(wildcard include/config/CC_HAS_COUNTED_BY) \
    $(wildcard include/config/UBSAN_SIGNED_WRAP) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/compiler_attributes.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/compiler-gcc.h \
    $(wildcard include/config/MITIGATION_RETPOLINE) \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
    $(wildcard include/config/SHADOW_CALL_STACK) \
    $(wildcard include/config/KCOV) \

/home/rtkbase/rtkbase/rtl8188eus/hal/hal_mcc.o: $(deps_/home/rtkbase/rtkbase/rtl8188eus/hal/hal_mcc.o)

$(deps_/home/rtkbase/rtkbase/rtl8188eus/hal/hal_mcc.o):

savedcmd_/home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm.o :=  arm-linux-gnueabihf-gcc-12 -Wp,-MMD,/home/rtkbase/rtkbase/rtl8188eus/hal/phydm/.phydm.o.d -nostdinc -I/usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include -I./arch/arm/include/generated -I/usr/src/linux-headers-6.12.75+rpt-common-rpi/include -I./include -I/usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/uapi -I./arch/arm/include/generated/uapi -I/usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi -I./include/generated/uapi -include /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/compiler-version.h -include /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kconfig.h -include /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/compiler_types.h -D__KERNEL__ -mlittle-endian -D__LINUX_ARM_ARCH__=7 -fmacro-prefix-map=/usr/src/linux-headers-6.12.75+rpt-common-rpi/= -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -fno-dwarf2-cfi-asm -mno-fdpic -fno-ipa-sra -mtp=cp15 -mabi=aapcs-linux -mfpu=vfp -funwind-tables -marm -Wa,-mno-warn-deprecated -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -O2 -fno-allow-store-data-races -fstack-protector-strong -ftrivial-auto-var-init=zero -fno-stack-clash-protection -pg -fno-strict-overflow -fno-stack-check -fconserve-stack -fno-builtin-wcslen -fno-builtin-wcslen -Wall -Wextra -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wmissing-declarations -Wmissing-prototypes -Wframe-larger-than=1024 -Wno-main -Wno-dangling-pointer -Wvla -Wno-pointer-sign -Wcast-function-type -Wno-array-bounds -Wno-stringop-overflow -Wno-alloc-size-larger-than -Wimplicit-fallthrough=5 -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wenum-conversion -Wunused -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-packed-not-aligned -Wno-format-overflow -Wno-format-truncation -Wno-stringop-truncation -Wno-override-init -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-maybe-uninitialized -Wno-sign-compare -Wno-unused-parameter -mstack-protector-guard=tls -mstack-protector-guard-offset=1648 -fno-pie -O1 -Wno-unused-variable -Wno-unused-value -Wno-unused-label -Wno-unused-parameter -Wno-unused-function -Wno-unused -Wno-address -Wno-cast-function-type -Wno-uninitialized -Wno-sometimes-uninitialized -Wno-enum-conversion -Wno-vla -Wno-date-time -Wno-date-time -I/home/rtkbase/rtkbase/rtl8188eus/include -I/usr/src/linux-headers-6.12.75+rpt-common-rpi//home/rtkbase/rtkbase/rtl8188eus/include -I/home/rtkbase/rtkbase/rtl8188eus/platform -I/usr/src/linux-headers-6.12.75+rpt-common-rpi//home/rtkbase/rtkbase/rtl8188eus/platform -I/home/rtkbase/rtkbase/rtl8188eus/hal/btc -I/usr/src/linux-headers-6.12.75+rpt-common-rpi//home/rtkbase/rtkbase/rtl8188eus/hal/btc -I/home/rtkbase/rtkbase/rtl8188eus/hal/phydm -I/usr/src/linux-headers-6.12.75+rpt-common-rpi//home/rtkbase/rtkbase/rtl8188eus/hal/phydm -DCONFIG_RTL8188E -DCONFIG_MP_INCLUDED -DCONFIG_EFUSE_CONFIG_FILE -DEFUSE_MAP_PATH=\"/system/etc/wifi/wifi_efuse_8188eu.map\" -DWIFIMAC_PATH=\"/data/wifimac.txt\" -DCONFIG_LOAD_PHY_PARA_FROM_FILE -DREALTEK_CONFIG_PATH=\"/lib/firmware/\" -DCONFIG_TXPWR_BY_RATE_EN=0 -DCONFIG_TXPWR_LIMIT_EN=0 -DCONFIG_RTW_ADAPTIVITY_EN=0 -DCONFIG_RTW_ADAPTIVITY_MODE=0 -DCONFIG_BR_EXT '-DCONFIG_BR_EXT_BRNAME="'br0'"' -DCONFIG_WIFI_MONITOR -DCONFIG_RTW_NAPI -DCONFIG_RTW_GRO -DCONFIG_RTW_NETIF_SG -DCONFIG_RTW_WIFI_HAL -DCONFIG_RTW_CFGVEDNOR_LLSTATS -DDM_ODM_SUPPORT_TYPE=0x04 -DCONFIG_LITTLE_ENDIAN -DCONFIG_IOCTL_CFG80211 -DRTW_USE_CFG80211_STA_EVENT -I/home/rtkbase/rtkbase/rtl8188eus/hal/phydm  -DMODULE  -DKBUILD_BASENAME='"phydm"' -DKBUILD_MODNAME='"8188eu"' -D__KBUILD_MODNAME=kmod_8188eu -c -o /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm.o /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm.c  

source_/home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm.o := /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm.c

deps_/home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm.o := \
    $(wildcard include/config/DYNAMIC_RX_PATH) \
    $(wildcard include/config/PSD_TOOL) \
    $(wildcard include/config/SMART_ANTENNA) \
    $(wildcard include/config/PHYDM_ANTENNA_DIVERSITY) \
    $(wildcard include/config/PHYDM_DFS_MASTER) \
    $(wildcard include/config/ADAPTIVE_SOML) \
    $(wildcard include/config/S0S1_SW_ANTENNA_DIVERSITY) \
    $(wildcard include/config/HL_SMART_ANTENNA) \
    $(wildcard include/config/5G_CG_SMART_ANT_DIVERSITY) \
    $(wildcard include/config/2G_CG_SMART_ANT_DIVERSITY) \
    $(wildcard include/config/DM_RESP_TXAGC) \
    $(wildcard include/config/RESP_TXAGC_ADJUST) \
    $(wildcard include/config/RECEIVER_BLOCKING) \
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
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/mp_precomp.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_precomp.h \
    $(wildcard include/config/SFW_SUPPORTED) \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_types.h \
    $(wildcard include/config/PCI_HCI) \
    $(wildcard include/config/USB_HCI) \
    $(wildcard include/config/SDIO_HCI) \
    $(wildcard include/config/GSPI_HCI) \
    $(wildcard include/config/LITTLE_ENDIAN) \
    $(wildcard include/config/BIG_ENDIAN) \
  /home/rtkbase/rtkbase/rtl8188eus/include/drv_types.h \
    $(wildcard include/config/ARP_KEEP_ALIVE) \
    $(wildcard include/config/80211N_HT) \
    $(wildcard include/config/80211AC_VHT) \
    $(wildcard include/config/INTEL_WIDI) \
    $(wildcard include/config/BEAMFORMING) \
    $(wildcard include/config/RTW_MESH) \
    $(wildcard include/config/PREALLOC_RX_SKB_BUFFER) \
    $(wildcard include/config/TDLS) \
    $(wildcard include/config/WAPI_SUPPORT) \
    $(wildcard include/config/MP_INCLUDED) \
    $(wildcard include/config/BR_EXT) \
    $(wildcard include/config/IOL) \
    $(wildcard include/config/MCC_MODE) \
    $(wildcard include/config/RTW_REPEATER_SON) \
    $(wildcard include/config/WMMPS_STA) \
    $(wildcard include/config/RTW_CUSTOMER_STR) \
    $(wildcard include/config/TX_EARLY_MODE) \
    $(wildcard include/config/AP_MODE) \
    $(wildcard include/config/BT_COEXIST) \
    $(wildcard include/config/ADAPTOR_INFO_CACHING_FILE) \
    $(wildcard include/config/LAYER2_ROAMING) \
    $(wildcard include/config/80211D) \
    $(wildcard include/config/TXPWR_LIMIT) \
    $(wildcard include/config/IEEE80211_BAND_5GHZ) \
    $(wildcard include/config/LOAD_PHY_PARA_FROM_FILE) \
    $(wildcard include/config/CONCURRENT_MODE) \
    $(wildcard include/config/RTW_ACS) \
    $(wildcard include/config/BACKGROUND_NOISE_MONITOR) \
    $(wildcard include/config/DFS_MASTER) \
    $(wildcard include/config/RTW_NAPI) \
    $(wildcard include/config/RTW_NAPI_DYNAMIC) \
    $(wildcard include/config/RTW_GRO) \
    $(wildcard include/config/WOWLAN) \
    $(wildcard include/config/SUPPORT_TRX_SHARED) \
    $(wildcard include/config/ADVANCE_OTA) \
    $(wildcard include/config/FW_OFFLOAD_PARAM_INIT) \
    $(wildcard include/config/DYNAMIC_SOML) \
    $(wildcard include/config/DBG_COUNTER) \
    $(wildcard include/config/IFACE_NUMBER) \
    $(wildcard include/config/MBSSID_CAM) \
    $(wildcard include/config/SDIO_INDIRECT_ACCESS) \
    $(wildcard include/config/IOCTL_CFG80211) \
    $(wildcard include/config/SWTIMER_BASED_TXBCN) \
    $(wildcard include/config/FW_MULTI_PORT_SUPPORT) \
    $(wildcard include/config/USB_VENDOR_REQ_MUTEX) \
    $(wildcard include/config/USB_VENDOR_REQ_BUFFER_PREALLOC) \
    $(wildcard include/config/INTEL_PROXIM) \
    $(wildcard include/config/MAC_LOOPBACK_DRIVER) \
    $(wildcard include/config/RTW_80211K) \
    $(wildcard include/config/IEEE80211W) \
    $(wildcard include/config/P2P) \
    $(wildcard include/config/WFD) \
    $(wildcard include/config/BT_COEXIST_SOCKET_TRX) \
    $(wildcard include/config/GPIO_API) \
    $(wildcard include/config/EVENT_THREAD_MODE) \
    $(wildcard include/config/XMIT_THREAD_MODE) \
    $(wildcard include/config/RECV_THREAD_MODE) \
    $(wildcard include/config/AUTOSUSPEND) \
    $(wildcard include/config/SUPPORT_FIFO_DUMP) \
    $(wildcard include/config/TX_AMSDU) \
    $(wildcard include/config/PNO_SUPPORT) \
    $(wildcard include/config/PNO_SET_DEBUG) \
  /home/rtkbase/rtkbase/rtl8188eus/include/drv_conf.h \
    $(wildcard include/config/RSSI_PRIORITY) \
    $(wildcard include/config/AP) \
    $(wildcard include/config/RTW_REPEATER_SON_ID) \
    $(wildcard include/config/RTW_REPEATER_SON_ROOT) \
    $(wildcard include/config/LAYER2_ROAMING_ACTIVE) \
    $(wildcard include/config/POWER_SAVING) \
    $(wildcard include/config/RTW_80211R) \
    $(wildcard include/config/ANDROID) \
    $(wildcard include/config/PLATFORM_ANDROID) \
    $(wildcard include/config/VALIDATE_SSID) \
    $(wildcard include/config/SIGNAL_DISPLAY_DBM) \
    $(wildcard include/config/HAS_EARLYSUSPEND) \
    $(wildcard include/config/RESUME_IN_WORKQUEUE) \
    $(wildcard include/config/ANDROID_POWER) \
    $(wildcard include/config/WAKELOCK) \
    $(wildcard include/config/VENDOR_REQ_RETRY) \
    $(wildcard include/config/RTW_MESH_OFFCH_CAND) \
    $(wildcard include/config/RTW_MESH_PEER_BLACKLIST) \
    $(wildcard include/config/RTW_MESH_CTO_MGATE_BLACKLIST) \
    $(wildcard include/config/RTW_MPM_TX_IES_SYNC_BSS) \
    $(wildcard include/config/RTW_MESH_AEK) \
    $(wildcard include/config/RTW_MESH_DATA_BMC_TO_UC) \
    $(wildcard include/config/SCAN_BACKOP) \
    $(wildcard include/config/RTW_HIQ_FILTER) \
    $(wildcard include/config/RTW_ADAPTIVITY_EN) \
    $(wildcard include/config/RTW_ADAPTIVITY_MODE) \
    $(wildcard include/config/RTW_ADAPTIVITY_DML) \
    $(wildcard include/config/RTW_ADAPTIVITY_DC_BACKOFF) \
    $(wildcard include/config/RTW_ADAPTIVITY_TH_L2H_INI) \
    $(wildcard include/config/RTW_ADAPTIVITY_TH_EDCCA_HL_DIFF) \
    $(wildcard include/config/RTW_EXCL_CHS) \
    $(wildcard include/config/RTW_DFS_REGION_DOMAIN) \
    $(wildcard include/config/TXPWR_BY_RATE_EN) \
    $(wildcard include/config/TXPWR_LIMIT_EN) \
    $(wildcard include/config/RTW_CHPLAN) \
    $(wildcard include/config/CALIBRATE_TX_POWER_BY_REGULATORY) \
    $(wildcard include/config/CALIBRATE_TX_POWER_TO_MAX) \
    $(wildcard include/config/RTW_IPCAM_APPLICATION) \
    $(wildcard include/config/RTW_CUSTOMIZE_BEEDCA) \
    $(wildcard include/config/RTW_CUSTOMIZE_BWMODE) \
    $(wildcard include/config/RTW_CUSTOMIZE_RLSTA) \
    $(wildcard include/config/RTW_RX_AMPDU_SZ_LIMIT_1SS) \
    $(wildcard include/config/RTW_RX_AMPDU_SZ_LIMIT_2SS) \
    $(wildcard include/config/RTW_RX_AMPDU_SZ_LIMIT_3SS) \
    $(wildcard include/config/RTW_RX_AMPDU_SZ_LIMIT_4SS) \
    $(wildcard include/config/RTW_TARGET_TX_PWR_2G_A) \
    $(wildcard include/config/RTW_TARGET_TX_PWR_2G_B) \
    $(wildcard include/config/RTW_TARGET_TX_PWR_2G_C) \
    $(wildcard include/config/RTW_TARGET_TX_PWR_2G_D) \
    $(wildcard include/config/RTW_TARGET_TX_PWR_5G_A) \
    $(wildcard include/config/RTW_TARGET_TX_PWR_5G_B) \
    $(wildcard include/config/RTW_TARGET_TX_PWR_5G_C) \
    $(wildcard include/config/RTW_TARGET_TX_PWR_5G_D) \
    $(wildcard include/config/RTW_AMPLIFIER_TYPE_2G) \
    $(wildcard include/config/RTW_AMPLIFIER_TYPE_5G) \
    $(wildcard include/config/RTW_RFE_TYPE) \
    $(wildcard include/config/RTW_GLNA_TYPE) \
    $(wildcard include/config/RTW_PLL_REF_CLK_SEL) \
    $(wildcard include/config/MI_WITH_MBSSID_CAM) \
    $(wildcard include/config/RUNTIME_PORT_SWITCH) \
    $(wildcard include/config/FW_BASED_BCN) \
    $(wildcard include/config/RTL8812A) \
    $(wildcard include/config/RTL8821A) \
    $(wildcard include/config/RTL8814A) \
    $(wildcard include/config/RTL8822B) \
    $(wildcard include/config/RTL8821C) \
    $(wildcard include/config/WOW_PATTERN_HW_CAM) \
    $(wildcard include/config/DEAUTH_BEFORE_CONNECT) \
    $(wildcard include/config/WEXT_DONT_JOIN_BYSSID) \
    $(wildcard include/config/DOSCAN_IN_BUSYTRAFFIC) \
    $(wildcard include/config/PHDYM_FW_FIXRATE) \
    $(wildcard include/config/RTW_SDIO_KEEP_IRQ) \
    $(wildcard include/config/USB_RX_AGGREGATION) \
    $(wildcard include/config/RTW_HOSTAPD_ACS) \
    $(wildcard include/config/FIND_BEST_CHANNEL) \
    $(wildcard include/config/IPS) \
  /home/rtkbase/rtkbase/rtl8188eus/include/autoconf.h \
    $(wildcard include/config/SINGLE_IMG) \
    $(wildcard include/config/DISABLE_ODM) \
    $(wildcard include/config/PLATFORM_ACTIONS_ATM702X) \
    $(wildcard include/config/CFG80211_FORCE_COMPATIBLE_2_6_37_UNDER) \
    $(wildcard include/config/DEBUG_CFG80211) \
    $(wildcard include/config/DRV_ISSUE_PROV_REQ) \
    $(wildcard include/config/SET_SCAN_DENY_TIMER) \
    $(wildcard include/config/H2CLBK) \
    $(wildcard include/config/EMBEDDED_FWIMG) \
    $(wildcard include/config/FILE_FWIMG) \
    $(wildcard include/config/XMIT_ACK) \
    $(wildcard include/config/ACTIVE_KEEP_ALIVE_CHECK) \
    $(wildcard include/config/RECV_REORDERING_CTRL) \
    $(wildcard include/config/SUPPORT_USB_INT) \
    $(wildcard include/config/USB_INTERRUPT_IN_PIPE) \
    $(wildcard include/config/IPS_LEVEL_2) \
    $(wildcard include/config/LPS) \
    $(wildcard include/config/LPS_LCLK) \
    $(wildcard include/config/ANTENNA_DIVERSITY) \
    $(wildcard include/config/TSF_RESET_OFFLOAD) \
    $(wildcard include/config/INTERRUPT_BASED_TXBCN) \
    $(wildcard include/config/INTERRUPT_BASED_TXBCN_EARLY_INT) \
    $(wildcard include/config/INTERRUPT_BASED_TXBCN_BCN_OK_ERR) \
    $(wildcard include/config/NATIVEAP_MLME) \
    $(wildcard include/config/HOSTAPD_MLME) \
    $(wildcard include/config/P2P_REMOVE_GROUP_INFO) \
    $(wildcard include/config/DBG_P2P) \
    $(wildcard include/config/P2P_PS) \
    $(wildcard include/config/P2P_OP_CHK_SOCIAL_CH) \
    $(wildcard include/config/CFG80211_ONECHANNEL_UNDER_CONCURRENT) \
    $(wildcard include/config/P2P_CHK_INVITE_CH_LIST) \
    $(wildcard include/config/P2P_INVITE_IOT) \
    $(wildcard include/config/TDLS_DRIVER_SETUP) \
    $(wildcard include/config/TDLS_AUTOSETUP) \
    $(wildcard include/config/TDLS_AUTOCHECKALIVE) \
    $(wildcard include/config/TDLS_CH_SW) \
    $(wildcard include/config/SKB_COPY) \
    $(wildcard include/config/RTW_LED) \
    $(wildcard include/config/RTW_SW_LED) \
    $(wildcard include/config/RTW_LED_HANDLED_BY_CMD_THREAD) \
    $(wildcard include/config/IOL_NEW_GENERATION) \
    $(wildcard include/config/IOL_READ_EFUSE_MAP) \
    $(wildcard include/config/IOL_LLT) \
    $(wildcard include/config/IOL_EFUSE_PATCH) \
    $(wildcard include/config/IOL_IOREG_CFG) \
    $(wildcard include/config/IOL_IOREG_CFG_DBG) \
    $(wildcard include/config/GLOBAL_UI_PID) \
    $(wildcard include/config/LAYER2_ROAMING_RESUME) \
    $(wildcard include/config/LONG_DELAY_ISSUE) \
    $(wildcard include/config/NEW_SIGNAL_STAT_PROCESS) \
    $(wildcard include/config/TX_MCAST2UNI) \
    $(wildcard include/config/CHECK_AC_LIFETIME) \
    $(wildcard include/config/MINIMAL_MEMORY_USAGE) \
    $(wildcard include/config/USB_TX_AGGREGATION) \
    $(wildcard include/config/REDUCE_USB_TX_INT) \
    $(wildcard include/config/EASY_REPLACEMENT) \
    $(wildcard include/config/USE_USB_BUFFER_ALLOC_XX) \
    $(wildcard include/config/USE_USB_BUFFER_ALLOC_TX) \
    $(wildcard include/config/USE_USB_BUFFER_ALLOC_RX) \
    $(wildcard include/config/PREALLOC_RECV_SKB) \
    $(wildcard include/config/FIX_NR_BULKIN_BUFFER) \
    $(wildcard include/config/USB_VENDOR_REQ_BUFFER_DYNAMIC_ALLOCATE) \
    $(wildcard include/config/USB_SUPPORT_ASYNC_VDN_REQ) \
    $(wildcard include/config/ONLY_ONE_OUT_EP_TO_LOW) \
    $(wildcard include/config/OUT_EP_WIFI_MODE) \
    $(wildcard include/config/MP_IWPRIV_SUPPORT) \
    $(wildcard include/config/RF_POWER_TRIM) \
    $(wildcard include/config/GPIO_WAKEUP) \
    $(wildcard include/config/ATTEMPT_TO_FIX_AP_BEACON_ERROR) \
    $(wildcard include/config/PROC_DEBUG) \
    $(wildcard include/config/SINGLE_XMIT_BUF) \
    $(wildcard include/config/SINGLE_RECV_BUF) \
  /home/rtkbase/rtkbase/rtl8188eus/include/hal_ic_cfg.h \
    $(wildcard include/config/MULTIDRV) \
    $(wildcard include/config/RTL8188E) \
    $(wildcard include/config/FW_C2H_PKT) \
    $(wildcard include/config/RTL8192E) \
    $(wildcard include/config/RTL8723B) \
    $(wildcard include/config/RTL8723D) \
    $(wildcard include/config/RTW_MAC_HIDDEN_RPT) \
    $(wildcard include/config/RTL8703B) \
    $(wildcard include/config/RTL8188F) \
    $(wildcard include/config/DFS) \
    $(wildcard include/config/GTK_OL) \
    $(wildcard include/config/AP_PORT_SWAP) \
    $(wildcard include/config/MCC_MODE_V2) \
    $(wildcard include/config/TDLS_CH_SW_V2) \
    $(wildcard include/config/NO_FW) \
    $(wildcard include/config/PHY_CAPABILITY_QUERY) \
    $(wildcard include/config/AMPDU_PRETX_CD) \
  /home/rtkbase/rtkbase/rtl8188eus/include/basic_types.h \
  include/generated/uapi/linux/version.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/uapi/asm/types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/int-ll64.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/uapi/asm/bitsperlong.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bitsperlong.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/asm-generic/bitsperlong.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/posix_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/stddef.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/stddef.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/uapi/asm/posix_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/asm-generic/posix_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/module.h \
    $(wildcard include/config/MODULES) \
    $(wildcard include/config/SYSFS) \
    $(wildcard include/config/MODULES_TREE_LOOKUP) \
    $(wildcard include/config/LIVEPATCH) \
    $(wildcard include/config/STACKTRACE_BUILD_ID) \
    $(wildcard include/config/ARCH_USES_CFI_TRAPS) \
    $(wildcard include/config/MODULE_SIG) \
    $(wildcard include/config/GENERIC_BUG) \
    $(wildcard include/config/KALLSYMS) \
    $(wildcard include/config/SMP) \
    $(wildcard include/config/TRACEPOINTS) \
    $(wildcard include/config/TREE_SRCU) \
    $(wildcard include/config/BPF_EVENTS) \
    $(wildcard include/config/JUMP_LABEL) \
    $(wildcard include/config/TRACING) \
    $(wildcard include/config/EVENT_TRACING) \
    $(wildcard include/config/FTRACE_MCOUNT_RECORD) \
    $(wildcard include/config/KPROBES) \
    $(wildcard include/config/HAVE_STATIC_CALL_INLINE) \
    $(wildcard include/config/KUNIT) \
    $(wildcard include/config/PRINTK_INDEX) \
    $(wildcard include/config/MODULE_UNLOAD) \
    $(wildcard include/config/MITIGATION_ITS) \
    $(wildcard include/config/CONSTRUCTORS) \
    $(wildcard include/config/FUNCTION_ERROR_INJECTION) \
    $(wildcard include/config/DYNAMIC_DEBUG_CORE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/list.h \
    $(wildcard include/config/LIST_HARDENED) \
    $(wildcard include/config/DEBUG_LIST) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/container_of.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/build_bug.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/compiler.h \
    $(wildcard include/config/TRACE_BRANCH_PROFILING) \
    $(wildcard include/config/PROFILE_ALL_BRANCHES) \
    $(wildcard include/config/OBJTOOL) \
  arch/arm/include/generated/asm/rwonce.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/rwonce.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kasan-checks.h \
    $(wildcard include/config/KASAN_GENERIC) \
    $(wildcard include/config/KASAN_SW_TAGS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kcsan-checks.h \
    $(wildcard include/config/KCSAN_WEAK_MEMORY) \
    $(wildcard include/config/KCSAN_IGNORE_ATOMICS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/poison.h \
    $(wildcard include/config/ILLEGAL_POINTER_VALUE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/const.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/vdso/const.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/const.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/CPU_32v6K) \
    $(wildcard include/config/THUMB2_KERNEL) \
    $(wildcard include/config/CPU_XSC3) \
    $(wildcard include/config/CPU_FA526) \
    $(wildcard include/config/ARM_HEAVY_MB) \
    $(wildcard include/config/ARM_DMA_MEM_BUFFERABLE) \
    $(wildcard include/config/CPU_SPECTRE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/barrier.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/stat.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/uapi/asm/stat.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/stat.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/time.h \
    $(wildcard include/config/POSIX_TIMERS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/cache.h \
    $(wildcard include/config/ARCH_HAS_CACHE_LINE_SIZE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/kernel.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/sysinfo.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/cache.h \
    $(wildcard include/config/ARM_L1_CACHE_SHIFT) \
    $(wildcard include/config/AEABI) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/math64.h \
    $(wildcard include/config/ARCH_SUPPORTS_INT128) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/math.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/div64.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/compiler.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/div64.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/log2.h \
    $(wildcard include/config/ARCH_HAS_ILOG2_U32) \
    $(wildcard include/config/ARCH_HAS_ILOG2_U64) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/bitops.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/bits.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/vdso/bits.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/bits.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/overflow.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/limits.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/limits.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/vdso/limits.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/typecheck.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bitops/generic-non-atomic.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/bitops.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/irqflags.h \
    $(wildcard include/config/PROVE_LOCKING) \
    $(wildcard include/config/TRACE_IRQFLAGS) \
    $(wildcard include/config/PREEMPT_RT) \
    $(wildcard include/config/IRQSOFF_TRACER) \
    $(wildcard include/config/PREEMPT_TRACER) \
    $(wildcard include/config/DEBUG_IRQFLAGS) \
    $(wildcard include/config/TRACE_IRQFLAGS_SUPPORT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/irqflags_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/cleanup.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/irqflags.h \
    $(wildcard include/config/CPU_V7M) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/ARM_THUMB) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/CPU_ENDIAN_BE8) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/hwcap.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/uapi/asm/hwcap.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/bitfield.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/uapi/asm/byteorder.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/byteorder/little_endian.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/byteorder/little_endian.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/swab.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/swab.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/swab.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/uapi/asm/swab.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/byteorder/generic.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/irqflags.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/percpu.h \
    $(wildcard include/config/CPU_V6) \
    $(wildcard include/config/ARM_HAS_GROUP_RELOCS) \
    $(wildcard include/config/ARM_MODULE_PLTS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/insn.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/percpu.h \
    $(wildcard include/config/DEBUG_PREEMPT) \
    $(wildcard include/config/HAVE_SETUP_PER_CPU_AREA) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/threads.h \
    $(wildcard include/config/NR_CPUS) \
    $(wildcard include/config/BASE_SMALL) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/percpu-defs.h \
    $(wildcard include/config/DEBUG_FORCE_WEAK_PER_CPU) \
    $(wildcard include/config/AMD_MEM_ENCRYPT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bitops/non-atomic.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bitops/non-instrumented-non-atomic.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bitops/builtin-__fls.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bitops/builtin-__ffs.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bitops/builtin-fls.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bitops/builtin-ffs.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bitops/ffz.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bitops/fls64.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bitops/sched.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bitops/hweight.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bitops/arch_hweight.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bitops/const_hweight.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bitops/lock.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/atomic.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/atomic.h \
    $(wildcard include/config/GENERIC_ATOMIC64) \
    $(wildcard include/config/ARM_LPAE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/prefetch.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/processor.h \
    $(wildcard include/config/HAVE_HW_BREAKPOINT) \
    $(wildcard include/config/BINFMT_ELF_FDPIC) \
    $(wildcard include/config/MMU) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/hw_breakpoint.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/unified.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/vdso/processor.h \
    $(wildcard include/config/ARM_ERRATA_754327) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/CPU_SA1100) \
    $(wildcard include/config/CPU_SA110) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/cmpxchg-emu.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/cmpxchg-local.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/atomic/atomic-arch-fallback.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/atomic/atomic-long.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/atomic/atomic-instrumented.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/instrumented.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kmsan-checks.h \
    $(wildcard include/config/KMSAN) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bitops/instrumented-lock.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bitops/le.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/vdso/math64.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/time64.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/vdso/time64.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/time.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/time_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/time32.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/timex.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/timex.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/param.h \
  arch/arm/include/generated/uapi/asm/param.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/param.h \
    $(wildcard include/config/HZ) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/asm-generic/param.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/timex.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/vdso/time32.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/vdso/time.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/uidgid.h \
    $(wildcard include/config/MULTIUSER) \
    $(wildcard include/config/USER_NS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/uidgid_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/highuid.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/buildid.h \
    $(wildcard include/config/VMCORE_INFO) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kmod.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/umh.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/gfp.h \
    $(wildcard include/config/HIGHMEM) \
    $(wildcard include/config/ZONE_DMA) \
    $(wildcard include/config/ZONE_DMA32) \
    $(wildcard include/config/ZONE_DEVICE) \
    $(wildcard include/config/NUMA) \
    $(wildcard include/config/COMPACTION) \
    $(wildcard include/config/CONTIG_ALLOC) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/gfp_types.h \
    $(wildcard include/config/KASAN_HW_TAGS) \
    $(wildcard include/config/LOCKDEP) \
    $(wildcard include/config/SLAB_OBJ_EXT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/mmzone.h \
    $(wildcard include/config/ARCH_FORCE_MAX_ORDER) \
    $(wildcard include/config/CMA) \
    $(wildcard include/config/MEMORY_ISOLATION) \
    $(wildcard include/config/ZSMALLOC) \
    $(wildcard include/config/UNACCEPTED_MEMORY) \
    $(wildcard include/config/IOMMU_SUPPORT) \
    $(wildcard include/config/SWAP) \
    $(wildcard include/config/NUMA_BALANCING) \
    $(wildcard include/config/TRANSPARENT_HUGEPAGE) \
    $(wildcard include/config/LRU_GEN) \
    $(wildcard include/config/LRU_GEN_STATS) \
    $(wildcard include/config/LRU_GEN_WALKS_MMU) \
    $(wildcard include/config/MEMCG) \
    $(wildcard include/config/SPARSEMEM) \
    $(wildcard include/config/MEMORY_HOTPLUG) \
    $(wildcard include/config/MEMORY_FAILURE) \
    $(wildcard include/config/FLATMEM) \
    $(wildcard include/config/PAGE_EXTENSION) \
    $(wildcard include/config/DEFERRED_STRUCT_PAGE_INIT) \
    $(wildcard include/config/HAVE_MEMORYLESS_NODES) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP) \
    $(wildcard include/config/SPARSEMEM_EXTREME) \
    $(wildcard include/config/HAVE_ARCH_PFN_VALID) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/spinlock.h \
    $(wildcard include/config/DEBUG_SPINLOCK) \
    $(wildcard include/config/PREEMPTION) \
    $(wildcard include/config/DEBUG_LOCK_ALLOC) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/preempt.h \
    $(wildcard include/config/PREEMPT_COUNT) \
    $(wildcard include/config/TRACE_PREEMPT_TOGGLE) \
    $(wildcard include/config/PREEMPT_NOTIFIERS) \
    $(wildcard include/config/PREEMPT_DYNAMIC) \
    $(wildcard include/config/PREEMPT_NONE) \
    $(wildcard include/config/PREEMPT_VOLUNTARY) \
    $(wildcard include/config/PREEMPT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/linkage.h \
    $(wildcard include/config/ARCH_USE_SYM_ANNOTATIONS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/stringify.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/export.h \
    $(wildcard include/config/MODVERSIONS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/linkage.h \
  arch/arm/include/generated/asm/preempt.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/preempt.h \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_KEY) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/thread_info.h \
    $(wildcard include/config/THREAD_INFO_IN_TASK) \
    $(wildcard include/config/GENERIC_ENTRY) \
    $(wildcard include/config/HAVE_ARCH_WITHIN_STACK_FRAMES) \
    $(wildcard include/config/HARDENED_USERCOPY) \
    $(wildcard include/config/BUG) \
    $(wildcard include/config/SH) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/bug.h \
    $(wildcard include/config/BUG_ON_DATA_CORRUPTION) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/bug.h \
    $(wildcard include/config/DEBUG_BUGVERBOSE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/CPU_ENDIAN_BE32) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/bug.h \
    $(wildcard include/config/GENERIC_BUG_RELATIVE_POINTERS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/instrumentation.h \
    $(wildcard include/config/NOINSTR_VALIDATION) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/once_lite.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/panic.h \
    $(wildcard include/config/PANIC_TIMEOUT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/printk.h \
    $(wildcard include/config/MESSAGE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_QUIET) \
    $(wildcard include/config/EARLY_PRINTK) \
    $(wildcard include/config/PRINTK) \
    $(wildcard include/config/DYNAMIC_DEBUG) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/stdarg.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/init.h \
    $(wildcard include/config/HAVE_ARCH_PREL32_RELOCATIONS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kern_levels.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/ratelimit_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/spinlock_types_raw.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/spinlock_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/lockdep_types.h \
    $(wildcard include/config/PROVE_RAW_LOCK_NESTING) \
    $(wildcard include/config/LOCK_STAT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/restart_block.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/errno.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/errno.h \
  arch/arm/include/generated/uapi/asm/errno.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/asm-generic/errno.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/asm-generic/errno-base.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/current.h \
    $(wildcard include/config/CURRENT_POINTER_IN_TPIDRURO) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/KASAN) \
    $(wildcard include/config/VMAP_STACK) \
    $(wildcard include/config/ARM_THUMBEE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/VFPv3) \
    $(wildcard include/config/IWMMXT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/page.h \
    $(wildcard include/config/PAGE_SHIFT) \
    $(wildcard include/config/CPU_COPY_V4WT) \
    $(wildcard include/config/CPU_COPY_V4WB) \
    $(wildcard include/config/CPU_COPY_FEROCEON) \
    $(wildcard include/config/CPU_COPY_FA) \
    $(wildcard include/config/CPU_XSCALE) \
    $(wildcard include/config/CPU_COPY_V6) \
    $(wildcard include/config/KUSER_HELPERS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/glue.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/pgtable-2level-types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/memory.h \
    $(wildcard include/config/NEED_MACH_MEMORY_H) \
    $(wildcard include/config/PAGE_OFFSET) \
    $(wildcard include/config/DRAM_BASE) \
    $(wildcard include/config/DRAM_SIZE) \
    $(wildcard include/config/XIP_KERNEL) \
    $(wildcard include/config/HAVE_TCM) \
    $(wildcard include/config/ARM_PATCH_PHYS_VIRT) \
    $(wildcard include/config/PHYS_OFFSET) \
    $(wildcard include/config/DEBUG_VIRTUAL) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sizes.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/kasan_def.h \
    $(wildcard include/config/KASAN_SHADOW_OFFSET) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/getorder.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/memory_model.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/pfn.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/traps.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/bottom_half.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/instruction_pointer.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/lockdep.h \
    $(wildcard include/config/DEBUG_LOCKING_API_SELFTESTS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/smp.h \
    $(wildcard include/config/UP_LATE_INIT) \
    $(wildcard include/config/CSD_LOCK_WAIT_DEBUG) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/cpumask.h \
    $(wildcard include/config/FORCE_NR_CPUS) \
    $(wildcard include/config/HOTPLUG_CPU) \
    $(wildcard include/config/DEBUG_PER_CPU_MAPS) \
    $(wildcard include/config/CPUMASK_OFFSTACK) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kernel.h \
    $(wildcard include/config/PREEMPT_VOLUNTARY_BUILD) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_CALL) \
    $(wildcard include/config/PREEMPT_) \
    $(wildcard include/config/DEBUG_ATOMIC_SLEEP) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/align.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/array_size.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/hex.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kstrtox.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/minmax.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sprintf.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/static_call_types.h \
    $(wildcard include/config/HAVE_STATIC_CALL) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/wordpart.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/bitmap.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/find.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/string.h \
    $(wildcard include/config/BINARY_PRINTF) \
    $(wildcard include/config/FORTIFY_SOURCE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/args.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/err.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/string.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/string.h \
    $(wildcard include/config/CPU_LITTLE_ENDIAN) \
    $(wildcard include/config/BCM2835_FAST_MEMCPY) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/bitmap-str.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/cpumask_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/numa.h \
    $(wildcard include/config/NODES_SHIFT) \
    $(wildcard include/config/NUMA_KEEP_MEMINFO) \
    $(wildcard include/config/HAVE_ARCH_NODE_DEV_GROUP) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/smp_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/llist.h \
    $(wildcard include/config/ARCH_HAVE_NMI_SAFE_CMPXCHG) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/smp.h \
  arch/arm/include/generated/asm/mmiowb.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/mmiowb.h \
    $(wildcard include/config/MMIOWB) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/spinlock_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rwlock_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/spinlock.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rwlock.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/INLINE_SPIN_LOCK) \
    $(wildcard include/config/INLINE_SPIN_LOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK_BH) \
    $(wildcard include/config/UNINLINE_SPIN_UNLOCK) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/GENERIC_LOCKBREAK) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/INLINE_READ_LOCK) \
    $(wildcard include/config/INLINE_WRITE_LOCK) \
    $(wildcard include/config/INLINE_READ_LOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_LOCK_BH) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_READ_TRYLOCK) \
    $(wildcard include/config/INLINE_WRITE_TRYLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_BH) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQRESTORE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/list_nulls.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/wait.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/seqlock.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/mutex.h \
    $(wildcard include/config/DEBUG_MUTEXES) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/osq_lock.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/debug_locks.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/mutex_types.h \
    $(wildcard include/config/MUTEX_SPIN_ON_OWNER) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/seqlock_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/nodemask.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/nodemask_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/random.h \
    $(wildcard include/config/VMGENID) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/random.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/ioctl.h \
  arch/arm/include/generated/uapi/asm/ioctl.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/ioctl.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/asm-generic/ioctl.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/irqnr.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/irqnr.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/prandom.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/once.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/jump_label.h \
    $(wildcard include/config/HAVE_ARCH_JUMP_LABEL_RELATIVE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/jump_label.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/pageblock-flags.h \
    $(wildcard include/config/HUGETLB_PAGE) \
    $(wildcard include/config/HUGETLB_PAGE_SIZE_VARIABLE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/page-flags-layout.h \
  include/generated/bounds.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/mm_types.h \
    $(wildcard include/config/HAVE_ALIGNED_STRUCT_PAGE) \
    $(wildcard include/config/HUGETLB_PMD_PAGE_TABLE_SHARING) \
    $(wildcard include/config/USERFAULTFD) \
    $(wildcard include/config/ANON_VMA_NAME) \
    $(wildcard include/config/PER_VMA_LOCK) \
    $(wildcard include/config/SCHED_MM_CID) \
    $(wildcard include/config/HAVE_ARCH_COMPAT_MMAP_BASES) \
    $(wildcard include/config/MEMBARRIER) \
    $(wildcard include/config/AIO) \
    $(wildcard include/config/MMU_NOTIFIER) \
    $(wildcard include/config/SPLIT_PMD_PTLOCKS) \
    $(wildcard include/config/ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH) \
    $(wildcard include/config/IOMMU_MM_DATA) \
    $(wildcard include/config/KSM) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/mm_types_task.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/auxvec.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/auxvec.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/auxvec.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/uapi/asm/auxvec.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kref.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/refcount.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/refcount_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rbtree.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rbtree_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rcupdate.h \
    $(wildcard include/config/PREEMPT_RCU) \
    $(wildcard include/config/TINY_RCU) \
    $(wildcard include/config/RCU_STRICT_GRACE_PERIOD) \
    $(wildcard include/config/RCU_LAZY) \
    $(wildcard include/config/TASKS_RCU_GENERIC) \
    $(wildcard include/config/RCU_STALL_COMMON) \
    $(wildcard include/config/NO_HZ_FULL) \
    $(wildcard include/config/KVM_XFER_TO_GUEST_WORK) \
    $(wildcard include/config/RCU_NOCB_CPU) \
    $(wildcard include/config/TASKS_RCU) \
    $(wildcard include/config/TASKS_TRACE_RCU) \
    $(wildcard include/config/TASKS_RUDE_RCU) \
    $(wildcard include/config/TREE_RCU) \
    $(wildcard include/config/DEBUG_OBJECTS_RCU_HEAD) \
    $(wildcard include/config/PROVE_RCU) \
    $(wildcard include/config/ARCH_WEAK_RELEASE_ACQUIRE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/context_tracking_irq.h \
    $(wildcard include/config/CONTEXT_TRACKING_IDLE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rcutree.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/maple_tree.h \
    $(wildcard include/config/MAPLE_RCU_DISABLED) \
    $(wildcard include/config/DEBUG_MAPLE_TREE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rwsem.h \
    $(wildcard include/config/RWSEM_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_RWSEMS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/completion.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/swait.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/uprobes.h \
    $(wildcard include/config/UPROBES) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/workqueue.h \
    $(wildcard include/config/DEBUG_OBJECTS_WORK) \
    $(wildcard include/config/FREEZER) \
    $(wildcard include/config/WQ_WATCHDOG) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/timer.h \
    $(wildcard include/config/DEBUG_OBJECTS_TIMERS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/ktime.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/jiffies.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/vdso/jiffies.h \
  include/generated/timeconst.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/vdso/ktime.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/timekeeping.h \
    $(wildcard include/config/GENERIC_CMOS_UPDATE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/clocksource_ids.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/debugobjects.h \
    $(wildcard include/config/DEBUG_OBJECTS) \
    $(wildcard include/config/DEBUG_OBJECTS_FREE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/timer_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/workqueue_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/percpu_counter.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/percpu.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING) \
    $(wildcard include/config/RANDOM_KMALLOC_CACHES) \
    $(wildcard include/config/PAGE_SIZE_4KB) \
    $(wildcard include/config/NEED_PER_CPU_PAGE_FIRST_CHUNK) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/alloc_tag.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING_DEBUG) \
    $(wildcard include/config/MEM_ALLOC_PROFILING_ENABLED_BY_DEFAULT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/codetag.h \
    $(wildcard include/config/CODE_TAGGING) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/static_key.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/mmdebug.h \
    $(wildcard include/config/DEBUG_VM) \
    $(wildcard include/config/DEBUG_VM_IRQSOFF) \
    $(wildcard include/config/DEBUG_VM_PGFLAGS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sched.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_NATIVE) \
    $(wildcard include/config/SCHED_INFO) \
    $(wildcard include/config/SCHEDSTATS) \
    $(wildcard include/config/SCHED_CORE) \
    $(wildcard include/config/FAIR_GROUP_SCHED) \
    $(wildcard include/config/RT_GROUP_SCHED) \
    $(wildcard include/config/RT_MUTEXES) \
    $(wildcard include/config/UCLAMP_TASK) \
    $(wildcard include/config/UCLAMP_BUCKETS_COUNT) \
    $(wildcard include/config/KMAP_LOCAL) \
    $(wildcard include/config/SCHED_CLASS_EXT) \
    $(wildcard include/config/CGROUP_SCHED) \
    $(wildcard include/config/BLK_DEV_IO_TRACE) \
    $(wildcard include/config/MEMCG_V1) \
    $(wildcard include/config/COMPAT_BRK) \
    $(wildcard include/config/CGROUPS) \
    $(wildcard include/config/BLK_CGROUP) \
    $(wildcard include/config/PSI) \
    $(wildcard include/config/PAGE_OWNER) \
    $(wildcard include/config/EVENTFD) \
    $(wildcard include/config/ARCH_HAS_CPU_PASID) \
    $(wildcard include/config/CPU_SUP_INTEL) \
    $(wildcard include/config/TASK_DELAY_ACCT) \
    $(wildcard include/config/STACKPROTECTOR) \
    $(wildcard include/config/ARCH_HAS_SCALED_CPUTIME) \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_GEN) \
    $(wildcard include/config/POSIX_CPUTIMERS) \
    $(wildcard include/config/POSIX_CPU_TIMERS_TASK_WORK) \
    $(wildcard include/config/KEYS) \
    $(wildcard include/config/SYSVIPC) \
    $(wildcard include/config/DETECT_HUNG_TASK) \
    $(wildcard include/config/IO_URING) \
    $(wildcard include/config/AUDIT) \
    $(wildcard include/config/AUDITSYSCALL) \
    $(wildcard include/config/UBSAN) \
    $(wildcard include/config/UBSAN_TRAP) \
    $(wildcard include/config/TASK_XACCT) \
    $(wildcard include/config/CPUSETS) \
    $(wildcard include/config/X86_CPU_RESCTRL) \
    $(wildcard include/config/FUTEX) \
    $(wildcard include/config/COMPAT) \
    $(wildcard include/config/PERF_EVENTS) \
    $(wildcard include/config/RSEQ) \
    $(wildcard include/config/FAULT_INJECTION) \
    $(wildcard include/config/LATENCYTOP) \
    $(wildcard include/config/FUNCTION_GRAPH_TRACER) \
    $(wildcard include/config/BCACHE) \
    $(wildcard include/config/SECURITY) \
    $(wildcard include/config/BPF_SYSCALL) \
    $(wildcard include/config/GCC_PLUGIN_STACKLEAK) \
    $(wildcard include/config/X86_MCE) \
    $(wildcard include/config/KRETPROBES) \
    $(wildcard include/config/RETHOOK) \
    $(wildcard include/config/ARCH_HAS_PARANOID_L1D_FLUSH) \
    $(wildcard include/config/RV) \
    $(wildcard include/config/USER_EVENTS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/sched.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/pid_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sem_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/shm.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/shmparam.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kmsan_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/plist_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/hrtimer_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/timerqueue_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/seccomp_types.h \
    $(wildcard include/config/SECCOMP) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/resource.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/resource.h \
  arch/arm/include/generated/uapi/asm/resource.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/resource.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/asm-generic/resource.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/latencytop.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sched/prio.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sched/types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/signal_types.h \
    $(wildcard include/config/OLD_SIGACTION) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/signal.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/signal.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/uapi/asm/signal.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/asm-generic/signal-defs.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/uapi/asm/sigcontext.h \
  arch/arm/include/generated/uapi/asm/siginfo.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/asm-generic/siginfo.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/syscall_user_dispatch_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/netdevice_xmit.h \
    $(wildcard include/config/NET_EGRESS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/task_io_accounting.h \
    $(wildcard include/config/TASK_IO_ACCOUNTING) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/posix-timers_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/rseq.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kcsan.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rv.h \
    $(wildcard include/config/RV_REACTORS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/livepatch_sched.h \
  arch/arm/include/generated/asm/kmap_size.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/kmap_size.h \
    $(wildcard include/config/DEBUG_KMAP_LOCAL) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sched/ext.h \
    $(wildcard include/config/EXT_GROUP_SCHED) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/CPU_HAS_ASID) \
    $(wildcard include/config/VDSO) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/page-flags.h \
    $(wildcard include/config/PAGE_IDLE_FLAG) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_2) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_3) \
    $(wildcard include/config/HUGETLB_PAGE_OPTIMIZE_VMEMMAP) \
    $(wildcard include/config/DEBUG_KMAP_LOCAL_FORCE_MAP) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/local_lock.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/local_lock_internal.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/zswap.h \
    $(wildcard include/config/ZSWAP) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/memory_hotplug.h \
    $(wildcard include/config/ARCH_HAS_ADD_PAGES) \
    $(wildcard include/config/MEMORY_HOTREMOVE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/notifier.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/srcu.h \
    $(wildcard include/config/TINY_SRCU) \
    $(wildcard include/config/NEED_SRCU_NMI_SAFE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rcu_segcblist.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/srcutree.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rcu_node_tree.h \
    $(wildcard include/config/RCU_FANOUT) \
    $(wildcard include/config/RCU_FANOUT_LEAF) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/topology.h \
    $(wildcard include/config/USE_PERCPU_NUMA_NODE_ID) \
    $(wildcard include/config/SCHED_SMT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/arch_topology.h \
    $(wildcard include/config/GENERIC_ARCH_TOPOLOGY) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/topology.h \
    $(wildcard include/config/ARM_CPU_TOPOLOGY) \
    $(wildcard include/config/BL_SWITCHER) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/topology.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sysctl.h \
    $(wildcard include/config/SYSCTL) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/sysctl.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/elf.h \
    $(wildcard include/config/ARCH_HAVE_EXTRA_ELF_NOTES) \
    $(wildcard include/config/ARCH_USE_GNU_PROPERTY) \
    $(wildcard include/config/ARCH_HAVE_ELF_PROT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/elf.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/user.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/elf.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/elf-em.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kobject.h \
    $(wildcard include/config/UEVENT_HELPER) \
    $(wildcard include/config/DEBUG_KOBJECT_RELEASE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sysfs.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kernfs.h \
    $(wildcard include/config/KERNFS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/idr.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/radix-tree.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/xarray.h \
    $(wildcard include/config/XARRAY_MULTI) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sched/mm.h \
    $(wildcard include/config/MMU_LAZY_TLB_REFCOUNT) \
    $(wildcard include/config/ARCH_HAS_MEMBARRIER_CALLBACKS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sync_core.h \
    $(wildcard include/config/ARCH_HAS_SYNC_CORE_BEFORE_USERMODE) \
    $(wildcard include/config/ARCH_HAS_PREPARE_SYNC_CORE_CMD) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sched/coredump.h \
    $(wildcard include/config/CORE_DUMP_DEFAULT_ELF_HEADERS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kobject_ns.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/moduleparam.h \
    $(wildcard include/config/ALPHA) \
    $(wildcard include/config/PPC64) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rbtree_latch.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/error-injection.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/error-injection.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/tracepoint-defs.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/dynamic_debug.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/module.h \
    $(wildcard include/config/ARM_UNWIND) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/module.h \
    $(wildcard include/config/HAVE_MOD_ARCH_SPECIFIC) \
    $(wildcard include/config/MODULES_USE_ELF_REL) \
    $(wildcard include/config/MODULES_USE_ELF_RELA) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/unwind.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/utsname.h \
    $(wildcard include/config/UTS_NS) \
    $(wildcard include/config/PROC_SYSCTL) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/nsproxy.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/ns_common.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/utsname.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/osdep_service.h \
    $(wildcard include/config/USE_VMALLOC) \
    $(wildcard include/config/AP_WOWLAN) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sched/signal.h \
    $(wildcard include/config/SCHED_AUTOGROUP) \
    $(wildcard include/config/BSD_PROCESS_ACCT) \
    $(wildcard include/config/TASKSTATS) \
    $(wildcard include/config/STACK_GROWSUP) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rculist.h \
    $(wildcard include/config/PROVE_RCU_LIST) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/signal.h \
    $(wildcard include/config/DYNAMIC_SIGFRAME) \
    $(wildcard include/config/PROC_FS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sched/jobctl.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sched/task.h \
    $(wildcard include/config/HAVE_EXIT_THREAD) \
    $(wildcard include/config/ARCH_WANTS_DYNAMIC_TASK_STRUCT) \
    $(wildcard include/config/HAVE_ARCH_THREAD_STRUCT_WHITELIST) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/uaccess.h \
    $(wildcard include/config/ARCH_HAS_SUBPAGE_FAULTS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/fault-inject-usercopy.h \
    $(wildcard include/config/FAULT_INJECTION_USERCOPY) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/nospec.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/uaccess.h \
    $(wildcard include/config/CPU_SW_DOMAIN_PAN) \
    $(wildcard include/config/CPU_TTBR0_PAN) \
    $(wildcard include/config/HAVE_EFFICIENT_UNALIGNED_ACCESS) \
    $(wildcard include/config/UACCESS_WITH_MEMCPY) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/domain.h \
    $(wildcard include/config/IO_36) \
    $(wildcard include/config/CPU_USE_DOMAINS) \
    $(wildcard include/config/CPU_CP15_MMU) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/unaligned.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/unaligned/packed_struct.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/vdso/unaligned.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/pgtable.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/proc-fns.h \
    $(wildcard include/config/BIG_LITTLE) \
    $(wildcard include/config/HARDEN_BRANCH_PREDICTOR) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/glue-proc.h \
    $(wildcard include/config/CPU_ARM7TDMI) \
    $(wildcard include/config/CPU_ARM720T) \
    $(wildcard include/config/CPU_ARM740T) \
    $(wildcard include/config/CPU_ARM9TDMI) \
    $(wildcard include/config/CPU_ARM920T) \
    $(wildcard include/config/CPU_ARM922T) \
    $(wildcard include/config/CPU_ARM925T) \
    $(wildcard include/config/CPU_ARM926T) \
    $(wildcard include/config/CPU_ARM940T) \
    $(wildcard include/config/CPU_ARM946E) \
    $(wildcard include/config/CPU_ARM1020) \
    $(wildcard include/config/CPU_ARM1020E) \
    $(wildcard include/config/CPU_ARM1022) \
    $(wildcard include/config/CPU_ARM1026) \
    $(wildcard include/config/CPU_MOHAWK) \
    $(wildcard include/config/CPU_FEROCEON) \
    $(wildcard include/config/CPU_V6K) \
    $(wildcard include/config/CPU_PJ4B) \
    $(wildcard include/config/CPU_V7) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/pgtable-nopud.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/pgtable-nop4d.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/pgtable-hwdef.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/pgtable-2level-hwdef.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/tlbflush.h \
    $(wildcard include/config/SMP_ON_UP) \
    $(wildcard include/config/CPU_TLB_V4WT) \
    $(wildcard include/config/CPU_TLB_FA) \
    $(wildcard include/config/CPU_TLB_V4WBI) \
    $(wildcard include/config/CPU_TLB_FEROCEON) \
    $(wildcard include/config/CPU_TLB_V4WB) \
    $(wildcard include/config/CPU_TLB_V6) \
    $(wildcard include/config/CPU_TLB_V7) \
    $(wildcard include/config/ARM_ERRATA_720789) \
    $(wildcard include/config/ARM_ERRATA_798181) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/pgtable-2level.h \
  arch/arm/include/generated/asm/extable.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/extable.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/access_ok.h \
    $(wildcard include/config/ALTERNATE_USER_ADDRESS_SPACE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/cred.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/capability.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/capability.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/key.h \
    $(wildcard include/config/KEY_NOTIFICATIONS) \
    $(wildcard include/config/NET) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/assoc_array.h \
    $(wildcard include/config/ASSOCIATIVE_ARRAY) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sched/user.h \
    $(wildcard include/config/EPOLL) \
    $(wildcard include/config/VFIO_PCI_ZDEV_KVM) \
    $(wildcard include/config/IOMMUFD) \
    $(wildcard include/config/WATCH_QUEUE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/ratelimit.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/pid.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/posix-timers.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/alarmtimer.h \
    $(wildcard include/config/RTC_CLASS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/hrtimer.h \
    $(wildcard include/config/HIGH_RES_TIMERS) \
    $(wildcard include/config/TIME_LOW_RES) \
    $(wildcard include/config/TIMERFD) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/hrtimer_defs.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/timerqueue.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/osdep_service_linux.h \
    $(wildcard include/config/NET_RADIO) \
    $(wildcard include/config/WIRELESS_EXT) \
    $(wildcard include/config/IEEE80211_HT_ADDT_INFO) \
    $(wildcard include/config/TCP_CSUM_OFFLOAD_TX) \
    $(wildcard include/config/EFUSE_CONFIG_FILE) \
    $(wildcard include/config/USB_SUSPEND) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/slab.h \
    $(wildcard include/config/FAILSLAB) \
    $(wildcard include/config/KFENCE) \
    $(wildcard include/config/SLUB_TINY) \
    $(wildcard include/config/SLUB_DEBUG) \
    $(wildcard include/config/SLAB_FREELIST_HARDENED) \
    $(wildcard include/config/SLAB_BUCKETS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/percpu-refcount.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/hash.h \
    $(wildcard include/config/HAVE_ARCH_HASH) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kasan.h \
    $(wildcard include/config/KASAN_STACK) \
    $(wildcard include/config/KASAN_VMALLOC) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kasan-enabled.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kasan-tags.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/netdevice.h \
    $(wildcard include/config/DCB) \
    $(wildcard include/config/HYPERV_NET) \
    $(wildcard include/config/WLAN) \
    $(wildcard include/config/AX25) \
    $(wildcard include/config/MAC80211_MESH) \
    $(wildcard include/config/NET_IPIP) \
    $(wildcard include/config/NET_IPGRE) \
    $(wildcard include/config/IPV6_SIT) \
    $(wildcard include/config/IPV6_TUNNEL) \
    $(wildcard include/config/NETPOLL) \
    $(wildcard include/config/XDP_SOCKETS) \
    $(wildcard include/config/BQL) \
    $(wildcard include/config/XPS) \
    $(wildcard include/config/RFS_ACCEL) \
    $(wildcard include/config/FCOE) \
    $(wildcard include/config/XFRM_OFFLOAD) \
    $(wildcard include/config/NET_POLL_CONTROLLER) \
    $(wildcard include/config/LIBFCOE) \
    $(wildcard include/config/NETFILTER_EGRESS) \
    $(wildcard include/config/NET_XGRESS) \
    $(wildcard include/config/NET_L3_MASTER_DEV) \
    $(wildcard include/config/IPV6) \
    $(wildcard include/config/TLS_DEVICE) \
    $(wildcard include/config/VLAN_8021Q) \
    $(wildcard include/config/NET_DSA) \
    $(wildcard include/config/TIPC) \
    $(wildcard include/config/ATALK) \
    $(wildcard include/config/CFG80211) \
    $(wildcard include/config/IEEE802154) \
    $(wildcard include/config/6LOWPAN) \
    $(wildcard include/config/MPLS_ROUTING) \
    $(wildcard include/config/MCTP) \
    $(wildcard include/config/NETFILTER_INGRESS) \
    $(wildcard include/config/NET_SCHED) \
    $(wildcard include/config/PCPU_DEV_REFCNT) \
    $(wildcard include/config/GARP) \
    $(wildcard include/config/MRP) \
    $(wildcard include/config/NET_DROP_MONITOR) \
    $(wildcard include/config/CGROUP_NET_PRIO) \
    $(wildcard include/config/MACSEC) \
    $(wildcard include/config/DPLL) \
    $(wildcard include/config/PAGE_POOL) \
    $(wildcard include/config/DIMLIB) \
    $(wildcard include/config/RPS) \
    $(wildcard include/config/NET_FLOW_LIMIT) \
    $(wildcard include/config/NET_DEV_REFCNT_TRACKER) \
    $(wildcard include/config/ETHTOOL_NETLINK) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/delay.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/delay.h \
  arch/arm/include/generated/asm/local.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/local.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/dynamic_queue_limits.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/net_namespace.h \
    $(wildcard include/config/NF_CONNTRACK) \
    $(wildcard include/config/NF_FLOW_TABLE) \
    $(wildcard include/config/UNIX) \
    $(wildcard include/config/IEEE802154_6LOWPAN) \
    $(wildcard include/config/IP_SCTP) \
    $(wildcard include/config/NETFILTER) \
    $(wildcard include/config/NF_TABLES) \
    $(wildcard include/config/WEXT_CORE) \
    $(wildcard include/config/XFRM) \
    $(wildcard include/config/IP_VS) \
    $(wildcard include/config/MPLS) \
    $(wildcard include/config/CAN) \
    $(wildcard include/config/CRYPTO_USER) \
    $(wildcard include/config/SMC) \
    $(wildcard include/config/NET_NS) \
    $(wildcard include/config/NET_NS_REFCNT_TRACKER) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/flow.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/in6.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/in6.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/libc-compat.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/core.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/mib.h \
    $(wildcard include/config/XFRM_STATISTICS) \
    $(wildcard include/config/TLS) \
    $(wildcard include/config/MPTCP) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/snmp.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/snmp.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/u64_stats_sync.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/unix.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/packet.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/ipv4.h \
    $(wildcard include/config/IP_ROUTE_MULTIPATH) \
    $(wildcard include/config/IP_MULTIPLE_TABLES) \
    $(wildcard include/config/IP_ROUTE_CLASSID) \
    $(wildcard include/config/IP_MROUTE) \
    $(wildcard include/config/IP_MROUTE_MULTIPLE_TABLES) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/inet_frag.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rhashtable-types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/dropreason-core.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/siphash.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/ipv6.h \
    $(wildcard include/config/IPV6_MULTIPLE_TABLES) \
    $(wildcard include/config/IPV6_SUBTREES) \
    $(wildcard include/config/IPV6_MROUTE) \
    $(wildcard include/config/IPV6_MROUTE_MULTIPLE_TABLES) \
    $(wildcard include/config/NF_DEFRAG_IPV6) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/dst_ops.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/icmpv6.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/nexthop.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/ieee802154_6lowpan.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/sctp.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/netfilter.h \
    $(wildcard include/config/LWTUNNEL) \
    $(wildcard include/config/NETFILTER_FAMILY_ARP) \
    $(wildcard include/config/NETFILTER_FAMILY_BRIDGE) \
    $(wildcard include/config/NF_DEFRAG_IPV4) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/netfilter_defs.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/netfilter.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/in.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/in.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/socket.h \
  arch/arm/include/generated/uapi/asm/socket.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/asm-generic/socket.h \
  arch/arm/include/generated/uapi/asm/sockios.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/asm-generic/sockios.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/sockios.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/uio.h \
    $(wildcard include/config/ARCH_HAS_UACCESS_FLUSHCACHE) \
    $(wildcard include/config/ARCH_HAS_COPY_MC) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/uio.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/socket.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/conntrack.h \
    $(wildcard include/config/NF_CT_PROTO_DCCP) \
    $(wildcard include/config/NF_CT_PROTO_SCTP) \
    $(wildcard include/config/NF_CT_PROTO_GRE) \
    $(wildcard include/config/NF_CONNTRACK_EVENTS) \
    $(wildcard include/config/NF_CONNTRACK_LABELS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/netfilter/nf_conntrack_tcp.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/netfilter/nf_conntrack_tcp.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/netfilter/nf_conntrack_dccp.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/netfilter/nf_conntrack_tuple_common.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/netfilter/nf_conntrack_common.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/netfilter/nf_conntrack_common.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/netfilter/nf_conntrack_sctp.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/netfilter/nf_conntrack_sctp.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/flow_table.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/nftables.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/xfrm.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/xfrm.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/mpls.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/can.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/xdp.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/smc.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/bpf.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/mctp.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/net_trackers.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/ref_tracker.h \
    $(wildcard include/config/REF_TRACKER) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/stackdepot.h \
    $(wildcard include/config/STACKDEPOT) \
    $(wildcard include/config/STACKDEPOT_MAX_FRAMES) \
    $(wildcard include/config/STACKDEPOT_ALWAYS_INIT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/skbuff.h \
    $(wildcard include/config/BRIDGE_NETFILTER) \
    $(wildcard include/config/NET_TC_SKB_EXT) \
    $(wildcard include/config/MAX_SKB_FRAGS) \
    $(wildcard include/config/NET_SOCK_MSG) \
    $(wildcard include/config/SKB_EXTENSIONS) \
    $(wildcard include/config/WIRELESS) \
    $(wildcard include/config/IPV6_NDISC_NODETYPE) \
    $(wildcard include/config/NETFILTER_XT_TARGET_TRACE) \
    $(wildcard include/config/NET_SWITCHDEV) \
    $(wildcard include/config/NET_REDIRECT) \
    $(wildcard include/config/NETFILTER_SKIP_EGRESS) \
    $(wildcard include/config/SKB_DECRYPTED) \
    $(wildcard include/config/NET_RX_BUSY_POLL) \
    $(wildcard include/config/NETWORK_SECMARK) \
    $(wildcard include/config/DEBUG_NET) \
    $(wildcard include/config/NETWORK_PHY_TIMESTAMPING) \
    $(wildcard include/config/MCTP_FLOWS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/bvec.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/highmem.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/fs.h \
    $(wildcard include/config/READ_ONLY_THP_FOR_FS) \
    $(wildcard include/config/FS_POSIX_ACL) \
    $(wildcard include/config/CGROUP_WRITEBACK) \
    $(wildcard include/config/IMA) \
    $(wildcard include/config/FILE_LOCKING) \
    $(wildcard include/config/FSNOTIFY) \
    $(wildcard include/config/FS_ENCRYPTION) \
    $(wildcard include/config/FS_VERITY) \
    $(wildcard include/config/UNICODE) \
    $(wildcard include/config/QUOTA) \
    $(wildcard include/config/FS_DAX) \
    $(wildcard include/config/BLOCK) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/wait_bit.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kdev_t.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/kdev_t.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/dcache.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rculist_bl.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/list_bl.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/bit_spinlock.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/lockref.h \
    $(wildcard include/config/ARCH_USE_CMPXCHG_LOCKREF) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/stringhash.h \
    $(wildcard include/config/DCACHE_WORD_ACCESS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/path.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/list_lru.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/shrinker.h \
    $(wildcard include/config/SHRINKER_DEBUG) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/semaphore.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/fcntl.h \
    $(wildcard include/config/ARCH_32BIT_OFF_T) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/fcntl.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/uapi/asm/fcntl.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/asm-generic/fcntl.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/openat2.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/migrate_mode.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/percpu-rwsem.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rcuwait.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rcu_sync.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/delayed_call.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/uuid.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/errseq.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/ioprio.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sched/rt.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/iocontext.h \
    $(wildcard include/config/BLK_ICQ) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/ioprio.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/fs_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/mount.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/mnt_idmapping.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rw_hint.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/fs.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/quota.h \
    $(wildcard include/config/QUOTA_NETLINK_INTERFACE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/dqblk_xfs.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/dqblk_v1.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/dqblk_v2.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/dqblk_qtree.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/projid.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/quota.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/cacheflush.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/cacheflush.h \
    $(wildcard include/config/ARM_ERRATA_411920) \
    $(wildcard include/config/CPU_CACHE_VIPT) \
    $(wildcard include/config/OUTER_CACHE) \
    $(wildcard include/config/CPU_ICACHE_MISMATCH_WORKAROUND) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/mm.h \
    $(wildcard include/config/HAVE_ARCH_MMAP_RND_BITS) \
    $(wildcard include/config/HAVE_ARCH_MMAP_RND_COMPAT_BITS) \
    $(wildcard include/config/MEM_SOFT_DIRTY) \
    $(wildcard include/config/ARCH_USES_HIGH_VMA_FLAGS) \
    $(wildcard include/config/ARCH_HAS_PKEYS) \
    $(wildcard include/config/ARCH_PKEY_BITS) \
    $(wildcard include/config/X86_USER_SHADOW_STACK) \
    $(wildcard include/config/X86) \
    $(wildcard include/config/PARISC) \
    $(wildcard include/config/SPARC64) \
    $(wildcard include/config/ARM64_MTE) \
    $(wildcard include/config/HAVE_ARCH_USERFAULTFD_MINOR) \
    $(wildcard include/config/PPC32) \
    $(wildcard include/config/SHMEM) \
    $(wildcard include/config/MIGRATION) \
    $(wildcard include/config/ARCH_HAS_GIGANTIC_PAGE) \
    $(wildcard include/config/ARCH_HAS_PTE_SPECIAL) \
    $(wildcard include/config/ARCH_SUPPORTS_PMD_PFNMAP) \
    $(wildcard include/config/ARCH_SUPPORTS_PUD_PFNMAP) \
    $(wildcard include/config/ARCH_HAS_PTE_DEVMAP) \
    $(wildcard include/config/SPLIT_PTE_PTLOCKS) \
    $(wildcard include/config/HIGHPTE) \
    $(wildcard include/config/DEBUG_VM_RB) \
    $(wildcard include/config/PAGE_POISONING) \
    $(wildcard include/config/INIT_ON_ALLOC_DEFAULT_ON) \
    $(wildcard include/config/INIT_ON_FREE_DEFAULT_ON) \
    $(wildcard include/config/DEBUG_PAGEALLOC) \
    $(wildcard include/config/ARCH_WANT_OPTIMIZE_DAX_VMEMMAP) \
    $(wildcard include/config/HUGETLBFS) \
    $(wildcard include/config/MAPPING_DIRTY_HELPERS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/pgalloc_tag.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/mmap_lock.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/range.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/page_ext.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/stacktrace.h \
    $(wildcard include/config/ARCH_STACKWALK) \
    $(wildcard include/config/STACKTRACE) \
    $(wildcard include/config/HAVE_RELIABLE_STACKTRACE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/page_ref.h \
    $(wildcard include/config/DEBUG_PAGE_REF) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/pgtable.h \
    $(wildcard include/config/PGTABLE_LEVELS) \
    $(wildcard include/config/ARCH_HAS_NONLEAF_PMD_YOUNG) \
    $(wildcard include/config/ARCH_HAS_HW_PTE_YOUNG) \
    $(wildcard include/config/GUP_GET_PXX_LOW_HIGH) \
    $(wildcard include/config/ARCH_WANT_PMD_MKWRITE) \
    $(wildcard include/config/HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD) \
    $(wildcard include/config/HAVE_ARCH_SOFT_DIRTY) \
    $(wildcard include/config/ARCH_ENABLE_THP_MIGRATION) \
    $(wildcard include/config/HAVE_ARCH_HUGE_VMAP) \
    $(wildcard include/config/X86_ESPFIX64) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/pgtable_uffd.h \
    $(wildcard include/config/HAVE_ARCH_USERFAULTFD_WP) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/page_table_check.h \
    $(wildcard include/config/PAGE_TABLE_CHECK) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/memremap.h \
    $(wildcard include/config/DEVICE_PRIVATE) \
    $(wildcard include/config/PCI_P2PDMA) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/ioport.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/huge_mm.h \
    $(wildcard include/config/PGTABLE_HAS_HUGE_LEAVES) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/vmstat.h \
    $(wildcard include/config/VM_EVENT_COUNTERS) \
    $(wildcard include/config/DEBUG_TLBFLUSH) \
    $(wildcard include/config/PER_VMA_LOCK_STATS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/vm_event_item.h \
    $(wildcard include/config/MEMORY_BALLOON) \
    $(wildcard include/config/BALLOON_COMPACTION) \
    $(wildcard include/config/DEBUG_STACK_USAGE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/glue-cache.h \
    $(wildcard include/config/CPU_CACHE_V4) \
    $(wildcard include/config/CPU_CACHE_V4WB) \
    $(wildcard include/config/CACHE_B15_RAC) \
    $(wildcard include/config/CPU_CACHE_NOP) \
    $(wildcard include/config/CPU_CACHE_V7) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/cachetype.h \
    $(wildcard include/config/CPU_CACHE_VIVT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/OUTER_CACHE_SYNC) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kmsan.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/dma-direction.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/hardirq.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/context_tracking_state.h \
    $(wildcard include/config/CONTEXT_TRACKING_USER) \
    $(wildcard include/config/CONTEXT_TRACKING) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/ftrace_irq.h \
    $(wildcard include/config/HWLAT_TRACER) \
    $(wildcard include/config/OSNOISE_TRACER) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/vtime.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING) \
    $(wildcard include/config/IRQ_TIME_ACCOUNTING) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/hardirq.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/irq.h \
    $(wildcard include/config/SPARSE_IRQ) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/hardirq.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/irq.h \
    $(wildcard include/config/GENERIC_IRQ_EFFECTIVE_AFF_MASK) \
    $(wildcard include/config/GENERIC_IRQ_IPI) \
    $(wildcard include/config/IRQ_DOMAIN_HIERARCHY) \
    $(wildcard include/config/DEPRECATED_IRQ_CPU_ONOFFLINE) \
    $(wildcard include/config/GENERIC_IRQ_MIGRATION) \
    $(wildcard include/config/GENERIC_PENDING_IRQ) \
    $(wildcard include/config/HARDIRQS_SW_RESEND) \
    $(wildcard include/config/GENERIC_IRQ_LEGACY) \
    $(wildcard include/config/GENERIC_IRQ_CHIP) \
    $(wildcard include/config/GENERIC_IRQ_MULTI_HANDLER) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/irqhandler.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/irqreturn.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/io.h \
    $(wildcard include/config/HAS_IOPORT_MAP) \
    $(wildcard include/config/PCI) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/io.h \
    $(wildcard include/config/PCMCIA) \
    $(wildcard include/config/NEED_MACH_IO_H) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/NO_GENERIC_PCI_IOPORT_MAP) \
    $(wildcard include/config/GENERIC_PCI_IOMAP) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/io.h \
    $(wildcard include/config/GENERIC_IOMAP) \
    $(wildcard include/config/TRACE_MMIO_ACCESS) \
    $(wildcard include/config/GENERIC_IOREMAP) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/logic_pio.h \
    $(wildcard include/config/INDIRECT_PIO) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/fwnode.h \
  arch/arm/include/generated/asm/irq_regs.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/irq_regs.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/irqdesc.h \
    $(wildcard include/config/GENERIC_IRQ_STAT_SNAPSHOT) \
    $(wildcard include/config/PM_SLEEP) \
    $(wildcard include/config/GENERIC_IRQ_DEBUGFS) \
    $(wildcard include/config/IRQ_DOMAIN) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/hw_irq.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/highmem-internal.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/checksum.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/checksum.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/dma-mapping.h \
    $(wildcard include/config/DMA_API_DEBUG) \
    $(wildcard include/config/HAS_DMA) \
    $(wildcard include/config/DMA_NEED_SYNC) \
    $(wildcard include/config/NEED_DMA_MAP_STATE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/device.h \
    $(wildcard include/config/GENERIC_MSI_IRQ) \
    $(wildcard include/config/ENERGY_MODEL) \
    $(wildcard include/config/PINCTRL) \
    $(wildcard include/config/ARCH_HAS_DMA_OPS) \
    $(wildcard include/config/DMA_DECLARE_COHERENT) \
    $(wildcard include/config/DMA_CMA) \
    $(wildcard include/config/SWIOTLB) \
    $(wildcard include/config/SWIOTLB_DYNAMIC) \
    $(wildcard include/config/ARCH_HAS_SYNC_DMA_FOR_DEVICE) \
    $(wildcard include/config/ARCH_HAS_SYNC_DMA_FOR_CPU) \
    $(wildcard include/config/ARCH_HAS_SYNC_DMA_FOR_CPU_ALL) \
    $(wildcard include/config/DMA_OPS_BYPASS) \
    $(wildcard include/config/IOMMU_DMA) \
    $(wildcard include/config/PM) \
    $(wildcard include/config/OF) \
    $(wildcard include/config/DEVTMPFS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/dev_printk.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/energy_model.h \
    $(wildcard include/config/SCHED_DEBUG) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sched/cpufreq.h \
    $(wildcard include/config/CPU_FREQ) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sched/topology.h \
    $(wildcard include/config/SCHED_CLUSTER) \
    $(wildcard include/config/SCHED_MC) \
    $(wildcard include/config/CPU_FREQ_GOV_SCHEDUTIL) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sched/idle.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sched/sd_flags.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/klist.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/pm.h \
    $(wildcard include/config/VT_CONSOLE_SLEEP) \
    $(wildcard include/config/CXL_SUSPEND) \
    $(wildcard include/config/PM_CLK) \
    $(wildcard include/config/PM_GENERIC_DOMAINS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/device/bus.h \
    $(wildcard include/config/ACPI) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/device/class.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/device/devres.h \
    $(wildcard include/config/HAS_IOMEM) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/device/driver.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/device.h \
    $(wildcard include/config/ARM_DMA_USE_IOMMU) \
    $(wildcard include/config/ARCH_OMAP) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/pm_wakeup.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/scatterlist.h \
    $(wildcard include/config/NEED_SG_DMA_LENGTH) \
    $(wildcard include/config/NEED_SG_DMA_FLAGS) \
    $(wildcard include/config/DEBUG_SG) \
    $(wildcard include/config/SGL_ALLOC) \
    $(wildcard include/config/ARCH_NO_SG_CHAIN) \
    $(wildcard include/config/SG_POOL) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/mem_encrypt.h \
    $(wildcard include/config/ARCH_HAS_MEM_ENCRYPT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/netdev_features.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/flow_dissector.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/if_ether.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/pkt_cls.h \
    $(wildcard include/config/NET_CLS_ACT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/pkt_sched.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/if_packet.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/net_debug.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netmem.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/seq_file_net.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/seq_file.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/string_helpers.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/ctype.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/string_choices.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netprio_cgroup.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/cgroup.h \
    $(wildcard include/config/DEBUG_CGROUP_REF) \
    $(wildcard include/config/CGROUP_CPUACCT) \
    $(wildcard include/config/SOCK_CGROUP_DATA) \
    $(wildcard include/config/CGROUP_DATA) \
    $(wildcard include/config/CGROUP_BPF) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/cgroupstats.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/taskstats.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/user_namespace.h \
    $(wildcard include/config/INOTIFY_USER) \
    $(wildcard include/config/FANOTIFY) \
    $(wildcard include/config/BINFMT_MISC) \
    $(wildcard include/config/PERSISTENT_KEYRINGS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kernel_stat.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/interrupt.h \
    $(wildcard include/config/IRQ_FORCED_THREADING) \
    $(wildcard include/config/GENERIC_IRQ_PROBE) \
    $(wildcard include/config/IRQ_TIMINGS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/sections.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/sections.h \
    $(wildcard include/config/HAVE_FUNCTION_DESCRIPTORS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/cgroup-defs.h \
    $(wildcard include/config/CGROUP_NET_CLASSID) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/bpf-cgroup-defs.h \
    $(wildcard include/config/BPF_LSM) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/psi_types.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kthread.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/cgroup_subsys.h \
    $(wildcard include/config/CGROUP_DEVICE) \
    $(wildcard include/config/CGROUP_FREEZER) \
    $(wildcard include/config/CGROUP_PERF) \
    $(wildcard include/config/CGROUP_HUGETLB) \
    $(wildcard include/config/CGROUP_PIDS) \
    $(wildcard include/config/CGROUP_RDMA) \
    $(wildcard include/config/CGROUP_MISC) \
    $(wildcard include/config/CGROUP_DEBUG) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/cgroup_refcnt.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/neighbour.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/netlink.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/scm.h \
    $(wildcard include/config/SECURITY_NETWORK) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/net.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sockptr.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/net.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/file.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/security.h \
    $(wildcard include/config/SECURITY_INFINIBAND) \
    $(wildcard include/config/SECURITY_NETWORK_XFRM) \
    $(wildcard include/config/SECURITY_PATH) \
    $(wildcard include/config/SECURITYFS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kernel_read_file.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/bpf.h \
    $(wildcard include/config/BPF_JIT) \
    $(wildcard include/config/FINEIBT) \
    $(wildcard include/config/BPF_JIT_ALWAYS_ON) \
    $(wildcard include/config/INET) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/bpf.h \
    $(wildcard include/config/BPF_LIRC_MODE2) \
    $(wildcard include/config/EFFICIENT_UNALIGNED_ACCESS) \
    $(wildcard include/config/BPF_KPROBE_OVERRIDE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/bpf_common.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/filter.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/kallsyms.h \
    $(wildcard include/config/KALLSYMS_ALL) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/bpfptr.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/btf.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/bsearch.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/btf_ids.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/btf.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rcupdate_trace.h \
    $(wildcard include/config/TASKS_TRACE_RCU_READ_MB) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/static_call.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/cpu.h \
    $(wildcard include/config/GENERIC_CPU_DEVICES) \
    $(wildcard include/config/PM_SLEEP_SMP) \
    $(wildcard include/config/PM_SLEEP_SMP_NONZERO_CPU) \
    $(wildcard include/config/ARCH_HAS_CPU_FINALIZE_INIT) \
    $(wildcard include/config/CPU_MITIGATIONS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/node.h \
    $(wildcard include/config/HMEM_REPORTING) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/cpuhotplug.h \
    $(wildcard include/config/HOTPLUG_CORE_SYNC_DEAD) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/cpuhplock.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/cpu_smt.h \
    $(wildcard include/config/HOTPLUG_SMT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/memcontrol.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/page_counter.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/vmpressure.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/eventfd.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/eventfd.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/writeback.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/flex_proportions.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/backing-dev-defs.h \
    $(wildcard include/config/DEBUG_FS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/blk_types.h \
    $(wildcard include/config/FAIL_MAKE_REQUEST) \
    $(wildcard include/config/BLK_CGROUP_IOCOST) \
    $(wildcard include/config/BLK_INLINE_ENCRYPTION) \
    $(wildcard include/config/BLK_DEV_INTEGRITY) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/pagevec.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/bio.h \
    $(wildcard include/config/BLK_DEV_ZONED) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/mempool.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/cfi.h \
    $(wildcard include/config/CFI_CLANG) \
  arch/arm/include/generated/asm/cfi.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/cfi.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/bpf_types.h \
    $(wildcard include/config/NETFILTER_BPF_LINK) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/lsm.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/unistd.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/unistd.h \
    $(wildcard include/config/OABI_COMPAT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/uapi/asm/unistd.h \
  arch/arm/include/generated/uapi/asm/unistd-eabi.h \
  arch/arm/include/generated/asm/unistd-nr.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/compat.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/compat.h \
    $(wildcard include/config/ARCH_HAS_SYSCALL_WRAPPER) \
    $(wildcard include/config/X86_X32_ABI) \
    $(wildcard include/config/COMPAT_OLD_SIGACTION) \
    $(wildcard include/config/ODD_RT_SIGACTION) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/sem.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/sem.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/ipc.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/ipc.h \
  arch/arm/include/generated/uapi/asm/ipcbuf.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/asm-generic/ipcbuf.h \
  arch/arm/include/generated/uapi/asm/sembuf.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/asm-generic/sembuf.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/if.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/hdlc/ioctl.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/aio_abi.h \
  arch/arm/include/generated/asm/compat.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/asm-generic/compat.h \
    $(wildcard include/config/COMPAT_FOR_U64_ALIGNMENT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/netlink.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/netdevice.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/if_ether.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/if_link.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/if_link.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/if_bonding.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/netdev.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/hashtable.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/inetdevice.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/ip.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/ip.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rtnetlink.h \
    $(wildcard include/config/NET_INGRESS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/rtnetlink.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/if_addr.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/circ_buf.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/etherdevice.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/crc32.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/bitrev.h \
    $(wildcard include/config/HAVE_ARCH_BITREVERSE) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/bitrev.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/wireless.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/wireless.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/iw_handler.h \
    $(wildcard include/config/WEXT_PRIV) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/addrconf.h \
    $(wildcard include/config/IPV6_MIP6) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/ipv6.h \
    $(wildcard include/config/IPV6_ROUTER_PREF) \
    $(wildcard include/config/IPV6_ROUTE_INFO) \
    $(wildcard include/config/IPV6_OPTIMISTIC_DAD) \
    $(wildcard include/config/IPV6_SEG6_HMAC) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/ipv6.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/tcp.h \
    $(wildcard include/config/TCP_AO) \
    $(wildcard include/config/BPF) \
    $(wildcard include/config/TCP_MD5SIG) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/win_minmax.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/sock.h \
    $(wildcard include/config/SOCK_RX_QUEUE_MAPPING) \
    $(wildcard include/config/SOCK_VALIDATE_XMIT) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rculist_nulls.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/poll.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/poll.h \
  arch/arm/include/generated/uapi/asm/poll.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/asm-generic/poll.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/eventpoll.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/indirect_call_wrapper.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/dst.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rcuref.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/neighbour.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/rtnetlink.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netlink.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/tcp_states.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/net_tstamp.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/net_tstamp.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/l3mdev.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/fib_rules.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/fib_rules.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/fib_notifier.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/inet_connection_sock.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/inet_sock.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/jhash.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/request_sock.h \
    $(wildcard include/config/SYN_COOKIES) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/rstreason.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/mptcp.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/mptcp_pm.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/netns/hash.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/inet_timewait_sock.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/timewait_sock.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/tcp.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/udp.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/udp.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/if_inet6.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/ipv6.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/jump_label_ratelimit.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/inet_dscp.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/if_arp.h \
    $(wildcard include/config/FIREWIRE_NET) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/if_arp.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/vmalloc.h \
    $(wildcard include/config/HAVE_ARCH_HUGE_VMALLOC) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/arch/arm/include/asm/vmalloc.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/ieee80211_radiotap.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/ieee80211.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/cfg80211.h \
    $(wildcard include/config/NL80211_TESTMODE) \
    $(wildcard include/config/CFG80211_WEXT) \
    $(wildcard include/config/CFG80211_DEBUGFS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/ethtool.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/ethtool.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/rfkill.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/debugfs.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/nl80211.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/rfkill.h \
    $(wildcard include/config/RFKILL) \
    $(wildcard include/config/RFKILL_LEDS) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/leds.h \
    $(wildcard include/config/LEDS_TRIGGERS) \
    $(wildcard include/config/LEDS_BRIGHTNESS_HW_CHANGED) \
    $(wildcard include/config/LEDS_TRIGGER_DISK) \
    $(wildcard include/config/LEDS_TRIGGER_MTD) \
    $(wildcard include/config/LEDS_TRIGGER_CAMERA) \
    $(wildcard include/config/LEDS_GPIO_REGISTER) \
    $(wildcard include/config/LEDS_TRIGGER_CPU) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/dt-bindings/leds/common.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/net/regulatory.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/usb.h \
    $(wildcard include/config/USB_MON) \
    $(wildcard include/config/USB_LED_TRIG) \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/mod_devicetable.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/mei.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/mei_uuid.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/usb/ch9.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/uapi/linux/usb/ch9.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/pm_runtime.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/../os_dep/linux/rtw_rhashtable.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_byteorder.h \
    $(wildcard include/config/PLATFORM_MSTAR389) \
  /home/rtkbase/rtkbase/rtl8188eus/include/byteorder/little_endian.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/wlan_bssdef.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/wifi.h \
    $(wildcard include/config/APPEND_VENDOR_IE_ENABLE) \
    $(wildcard include/config/RTL8712FW) \
  /home/rtkbase/rtkbase/rtl8188eus/include/ieee80211.h \
    $(wildcard include/config/RTL8711FW) \
    $(wildcard include/config/RTW_WNM) \
  /home/rtkbase/rtkbase/rtl8188eus/include/drv_types_linux.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_debug.h \
    $(wildcard include/config/RTW_DEBUG) \
    $(wildcard include/config/RF4CE_COEXIST) \
    $(wildcard include/config/P2P_WOWLAN) \
    $(wildcard include/config/DBG_RF_CAL) \
  /home/rtkbase/rtkbase/rtl8188eus/include/cmn_info/rtw_sta_info.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_rf.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_ht.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_cmd.h \
    $(wildcard include/config/FW_C2H_REG) \
    $(wildcard include/config/C2H_WK) \
  /home/rtkbase/rtkbase/rtl8188eus/include/cmd_osdep.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_security.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_xmit.h \
    $(wildcard include/config/TX_AGGREGATION) \
    $(wildcard include/config/PLATFORM_ARM_SUNxI) \
    $(wildcard include/config/PLATFORM_ARM_SUN6I) \
    $(wildcard include/config/PLATFORM_ARM_SUN7I) \
    $(wildcard include/config/PLATFORM_ARM_SUN8I) \
    $(wildcard include/config/PLATFORM_ARM_SUN50IW1P1) \
    $(wildcard include/config/PLATFORM_MSTAR) \
    $(wildcard include/config/LPS_POFF) \
    $(wildcard include/config/TRX_BD_ARCH) \
    $(wildcard include/config/64BIT_DMA) \
    $(wildcard include/config/SDIO_TX_TASKLET) \
  /home/rtkbase/rtkbase/rtl8188eus/include/xmit_osdep.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_recv.h \
    $(wildcard include/config/PLATFORM_RTK390X) \
    $(wildcard include/config/RX_INDICATE_QUEUE) \
    $(wildcard include/config/SIGNAL_SCALE_MAPPING) \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_rm.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/recv_osdep.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_efuse.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_sreset.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/hal_intf.h \
    $(wildcard include/config/LPS_PG) \
    $(wildcard include/config/LPS_LCLK_WD_TIMER) \
    $(wildcard include/config/RFKILL_POLL) \
  /home/rtkbase/rtkbase/rtl8188eus/include/hal_com.h \
    $(wildcard include/config/BCN_RECOVERY) \
    $(wildcard include/config/BCN_XMIT_PROTECT) \
  /home/rtkbase/rtkbase/rtl8188eus/include/HalVerDef.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/hal_pg.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/hal_phy.h \
    $(wildcard include/config/RF_SHADOW_RW) \
  /home/rtkbase/rtkbase/rtl8188eus/include/hal_phy_reg.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/hal_com_reg.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/hal_com_phycfg.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/../hal/hal_com_c2h.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/hal_com_h2c.h \
    $(wildcard include/config/RA_DBG_CMD) \
  /home/rtkbase/rtkbase/rtl8188eus/include/hal_com_led.h \
    $(wildcard include/config/RTW_SW_LED_TRX_DA_CLASSIFY) \
  /home/rtkbase/rtkbase/rtl8188eus/include/../hal/hal_dm.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_qos.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_pwrctrl.h \
    $(wildcard include/config/PLATFORM_ANDROID_INTEL_X86) \
    $(wildcard include/config/LPS_RPWM_TIMER) \
    $(wildcard include/config/RTW_CFGVEDNOR_LLSTATS) \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_mlme.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/mlme_osdep.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_io.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_ioctl.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_ioctl_set.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_ioctl_query.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_ioctl_rtl.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/osdep_intf.h \
    $(wildcard include/config/R871X_TEST) \
  /home/rtkbase/rtkbase/rtl8188eus/include/../os_dep/linux/rtw_proc.h \
  /usr/src/linux-headers-6.12.75+rpt-common-rpi/include/linux/proc_fs.h \
    $(wildcard include/config/PROC_PID_ARCH_STATUS) \
  /home/rtkbase/rtkbase/rtl8188eus/include/../os_dep/linux/ioctl_cfg80211.h \
    $(wildcard include/config/RTW_DYNAMIC_NDEV) \
    $(wildcard include/config/RADIO_WORK) \
  /home/rtkbase/rtkbase/rtl8188eus/include/../os_dep/linux/rtw_cfgvendor.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_eeprom.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/sta_info.h \
    $(wildcard include/config/RTW_MACADDR_ACL) \
    $(wildcard include/config/RTW_PRE_LINK_STA) \
    $(wildcard include/config/ATMEL_RC_PATCH) \
    $(wildcard include/config/AUTO_AP_MODE) \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_event.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_mlme_ext.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_mi.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_ap.h \
    $(wildcard include/config/BMC_TX_RATE_SELECT) \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_version.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_odm.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/../hal/phydm/phydm_types.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_p2p.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_mp.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_br_ext.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_iol.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/ip.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/if_ether.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/ethernet.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/circ_buf.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_android.h \
    $(wildcard include/config/PLATFORM_INTEL_BYT) \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_btcoex_wifionly.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtw_btcoex.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/usb_osintf.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/usb_vendor_req.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/usb_ops.h \
    $(wildcard include/config/RTL8814) \
  /home/rtkbase/rtkbase/rtl8188eus/include/usb_ops_linux.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/usb_hal.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_features.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_features_ce.h \
    $(wildcard include/config/DYNAMIC_TX_TWR) \
    $(wildcard include/config/HL_SMART_ANTENNA_TYPE1) \
    $(wildcard include/config/HL_SMART_ANTENNA_TYPE2) \
    $(wildcard include/config/CUMITEK_SMART_ANTENNA) \
    $(wildcard include/config/RA_FW_DBG_CODE) \
    $(wildcard include/config/ANT_DETECTION) \
    $(wildcard include/config/PATH_DIVERSITY) \
    $(wildcard include/config/RA_DYNAMIC_RTY_LIMIT) \
    $(wildcard include/config/BB_TXBF_API) \
    $(wildcard include/config/PHYDM_DEBUG_FUNCTION) \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/halrf/halrf_features.h \
    $(wildcard include/config/HALRF_POWERTRACKING) \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm.h \
    $(wildcard include/config/BB_PHY_REG) \
    $(wildcard include/config/BB_AGC_TAB) \
    $(wildcard include/config/BB_AGC_TAB_2G) \
    $(wildcard include/config/BB_AGC_TAB_5G) \
    $(wildcard include/config/BB_PHY_REG_PG) \
    $(wildcard include/config/BB_PHY_REG_MP) \
    $(wildcard include/config/BB_AGC_TAB_DIFF) \
    $(wildcard include/config/RF_RADIO) \
    $(wildcard include/config/RF_TXPWR_LMT) \
    $(wildcard include/config/FW_NIC) \
    $(wildcard include/config/FW_NIC_2) \
    $(wildcard include/config/FW_AP) \
    $(wildcard include/config/FW_AP_2) \
    $(wildcard include/config/FW_MP) \
    $(wildcard include/config/FW_WOWLAN) \
    $(wildcard include/config/FW_WOWLAN_2) \
    $(wildcard include/config/FW_AP_WOWLAN) \
    $(wildcard include/config/FW_BT) \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_pre_define.h \
    $(wildcard include/config/PHYSTS_3RD_TYPE) \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_dig.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_pathdiv.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_antdiv.h \
    $(wildcard include/config/WLAN_HAL) \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_soml.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_smt_ant.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_antdect.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_rainfo.h \
    $(wildcard include/config/RA_DYNAMIC_RATE_ID) \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_dynamictxpower.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_cfotracking.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_adaptivity.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_dfs.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_ccx.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/txbf/phydm_hal_txbf_api.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_adc_sampling.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_dynamic_rx_path.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_psd.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_primary_cca.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_cck_pd.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_rssi_monitor.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_auto_dbg.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_math_lib.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_noisemonitor.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_api.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_pow_train.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_beamforming.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/txbf/halcomtxbf.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/txbf/haltxbfjaguar.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/txbf/haltxbf8192e.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/txbf/haltxbf8814a.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/txbf/haltxbf8822b.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/txbf/haltxbfinterface.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_regtable.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/halrf/halrf_iqk.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/halrf/halrf.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/halrf/halrf_psd.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/halrf/halrf_powertracking.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/halrf/halphyrf_ce.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/halrf/halrf_kfree.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/halrf/halrf_powertracking_ce.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_hwconfig.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_phystatus.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_debug.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_regdefine11ac.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_regdefine11n.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_interface.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm_reg.h \
    $(wildcard include/config/WLAN_HAL_8814AE) \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/rtl8188e/hal8188erateadaptive.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/rtl8188e/halhwimg8188e_mac.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/rtl8188e/halhwimg8188e_rf.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/rtl8188e/halhwimg8188e_bb.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/rtl8188e/phydm_regconfig8188e.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/rtl8188e/phydm_rtl8188e.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/rtl8188e/hal8188ereg.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/rtl8188e/version_rtl8188e.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtl8188e_hal.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/hal_data.h \
    $(wildcard include/config/PCI_DYNAMIC_ASPM) \
  /home/rtkbase/rtkbase/rtl8188eus/include/../hal/phydm/phydm_precomp.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtl8188e_spec.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/Hal8188EPhyReg.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/Hal8188EPhyCfg.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtl8188e_rf.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtl8188e_dm.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtl8188e_recv.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtl8188e_xmit.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtl8188e_cmd.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtl8188e_led.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/Hal8188EPwrSeq.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/HalPwrSeqCmd.h \
  /home/rtkbase/rtkbase/rtl8188eus/include/rtl8188e_sreset.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/halrf/rtl8188e/halrf_8188e_ce.h \
  /home/rtkbase/rtkbase/rtl8188eus/hal/phydm/halrf/rtl8188e/../halphyrf_ce.h \

/home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm.o: $(deps_/home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm.o)

$(deps_/home/rtkbase/rtkbase/rtl8188eus/hal/phydm/phydm.o):

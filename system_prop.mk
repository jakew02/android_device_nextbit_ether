#
# system.prop for plutonium
#
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
    rild.libargs=-d /dev/smd0 \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3="" \
    ril.subscription.types=NV,RUIM \
    DEVICE_PROVISIONED=1

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    debug.composition.type=c2d \
    persist.hwc.mdpcomp.enable=true \
    persist.mdpcomp.4k2kSplit=1 \
    persist.mdpcomp_perfhint=50 \
    debug.mdpcomp.logs=0 \
    persist.metadata_dynfps.disable=true \
    persist.hwc.ptor.enable=true \
    dalvik.vm.heapsize=36m \
    dev.pm.dyn_samplingrate=1 \
    persist.demo.hdmirotationlock=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hdmi.enable=true \
    persist.speaker.prot.enable=false \
    persist.spkr.cal.duration=0 \
    qcom.hw.aac.encoder=true

#
# system props for the cne module
#
PRODUCT_PROPERTY_OVERRIDES += \
    persist.cne.feature=1

# system props for setting mbn file location
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.app_hw_mbn_path=/firmware/image/modem_pr/mcfg/configs/mcfg_hw/generic/common/MSM8994/LA

#system props for the MM modules
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-scan=true \
    mmp.enable.3g2=true \
    mm.enable.smoothstreaming=true \
    media.aac_51_output_enabled=true \
    av.debug.disable.pers.cache=true

#3379827: Decimal sum after adding WAV parser flag
#37491 is decimal sum of supported codecs in AAL
#codecs: DivX DivXHD AVI AC3 ASF AAC QCP DTS 3G2 MP2TS
PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.qcom_parser=3379827

# Enable AwesomePlayer stats
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.sf.statistics=1

# Print clip name being played
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.log-uri=1

# VIDC: debug_levels
# 1:ERROR 2:HIGH 4:LOW 0:NOLOGS 7:AllLOGS
PRODUCT_PROPERTY_OVERRIDES += \
    vidc.debug.level=1

# Additional i/p buffer in case of encoder DCVS
PRODUCT_PROPERTY_OVERRIDES += \
    vidc.enc.dcvs.extra-buff-count=2

#
# system props for the data modules
#
PRODUCT_PROPERTY_OVERRIDES += \
    ro.use_data_netmgrd=true
    persist.data.netmgrd.qos.enable=true
    persist.data.mode=concurrent
    ro.data.large_tcp_window_size=true

#system props for time-services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

#
# system prop for opengles version
#
# 196608 is decimal for 0x30000 to report major/minor versions as 3/0
# 196609 is decimal for 0x30001 to report major/minor versions as 3/1
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196609

# System property for cabl
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.cabl=2

#
# System props for telephony
# System prop to turn on CdmaLTEPhone always
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnGsmDevice=1

#
# System props for bluetooth
# System prop to turn on hfp client
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.hfp.client=1

# Set Bluetooth transport
# initialization timeout
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.enable_timeout_ms=12000

#Simulate sdcard on /data/media
#
PRODUCT_PROPERTY_OVERRIDES += \
    persist.fuse_sdcard=true

#system prop for Bluetooth SOC type
PRODUCT_PROPERTY_OVERRIDES += \
    qcom.bluetooth.soc=rome

#system prop for wipower support
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.wipower=true

#Set this true as ROME which is programmed
#as embedded wipower mode by deafult
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.emb_wp_mode=true

#
#snapdragon value add features
#
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.ssr=false \
    persist.audio.ssr.3mic=false \
    ro.qc.sdk.audio.fluencetype=none \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.sensors.gestures=true \
    ro.qc.sdk.gestures.camera=false \
    ro.qc.sdk.camera.facialproc=false \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0 \
    tunnel.audio.encode=false \
    audio.offload.gapless.enabled=true

#Buffer size in kbytes for compress offload playback
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.buffer.size.kb=32

#Enable offload audio video playback by default
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.video=true

#Enable 16 bit PCM offload by default
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.pcm.16bit.enable=true

#Enable multi offload by default
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.multiple.enabled=false

#Enable 24 bit PCM offload by default
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.pcm.24bit.enable=true

#Enable music through deep buffer
PRODUCT_PROPERTY_OVERRIDES += \
    audio.deep_buffer.media=true

#property to enable VDS WFD solution
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.enable_vds=1

#property for vendor specific library
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.at_library=libqti-at.so \
    ro.vendor.gt_library=libqti-gt.so \
    sys.games.gt.prof=0

#hwui properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=72 \
    ro.hwui.layer_cache_size=48 \
    ro.hwui.r_buffer_cache_size=8 \
    ro.hwui.path_cache_size=32 \
    ro.hwui.gradient_cache_size=1 \
    ro.hwui.drop_shadow_cache_size=6 \
    ro.hwui.texture_cache_flushrate=0.4 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_small_cache_height=1024 \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.text_large_cache_height=1024

#enable voice path for PCM VoIP by default
PRODUCT_PROPERTY_OVERRIDES += \
    use.voice.path.for.pcm.voip=true

#selects CoreSight configuration to enable
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.coresight.config=stm-events

#
# ADDITIONAL_BUILD_PROPERTIES
#
PRODUCT_PROPERTY_OVERRIDES += \
    persist.nfc.smartcard.config=SIM1,SIM2,eSE1 \
    drm.service.enabled=true \
    ro.sf.lcd_density=480 \
    audio.offload.buffer.size.kb=64 \
    persist.env.fastdorm.enabled=true \
    persist.data.tcp_rst_drop=true \
    ro.vendor.extension_library=libqti-perfd-client.so \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.custom_ecc=1 \
    persist.radio.sib16_support=1 \
    ro.frp.pst=/dev/block/bootdevice/by-name/config \
    af.fast_track_multiplier=1 \
    audio_hal.period_size=192 \
    persist.gps.qc_nlp_in_use=0 \
    ro.gps.agps_provider=1


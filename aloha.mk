PRODUCT_PACKAGES := \
    Email \
    IM \
    VoiceDialer \
    librs_jni \
    GoogleContactsProvider 
    


# aloha uses high-density artwork where available
PRODUCT_LOCALES += hdpi
#PRODUCT_LOCALES += en_US
   
DEVICE_PACKAGE_OVERLAYS := device/lg/aloha/overlay 
#DEVICE_PACKAGE_OVERLAYS := device/htc/sapphire/overlay   
#Wifi properties
PRODUCT_PROPERTY_OVERRIDES := \
   wifi.interface=wlan0 \
   wifi.supplicant_scan_interval=20 \
   keyguard.no_require_sim=true \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=true \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=true \
    media.stagefright.enable-scan=true \
    media.stagefright.enable-http=false \
    ro.config.sync=yes
    


PRODUCT_COPY_FILES := \
   device/lg/aloha/vold.fstab:system/etc/vold.fstab \
   device/lg/aloha/proprietary/AudioFilter.csv:system/etc/AudioFilter.csv \
   device/lg/aloha/proprietary/gps.conf:system/etc/gps.conf \
   device/lg/aloha/apns-conf.xml:system/etc/apns-conf.xml \
   device/lg/aloha/proprietary/system/bin/BCM4329B1_002.002.023.0313.0333.hcd:system/bin/BCM4329B1_002.002.023.0313.0333.hcd \
   device/lg/aloha/proprietary/modules/wireless.ko:system/lib/modules/wireless.ko \
   device/lg/aloha/proprietary/wl/nvram.txt:system/etc/wl/nvram.txt \
   device/lg/aloha/proprietary/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \
   device/lg/aloha/proprietary/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
   device/lg/aloha/proprietary/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin \
   device/lg/aloha/proprietary/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
   device/lg/aloha/proprietary/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
   device/lg/aloha/proprietary/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
   device/lg/aloha/proprietary/egl/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \
   device/lg/aloha/proprietary/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
   device/lg/aloha/proprietary/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
   frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    device/lg/aloha/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
   device/lg/aloha/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
   device/lg/aloha/proprietary/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
   device/lg/aloha/proprietary/permissions/com.qualcomm.location.vzw_library.xml:system/etc/permissions/com.qualcomm.location.vzw_library.xml \
   device/lg/aloha/proprietary/permissions/qcrilhook.xml:system/etc/permissions/qcrilhook.xml \
   device/lg/aloha/proprietary/permissions/android.hardware.location.network.xml:system/etc/permissions/android.hardware.location.network.xml \
   device/lg/aloha/proprietary/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
   	device/lg/aloha/proprietary/lib/libauth.so:system/lib/libauth.so \
   	device/lg/aloha/proprietary/lib/libcm.so:system/lib/libcm.so \
	device/lg/aloha/proprietary/lib/libdiag.so:system/lib/libdiag.so \
	device/lg/aloha/proprietary/lib/libdll.so:system/lib/libdll.so \
	device/lg/aloha/proprietary/lib/libdsm.so:system/lib/libdsm.so \
	device/lg/aloha/proprietary/lib/libdss.so:system/lib/libdss.so \
	device/lg/aloha/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
	device/lg/aloha/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
	device/lg/aloha/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
	device/lg/aloha/proprietary/lib/libnv.so:system/lib/libnv.so \
	device/lg/aloha/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so\
	device/lg/aloha/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so\
	device/lg/aloha/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
	device/lg/aloha/proprietary/lib/libqmi.so:system/lib/libqmi.so \
	device/lg/aloha/proprietary/lib/libqueue.so:system/lib/libqueue.so \
	device/lg/aloha/proprietary/lib/libsnd.so:system/lib/libsnd.so \
	device/lg/aloha/proprietary/lib/libwms.so:system/lib/libwms.so \
	device/lg/aloha/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \
   	device/lg/aloha/proprietary/system/bin/akmd2:system/bin/akmd2 \
	device/lg/aloha/proprietary/system/bin/qmuxd:system/bin/qmuxd \
	device/lg/aloha/proprietary/system/bin/wl:system/bin/wl \
   	device/lg/aloha/proprietary/hw/sensors.aloha.so:system/lib/hw/sensors.aloha.so \
   	device/lg/aloha/aloha.kcm.bin:system/usr/keychars/aloha.kcm.bin \
   	device/lg/aloha/aloha.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
	device/lg/aloha/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
	device/lg/aloha/aloha.kl:system/usr/keylayout/aloha.kl \
	device/lg/aloha/aloha.kl:system/usr/keylayout/qwerty.kl \
	device/lg/aloha/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	device/lg/aloha/proprietary/lib/libgsl.so:system/lib/libgsl.so \
	device/lg/aloha/proprietary/system/bin/tsdown:system/bin/tsdown \
	device/lg/aloha/proprietary/system/bin/port-bridge:system/bin/port-bridge \
	device/lg/aloha/proprietary/system/bin/wpa_supplicant:system/bin/wpa_supplicant \
	device/lg/aloha/proprietary/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
	device/lg/aloha/proprietary/dhcpcd/dhcpcd-run-hooks:system/etc/dhcpcd/dhcpcd-run-hooks \
	device/lg/aloha/proprietary/dhcpcd/01-test:system/etc/dhcpcd/dhcpcd-hooks/01-test \
	device/lg/aloha/proprietary/dhcpcd/20-dns.conf:system/etc/dhcpcd/dhcpcd-hooks/20-dns.conf \
	device/lg/aloha/proprietary/dhcpcd/95-configured:system/etc/dhcpcd/dhcpcd-hooks/95-configured \
	device/lg/aloha/proprietary/lib/libgps.so:system/lib/libgps.so \
	device/lg/aloha/proprietary/lib/libloc.so:obj/lib/libloc.so \
	device/lg/aloha/proprietary/lib/libloc.so:system/lib/libloc.so \
	device/lg/aloha/proprietary/lib/libcommondefs.so:obj/lib/libcommondefs.so \
	device/lg/aloha/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so \
	device/lg/aloha/proprietary/lib/libloc-rpc.so:obj/lib/libloc-rpc.so \
	device/lg/aloha/proprietary/lib/libloc-rpc.so:system/lib/libloc-rpc.so \
	device/lg/aloha/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
	device/lg/aloha/proprietary/wl/rtecdc_sta.bin:system/etc/wl/rtecdc_sta.bin \
	device/lg/aloha/proprietary/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt
	
#codecs
PRODUCT_COPY_FILES += \
	device/lg/aloha/proprietary/codecs/libOmxAacDec.so:system/lib/libOmxAacDec.so \
	device/lg/aloha/proprietary/codecs/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
	device/lg/aloha/proprietary/codecs/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
	device/lg/aloha/proprietary/codecs/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
	device/lg/aloha/proprietary/codecs/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
	device/lg/aloha/proprietary/codecs/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
	device/lg/aloha/proprietary/codecs/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
	device/lg/aloha/proprietary/codecs/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
	device/lg/aloha/proprietary/codecs/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
	device/lg/aloha/proprietary/codecs/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
	device/lg/aloha/proprietary/codecs/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
	device/lg/aloha/proprietary/codecs/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
	device/lg/aloha/proprietary/codecs/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
	device/lg/aloha/proprietary/codecs/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
	device/lg/aloha/proprietary/codecs/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
	device/lg/aloha/proprietary/codecs/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
	device/lg/aloha/proprietary/codecs/libomx_wmadec_sharedlibrary.so:system/lib/libomx_wmadec_sharedlibrary.so \
	device/lg/aloha/proprietary/codecs/libomx_wmvdec_sharedlibrary.so:system/lib/libomx_wmvdec_sharedlibrary.so \
	device/lg/aloha/proprietary/codecs/libmm-abl.so:system/lib/libmm-abl.so \
	device/lg/aloha/proprietary/codecs/libmm-adspsvc.so:system/lib/libmm-adspsvc.so 


#frameworks/base/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
#device/lg/aloha/proprietary/lib/libcamera.so:obj/lib/libcamera.so \
#   device/lg/aloha/proprietary/lib/libcamera.so:system/lib/libcamera.so \
#   device/lg/aloha/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
#   device/lg/aloha/proprietary/lib/libmm-abl.so:system/lib/libmm-abl.so \
#   device/lg/aloha/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
#   device/lg/aloha/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
#device/lg/aloha/proprietary/lib/libloc.so:obj/lib/libloc.so \	 
#device/lg/aloha/proprietary/lib/libloc.so:system/lib/libloc.so \
#device/lg/aloha/proprietary/lib/libcommondefs.so:obj/lib/libcommondefs.so \
#	device/lg/aloha/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so \
#	device/lg/aloha/proprietary/lib/libloc-rpc.so:obj/lib/libloc-rpc.so \
#	device/lg/aloha/proprietary/lib/libloc-rpc.so:system/lib/libloc-rpc.so
#device/lg/aloha/proprietary/lib/libloc.so:obj/lib/libloc.so \
#   device/lg/aloha/proprietary/lib/libloc.so:system/lib/libloc.so \
#   device/lg/aloha/proprietary/lib/libcamera.so:obj/lib/libcamera.so \
#   device/lg/aloha/proprietary/lib/libcamera.so:system/lib/libcamera.so \
#   device/lg/aloha/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
#device/lg/aloha/proprietary/lib/libgps.so:system/lib/libgps.so \
#device/lg/aloha/proprietary/lib/libcommondefs.so:obj/lib/libcommondefs.so \
#device/lg/aloha/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so \
#device/lg/aloha/proprietary/lib/libloc-rpc.so:obj/lib/libloc-rpc.so \
#device/lg/aloha/proprietary/lib/libloc-rpc.so:system/lib/libloc-rpc.so \
#device/lg/aloha/proprietary/lib/libgps.so:system/lib/libgps.so \
#device/lg/aloha/proprietary/lib/libcommondefs.so:obj/lib/libcommondefs.so \
#device/lg/aloha/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so \
#device/lg/aloha/proprietary/lib/libloc-rpc.so:obj/lib/libloc-rpc.so \
#device/lg/aloha/proprietary/lib/libloc-rpc.so:system/lib/libloc-rpc.so \
#device/lg/aloha/proprietary/lib/libgps.so:obj/lib/libgps.so \  
#device/lg/aloha/proprietary/lib/libloc.so:obj/lib/libloc.so \
#device/lg/aloha/proprietary/lib/libloc-rpc.so:obj/lib/libloc-rpc.so \    
#device/lg/aloha/proprietary/lib/libcommondefs.so:obj/lib/libcommondefs.so \
#device/lg/aloha/proprietary/lib/libloc_api.so:obj/lib/libloc_api.so
#device/lg/aloha/proprietary/system/bin/cnd:system/bin/cnd \
#device/lg/aloha/vold.conf:system/etc/vold.conf \

#removed these for testting
#device/lg/aloha/proprietary/lib/libgps.so:obj/lib/libgps.so \
#device/lg/aloha/proprietary/lib/libgsl.so:system/lib/libgsl.so \
#device/lg/aloha/proprietary/hw/sensors.aloha.so:system/lib/hw/sensors.aloha.so \
#device/lg/aloha/proprietary/hw/lights.aloha.so:system/lib/hw/lights.aloha.so \
#device/lg/aloha/proprietary/lib/libloc.so:system/lib/libloc.so \
#device/lg/aloha/proprietary/lib/libloc-rpc.so:system/lib/libloc-rpc.so \
#device/lg/aloha/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so \
#device/lg/aloha/proprietary/lib/libloc_api.so:system/lib/libloc_api.so \
#device/lg/aloha/proprietary/system/bin/akmd2:system/bin/akmd2 \
#device/lg/aloha/proprietary/system/bin/qmuxd:system/bin/qmuxd \
#device/lg/aloha/proprietary/system/bin/wl:system/bin/wl \
#device/lg/aloha/proprietary/lib/libcm.so:system/lib/libcm.so \
#device/lg/aloha/proprietary/lib/libdiag.so:system/lib/libdiag.so \
#device/lg/aloha/proprietary/lib/libdsm.so:system/lib/libdsm.so \
#device/lg/aloha/proprietary/lib/libdss.so:system/lib/libdss.so \
#device/lg/aloha/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
#device/lg/aloha/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
#device/lg/aloha/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
#device/lg/aloha/proprietary/lib/libnv.so:system/lib/libnv.so \
#device/lg/aloha/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so\
#device/lg/aloha/proprietary/lib/libqmi.so:system/lib/libqmi.so \
#device/lg/aloha/proprietary/lib/libqueue.so:system/lib/libqueue.so \
#device/lg/aloha/proprietary/lib/libwms.so:system/lib/libwms.so \
#device/lg/aloha/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \
#device/lg/aloha/proprietary/AudioFilter.csv:system/etc/AudioFilter.csv \

#Enabling Ring Tones
include frameworks/base/data/sounds/OriginalAudio.mk

$(call inherit-product, build/target/product/generic.mk)

# Overrides
PRODUCT_BRAND := verizon
PRODUCT_NAME := aloha
PRODUCT_DEVICE := aloha
PRODUCT_MODEL := Ally
PRODUCT_MANUFACTURER := LGE


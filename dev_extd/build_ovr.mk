ADDITIONAL_DEFAULT_PROPERTIES += \
     ro.adb.secure=0 \
     ro.secure=0 \
     ro.allow.mock.location=1 \
     ro.debuggable=1 \
     persist.service.adb.enable=1
     
PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
     ro.zygote=zygote64_32 \
     camera.disable_zsl_mode=1 \
     ro.mount.fs=EXT4 \
     persist.service.acm.enable=0 \
     persist.sys.usb.config=mtp,mass_storage,adb \
     persist.sys.timezone=Asia/Kolkata

PRODUCT_PROPERTY_OVERRIDES := \
    ro.product.locale.language=en \
    ro.product.locale.region=IN \
    persist.sys.language=en \
    persist.sys.country=IN \
    ro.kernel.android.checkjni=0 \
    ro.telephony.ril_class=MediaTekRIL \
    ro.telephony.ril.config=fakeiccid  \
    persist.call_recording.enabled=true \
    persist.call_recording.src=4 \
    persist.debug.wfd.enable=1

PRODUCT_PROPERTY_OVERRIDES += \
    	dalvik.vm.boot-dex2oat-threads=4 \
    	dalvik.vm.dex2oat-threads=2 \
    	dalvik.vm.image-dex2oat-threads=4

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=8


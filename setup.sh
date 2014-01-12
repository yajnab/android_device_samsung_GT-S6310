DEVICE=royss
MANUFACTURER=samsung

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/hw



# Libs
./adb pull /system/lib/hw/sensors.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
./adb pull /system/lib/libacdapi_azi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
./adb pull /system/lib/liboemcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

#Blob

cp -i blobs ../../../vendor/$MANUFACTURER/$DEVICE/blobs.mk

#Make Zip for the Developer

zip send_to_yajnab ../../../vendor/$MANUFACTURER/$DEVICE/*

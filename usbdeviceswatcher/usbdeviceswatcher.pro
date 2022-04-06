QT -= gui

TEMPLATE = lib
TARGET = $$qtLibraryTarget(UsbDevicesWatcher)
DEFINES += USBDEVICESWATCHER_LIBRARY

CONFIG += c++11

SOURCES += \
    usbdeviceswatcher.cpp

HEADERS += \
    usbdeviceswatcher_global.h \
    usbdeviceswatcher.h \
    usbdeviceswatcher_p.h

# Default rules for deployment.
unix:target.path = /usr/lib
!isEmpty(target.path): INSTALLS += target

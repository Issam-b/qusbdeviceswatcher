QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

SOURCES += \
    main.cpp

OUT_PWD_PATH = $$OUT_PWD/../usbdeviceswatcher
win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD_PATH/release/ -lUsbDevicesWatcher
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD_PATH/debug/ -lUsbDevicesWatcher
else:unix: LIBS += -L$$OUT_PWD_PATH -lUsbDevicesWatcher

INCLUDEPATH += $$PWD/../usbdeviceswatcher

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

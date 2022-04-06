TEMPLATE = subdirs

test_app.depends = usbdeviceswatcher
SUBDIRS += \
    usbdeviceswatcher \
    test_app

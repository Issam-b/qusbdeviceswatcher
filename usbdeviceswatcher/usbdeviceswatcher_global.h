#ifndef USBDEVICESWATCHER_GLOBAL_H
#define USBDEVICESWATCHER_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(USBDEVICESWATCHER_LIBRARY)
#  define USBDEVICESWATCHER_EXPORT Q_DECL_EXPORT
#else
#  define USBDEVICESWATCHER_EXPORT Q_DECL_IMPORT
#endif

#endif // USBDEVICESWATCHER_GLOBAL_H

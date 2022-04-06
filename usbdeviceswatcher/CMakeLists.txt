cmake_minimum_required(VERSION 3.14)

set(target_name UsbDevicesWatcher)
project(${target_name} LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core REQUIRED)

add_library(${target_name} SHARED
    usbdeviceswatcher_global.h
    usbdeviceswatcher.cpp usbdeviceswatcher.h usbdeviceswatcher_p.h
)

target_link_libraries(${target_name} PRIVATE
    Qt${QT_VERSION_MAJOR}::Core
    ${FWCoreFoundation}
    ${FWIOKit})
target_compile_definitions(${target_name} PRIVATE USBDEVICESWATCHER_LIBRARY)

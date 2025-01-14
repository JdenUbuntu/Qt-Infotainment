TEMPLATE = app

QT += qml quick widgets

CONFIG += c++11

SOURCES += main.cpp \
    controller/system.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    controller/system.h

DISTFILES += \
    images/carrender.jpg \
    images/padlock-unlock.png \
    images/padlock.png \
    images/penang.png \
    images/sports-car.png \
    ui/images/carrender.jpg \
    ui/images/padlock-unlock.png \
    ui/images/padlock.png \
    ui/images/penang.png \
    ui/images/sports-car.png \
    ui/assets/carrender.jpg \
    ui/assets/padlock-unlock.png \
    ui/assets/padlock.png \
    ui/assets/penang.png \
    ui/assets/sports-car.png \
    ui/carrender.jpg \
    ui/padlock-unlock.png \
    ui/padlock.png \
    ui/penang.png \
    ui/sports-car.png \
    carrender.jpg \
    padlock-unlock.png \
    padlock.png \
    penang.png \
    sports-car.png

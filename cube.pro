QT       += core gui widgets

TARGET = cube
TEMPLATE = app

SOURCES += main.cpp

qtHaveModule(opengl) {
    QT += opengl

    SOURCES += mainwidget.cpp \
       geometryengine.cpp

    HEADERS += \
        mainwidget.h \
        geometryengine.h

    RESOURCES += \
        shaders.qrc \
        textures.qrc
}

# install
target.path = /Users/citrus/Desktop/DemoEngine
INSTALLS += target

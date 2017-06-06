QT += core gui opengl

TARGET = MVCDemo
TEMPLATE = app

SRC_DIR = $${PWD}/src
INCLUDEPATH +=  C:\dev\CGAL-4.9\include
INCLUDEPATH +=  C:\dev\CGAL-4.9\auxiliary\gmp\include
INCLUDEPATH +=  D:\boost_1_60_0
INCLUDEPATH +=  D:\CGAL\include


SOURCES += $${SRC_DIR}/glwidget.cpp \
           $${SRC_DIR}/main.cpp \
           $${SRC_DIR}/mainwindow.cpp \
           $${SRC_DIR}/MVCCloner.cpp \
           $${SRC_DIR}/sourcewidget.cpp \
           $${SRC_DIR}/utils.cpp

HEADERS  += $${SRC_DIR}/CloningParameters.h \
            $${SRC_DIR}/CoordinatesMesh.h \
            $${SRC_DIR}/glwidget.h \
            $${SRC_DIR}/mainwindow.h \
            $${SRC_DIR}/mvcshaders.h \
            $${SRC_DIR}/MVCCloner.h  \
            $${SRC_DIR}/sourcewidget.h \
            $${SRC_DIR}/utils.h

# using pkg-config
linux {
    CONFIG += link_pkgconfig
    PKGCONFIG += glu
}

# CGAL
*-g++* {
    QMAKE_CXXFLAGS += -frounding-math
}
LIBS += D:\CGAL\lib\
        D:\boost_1_60_0\stage\lib\
        C:\dev\CGAL-4.9\auxiliary\gmp\lib\
        D:\libQGLViewer-2.6.4\QGLViewer\
        F:\code\MVCDemo-master\glut32.lib\

RESOURCES += images/images.qrc \
             src/shaders.qrc



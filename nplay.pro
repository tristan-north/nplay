QT += network widgets

#CONFIG += c++11 console

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

TARGET = fplay

SOURCES += \
        src/main.cpp \
    src/server.cpp \
    src/mainwindow.cpp \
    src/frame.cpp \
    src/timeline.cpp \
    src/seqlist.cpp \
    src/sequence.cpp \
    src/playbutton.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    src/server.h \
    src/mainwindow.h \
    src/frame.h \
    src/timeline.h \
    src/seqlist.h \
    src/sequence.h \
    src/common.h \
    src/half.h \
    src/playbutton.h

RESOURCES += \
    nplay.qrc

DISTFILES +=

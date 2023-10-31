QT       += core gui sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    log.cpp \
    loginWrong.cpp \
    loginform.cpp \
    main.cpp \
    mainwindow.cpp \
    Chat.cpp \
    DataBase.cpp \
    Message.cpp \
    User.cpp \
    newDatabase.cpp \
    passwordWrong.cpp \
    registrationform.cpp \
    startscreen.cpp

HEADERS += \
    log.h \
    loginWrong.h \
    loginform.h \
    mainwindow.h \
    Chat.h \
    DataBase.h \
    Message.h \
    User.h \
    newDatabase.h \
    passwordWrong.h \
    registrationform.h \
    startscreen.h

FORMS += \
    loginform.ui \
    mainwindow.ui \
    newDatabase.ui \
    registrationform.ui \
    startscreen.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

INCLUDEPATH +=$$PWD/'../../../Program Files/MySQL/MySQL Server 8.0/include'
QMAKE_LIBDIR +=$$PWD/'../../../Program Files/MySQL/MySQL Server 8.0/lib'
LIBS += -llibmysql
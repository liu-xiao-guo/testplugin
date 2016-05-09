TEMPLATE = lib
TARGET = Testpluginbackend
QT += qml quick
CONFIG += qt plugin

load(ubuntu-click)

LIBS += -L$$PWD/../../libs/ -ltestStudent
INCLUDEPATH += $$PWD/../../libs
DEPENDPATH += $$PWD/../../libs

TARGET = $$qtLibraryTarget($$TARGET)

# Input
SOURCES += \
    backend.cpp \
    mytype.cpp

HEADERS += \
    backend.h \
    mytype.h

OTHER_FILES = qmldir

!equals(_PRO_FILE_PWD_, $$OUT_PWD) {
    copy_qmldir.target = $$OUT_PWD/qmldir
    copy_qmldir.depends = $$_PRO_FILE_PWD_/qmldir
    copy_qmldir.commands = $(COPY_FILE) \"$$replace(copy_qmldir.depends, /, $$QMAKE_DIR_SEP)\" \"$$replace(copy_qmldir.target, /, $$QMAKE_DIR_SEP)\"
    QMAKE_EXTRA_TARGETS += copy_qmldir
    PRE_TARGETDEPS += $$copy_qmldir.target
}

qmldir.files = qmldir
installPath = $${UBUNTU_CLICK_PLUGIN_PATH}/Testplugin
qmldir.path = $$installPath
target.path = $$installPath
INSTALLS += target qmldir

message(The project will be installed in $${UBUNTU_CLICK_PLUGIN_PATH})

values = $$enumerate_vars()
for(var, values) {
    message($$var ":" $$eval("$$var"))
}

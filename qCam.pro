#-------------------------------------------------
include($$(QTARCHDIR)/arch.pri)
include($$(QTROOT)/common/commonApp.pri)

QT       += widgets core gui

DESTDIR  = $$bindir
TARGET   = qCam
TEMPLATE = app

SOURCES  += main.cpp mainwindow.cpp
HEADERS  += mainwindow.h
FORMS    += mainwindow.ui

INCLUDEPATH += $$(QEFWORK)/widgets/QELabel
INCLUDEPATH += $$(QEFWORK)/widgets/QEComboBox
INCLUDEPATH += $$(QEFWORK)/widgets/QEButton
INCLUDEPATH += $$(QEFWORK)/widgets/QELineEdit
INCLUDEPATH += $$(QEFWORK)/widgets/QESpinBox
INCLUDEPATH += $$(QEFWORK)/widgets/QEBitStatus
INCLUDEPATH += $$(QEFWORK)/widgets/QEImage

LIBS += -L$$(QEFWORK)/designer -lQEPlugin
#LIBS += -L$$(MYPLUGINS)/plugin -lmyPlugin

RESOURCES = resources.qrc

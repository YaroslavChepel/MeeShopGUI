#############################################################################
# Makefile for building: MeeShopGUI
# Generated by qmake (2.01a) (Qt 4.7.4) on: ?? 8. ??? 19:59:21 2023
# Project:  MeeShopGUI.pro
# Template: app
# Command: c:/qtsdk/madde/targets/harmattan_10.2011.34-1_rt1.2/bin/qmake.exe -spec ../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/default -unix -after  OBJECTS_DIR=obj MOC_DIR=moc UI_DIR=ui RCC_DIR=rcc -o Makefile MeeShopGUI.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DHARMATTAN_BOOSTER -DQT_NO_DEBUG -DQT_DECLARATIVE_LIB -DQT_GUI_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -O2 -g -Wno-psabi -fPIC -fvisibility=hidden -fvisibility-inlines-hidden -I/usr/include/applauncherd -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -O2 -g -Wno-psabi -fPIC -fvisibility=hidden -fvisibility-inlines-hidden -I/usr/include/applauncherd -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/default -I. -I../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/include/qt4/QtCore -I../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/include/qt4/QtNetwork -I../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/include/qt4/QtGui -I../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/include/qt4/QtDeclarative -I../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/include/qt4 -Iqmlapplicationviewer -Imoc
LINK          = g++
LFLAGS        = -Wl,-O1
LIBS          = $(SUBLIBS)  -LC:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/lib -pie -rdynamic -lmdeclarativecache -lQtDeclarative -lQtGui -lQtNetwork -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = c:/qtsdk/madde/targets/harmattan_10.2011.34-1_rt1.2/bin/qmake.exe
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = obj/

####### Files

SOURCES       = main.cpp \
		process.cpp \
		getApps.cpp \
		getRss.cpp \
		qmlapplicationviewer/qmlapplicationviewer.cpp moc/moc_process.cpp \
		moc/moc_getApps.cpp \
		moc/moc_getRss.cpp \
		moc/moc_qmlapplicationviewer.cpp
OBJECTS       = obj/main.o \
		obj/process.o \
		obj/getApps.o \
		obj/getRss.o \
		obj/qmlapplicationviewer.o \
		obj/moc_process.o \
		obj/moc_getApps.o \
		obj/moc_getRss.o \
		obj/moc_qmlapplicationviewer.o
DIST          = ../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/common/g++.conf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/common/unix.conf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/common/linux.conf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/qconfig.pri \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qt_functions.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qt_config.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/default_pre.prf \
		qmlapplicationviewer/qmlapplicationviewer.pri \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/release.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/default_post.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qdeclarative-boostable.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/link_pkgconfig.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/warn_on.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qt.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/unix/thread.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/moc.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/resources.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/uic.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/yacc.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/lex.prf \
		MeeShopGUI.pro
QMAKE_TARGET  = MeeShopGUI
DESTDIR       = 
TARGET        = MeeShopGUI

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: MeeShopGUI.pro  ../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/default/qmake.conf ../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/common/g++.conf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/common/unix.conf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/common/linux.conf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/qconfig.pri \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qt_functions.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qt_config.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/default_pre.prf \
		qmlapplicationviewer/qmlapplicationviewer.pri \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/release.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/default_post.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qdeclarative-boostable.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/link_pkgconfig.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/warn_on.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qt.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/unix/thread.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/moc.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/resources.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/uic.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/yacc.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/lex.prf \
		c:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/lib/libQtDeclarative.prl \
		c:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/lib/libQtGui.prl \
		c:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/lib/libQtNetwork.prl \
		c:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/lib/libQtCore.prl
	$(QMAKE) -spec ../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/default -unix -after  OBJECTS_DIR=obj MOC_DIR=moc UI_DIR=ui RCC_DIR=rcc -o Makefile MeeShopGUI.pro
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/common/g++.conf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/common/unix.conf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/common/linux.conf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/qconfig.pri:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qt_functions.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qt_config.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/default_pre.prf:
qmlapplicationviewer/qmlapplicationviewer.pri:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/release.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/default_post.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qdeclarative-boostable.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/link_pkgconfig.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/warn_on.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qt.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/unix/thread.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/moc.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/resources.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/uic.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/yacc.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/lex.prf:
c:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/lib/libQtDeclarative.prl:
c:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/lib/libQtGui.prl:
c:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/lib/libQtNetwork.prl:
c:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/lib/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -spec ../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/default -unix -after  OBJECTS_DIR=obj MOC_DIR=moc UI_DIR=ui RCC_DIR=rcc -o Makefile MeeShopGUI.pro

dist: 
	@$(CHK_DIR_EXISTS) obj/MeeShopGUI1.0.0 || $(MKDIR) obj/MeeShopGUI1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) obj/MeeShopGUI1.0.0/ && $(COPY_FILE) --parents process.h getApps.h getRss.h qmlapplicationviewer/qmlapplicationviewer.h obj/MeeShopGUI1.0.0/ && $(COPY_FILE) --parents main.cpp process.cpp getApps.cpp getRss.cpp qmlapplicationviewer/qmlapplicationviewer.cpp obj/MeeShopGUI1.0.0/ && (cd `dirname obj/MeeShopGUI1.0.0` && $(TAR) MeeShopGUI1.0.0.tar MeeShopGUI1.0.0 && $(COMPRESS) MeeShopGUI1.0.0.tar) && $(MOVE) `dirname obj/MeeShopGUI1.0.0`/MeeShopGUI1.0.0.tar.gz . && $(DEL_FILE) -r obj/MeeShopGUI1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc/moc_process.cpp moc/moc_getApps.cpp moc/moc_getRss.cpp moc/moc_qmlapplicationviewer.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc/moc_process.cpp moc/moc_getApps.cpp moc/moc_getRss.cpp moc/moc_qmlapplicationviewer.cpp
moc/moc_process.cpp: process.h
	C:/QtSDK/Madde/targets/harmattan_10.2011.34-1_rt1.2/bin/moc.exe $(DEFINES) $(INCPATH) process.h -o moc/moc_process.cpp

moc/moc_getApps.cpp: getApps.h
	C:/QtSDK/Madde/targets/harmattan_10.2011.34-1_rt1.2/bin/moc.exe $(DEFINES) $(INCPATH) getApps.h -o moc/moc_getApps.cpp

moc/moc_getRss.cpp: getRss.h
	C:/QtSDK/Madde/targets/harmattan_10.2011.34-1_rt1.2/bin/moc.exe $(DEFINES) $(INCPATH) getRss.h -o moc/moc_getRss.cpp

moc/moc_qmlapplicationviewer.cpp: qmlapplicationviewer/qmlapplicationviewer.h
	C:/QtSDK/Madde/targets/harmattan_10.2011.34-1_rt1.2/bin/moc.exe $(DEFINES) $(INCPATH) qmlapplicationviewer/qmlapplicationviewer.h -o moc/moc_qmlapplicationviewer.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: ui/qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) ui/qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean 

####### Compile

obj/main.o: main.cpp process.h \
		getApps.h \
		getRss.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/main.o main.cpp

obj/process.o: process.cpp process.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/process.o process.cpp

obj/getApps.o: getApps.cpp getApps.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/getApps.o getApps.cpp

obj/getRss.o: getRss.cpp getRss.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/getRss.o getRss.cpp

obj/qmlapplicationviewer.o: qmlapplicationviewer/qmlapplicationviewer.cpp qmlapplicationviewer/qmlapplicationviewer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/qmlapplicationviewer.o qmlapplicationviewer/qmlapplicationviewer.cpp

obj/moc_process.o: moc/moc_process.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/moc_process.o moc/moc_process.cpp

obj/moc_getApps.o: moc/moc_getApps.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/moc_getApps.o moc/moc_getApps.cpp

obj/moc_getRss.o: moc/moc_getRss.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/moc_getRss.o moc/moc_getRss.cpp

obj/moc_qmlapplicationviewer.o: moc/moc_qmlapplicationviewer.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/moc_qmlapplicationviewer.o moc/moc_qmlapplicationviewer.cpp

####### Install

install_itemfolder_01: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/opt/MeeShopGUI/qml/ || $(MKDIR) $(INSTALL_ROOT)/opt/MeeShopGUI/qml/ 
	-$(INSTALL_DIR) c:/Users/yarch/Documents/MeeShopGUI/qml/MeeShopGUI $(INSTALL_ROOT)/opt/MeeShopGUI/qml/


uninstall_itemfolder_01:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/opt/MeeShopGUI/qml/MeeShopGUI
	-$(DEL_DIR) $(INSTALL_ROOT)/opt/MeeShopGUI/qml/ 


install_icon: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/usr/share/icons/hicolor/80x80/apps/ || $(MKDIR) $(INSTALL_ROOT)/usr/share/icons/hicolor/80x80/apps/ 
	-$(INSTALL_FILE) c:/Users/yarch/Documents/MeeShopGUI/MeeShopGUI80.png $(INSTALL_ROOT)/usr/share/icons/hicolor/80x80/apps/


uninstall_icon:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/usr/share/icons/hicolor/80x80/apps/MeeShopGUI80.png
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/share/icons/hicolor/80x80/apps/ 


install_desktopfile: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/usr/share/applications/ || $(MKDIR) $(INSTALL_ROOT)/usr/share/applications/ 
	-$(INSTALL_FILE) c:/Users/yarch/Documents/MeeShopGUI/MeeShopGUI_harmattan.desktop $(INSTALL_ROOT)/usr/share/applications/


uninstall_desktopfile:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/usr/share/applications/MeeShopGUI_harmattan.desktop
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/share/applications/ 


install_target: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/opt/MeeShopGUI/bin/ || $(MKDIR) $(INSTALL_ROOT)/opt/MeeShopGUI/bin/ 
	-$(INSTALL_PROGRAM) "$(QMAKE_TARGET)" "$(INSTALL_ROOT)/opt/MeeShopGUI/bin/$(QMAKE_TARGET)"

uninstall_target:  FORCE
	-$(DEL_FILE) "$(INSTALL_ROOT)/opt/MeeShopGUI/bin/$(QMAKE_TARGET)"
	-$(DEL_DIR) $(INSTALL_ROOT)/opt/MeeShopGUI/bin/ 


install:  install_itemfolder_01 install_icon install_desktopfile install_target  FORCE

uninstall: uninstall_itemfolder_01 uninstall_icon uninstall_desktopfile uninstall_target   FORCE

FORCE:


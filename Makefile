TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = SpringBoard

PREFIX=$(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/

SYSROOT=$(THEOS)/sdks/iphoneos14.0.sdk

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoCarPlaySplashScreen

NoCarPlaySplashScreen_FILES = Tweak.xm
NoCarPlaySplashScreen_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

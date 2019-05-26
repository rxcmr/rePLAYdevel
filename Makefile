ARCHS = armv7 arm64
TARGET = iphone:clang:latest:latest
#THEOS_PACKAGE_DIR_NAME = debs
PACKAGE_BUILDNAME = iOSGods.com
#DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1
#GO_EASY_ON_ME = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = rePLAYdevel
rePLAYdevel_FILES = Tweak.xm
rePLAYdevel_FRAMEWORKS = UIKit
rePLAYdevel_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk


SUBPROJECTS += rePLAYdevelSettings # To compile your project as a Tweak only, comment out or remove this line.
include $(THEOS_MAKE_PATH)/aggregate.mk

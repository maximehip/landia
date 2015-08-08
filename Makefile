THEOS_DEVICE_IP = 192.168.1.20

ARCHS = armv7 armv7s arm64

TARGET = iphone:clang:latest:8.0

THEOS_BUILD_DIR = Packages

include theos/makefiles/common.mk

TWEAK_NAME = Landia
Landia_FILES = Landia.x 
Landia_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 backboardd"

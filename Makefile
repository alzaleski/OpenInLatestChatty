TARGET = iphone:clang:6.1:6.0

include theos/makefiles/common.mk

THEOS_DEVICE_IP=192.168.1.103

TWEAK_NAME = OpenInLatestChatty
OpenInLatestChatty_FILES = Tweak.xm
OpenInLatestChatty_FRAMEWORKS=UIKit
OpenInLatestChatty_LDFLAGS = -lopener

include $(THEOS_MAKE_PATH)/tweak.mk

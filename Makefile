TARGET = iphone:5.1:3.0

TWEAK_NAME = OpenInLatestChatty

OpenInLatestChatty_FILES = Tweak.xm
OpenInLatestChatty_FRAMEWORKS = UIKit
OpenInLatestChatty_LDFLAGS = -lopener

include theos/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk

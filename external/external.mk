# Can include custom make logic and include packages .mk
include $(sort $(wildcard $(BR2_EXTERNAL_LXE22109_PATH)/package/*/*.mk))

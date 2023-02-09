LIBFOO_VERSION=0.1
LIBFOO_SITE=$(call github,tpetazzoni,libfoo,v$(LIBFOO_VERSION))

LIBFOO_AUTORECONF = YES

LIBFOO_INSTALL_STAGING = YES

LIBFOO_EXAMPLE_BIN = libfoo-example1
define LIBFOO_EXAMPLE_REMOVE
	rm -rf 	$(addprefix $(TARGET_DIR)/usr/bin/, $(LIBFOO_EXAMPLE_BIN)) 
endef
LIBFOO_POST_INSTALL_TARGET_HOOKS += LIBFOO_EXAMPLE_REMOVE

ifeq ($(BR2_PACKAGE_LIBFOO_DEBUG), y)
LIBFOO_CONF_OPTS += --enable-debug-output 
endif


$(eval $(autotools-package))

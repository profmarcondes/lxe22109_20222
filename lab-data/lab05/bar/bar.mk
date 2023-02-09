BAR_VERSION = 1.0
BAR_SITE = https://bootlin.com/~thomas/bar

BAR_DEPENDENCIES = libfoo

ifeq ($(BR2_PACKAGE_LIBCONFIG), y)
 BAR_CONF_OPTS += --with-libconfig
 BAR_DEPENDENCIES += libconfig
else
 BAR_CONF_OPTS += --without-libconfig
endif

$(eval $(autotools-package))

#ONLY_FOR_ARCHS =	???
#NOT_FOR_ARCHS =	???
#SHARED_ONLY =		???

COMMENT =		a Scheme scripting engine

DISTNAME =		Gauche-0.9.4
CATEGORIES =		lang
HOMEPAGE =		http://practical-scheme.net/gauche/
MAINTAINER =		Tomoyuki Sahara <sahara@caddr.net>

PERMIT_PACKAGE_CDROM =	Yes

WANTLIB=		c m pthread util z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gauche/}
EXTRACT_SUFX =		.tgz

#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#TEST_DEPENDS =		???

CONFIGURE_STYLE =	gnu autoconf no-autoheader
CONFIGURE_ARGS +=	--enable-threads=pthreads
AUTOCONF_VERSION =	2.69

# XXX: broken
NO_TEST =		Yes

.include <bsd.port.mk>

#ONLY_FOR_ARCHS =	???
#NOT_FOR_ARCHS =	???
#SHARED_ONLY =		???

COMMENT =		a Scheme scripting engine

V =			0.9.4
DISTNAME =		Gauche-${V}
PKGNAME =		${DISTNAME:L}
CATEGORIES =		lang
HOMEPAGE =		http://practical-scheme.net/gauche/
MAINTAINER =		Tomoyuki Sahara <sahara@caddr.net>

PERMIT_PACKAGE_CDROM =	Yes

WANTLIB=		c m pthread util z
SHARED_LIBS +=		gauche-0.9	0.4

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

BFDNAME =		${MACHINE_ARCH:S/amd64/x86_64/}-unknown-openbsd${OSREV}
SUBST_VARS +=		BFDNAME V

.include <bsd.port.mk>

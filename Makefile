# New ports collection makefile for:	findutils
# Date created:				29 March 2000
# Whom:					Robert Withrow <witr@rwwa.com>
#
# $FreeBSD$
#

PORTNAME=	findutils
PORTVERSION=	4.1
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= findutils

MAINTAINER=	Cyrille Lefevre <clefevre@citeweb.net>

GNU_CONFIGURE=	yes

CONFIGURE_ARGS=	--program-prefix=g
MAKE_ARGS=	INSTALL_SCRIPT="${INSTALL_SCRIPT}"

USE_GMAKE=	yes

MAN1=		gfind.1 gxargs.1 glocate.1 gupdatedb.1
MAN5=		glocatedb.5

post-install:
	install-info ${PREFIX}/info/find.info ${PREFIX}/info/dir
	${RM} -f ${PREFIX}/man/cat1/gfind.1
	${RM} -f ${PREFIX}/man/cat1/gxargs.1
	${RM} -f ${PREFIX}/man/cat1/glocate.1
	${RM} -f ${PREFIX}/man/cat1/gupdatedb.1
	${RM} -f ${PREFIX}/man/cat5/glocatedb.5

.include <bsd.port.mk>

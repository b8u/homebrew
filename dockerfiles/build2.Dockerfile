FROM liveslak/slackware:base_x64_15.0

RUN slackpkg update
RUN slackpkg -batch=on -default_answer=y install \
	make \
	guile \
	gcc-11 \
	gcc-g++ \
	gc \
	glibc-2 \
	kernel-headers

WORKDIR ../slackbuilds/build2/


FROM node:10.3.0

#mirror
ARG NPM_MIRROR_URL
RUN if [ ! -z "${NPM_MIRROR_URL}" ];then \
		npm config set registry ${NPM_MIRROR_URL}; \
	fi \
	&& npm install gitbook-cli -g \
	&& gitbook fetch \
	&& wget --no-check-certificate -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin
CMD [ "gitbook", "ls" ]
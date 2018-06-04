FROM debian:stretch-slim

#mirror
ARG NPM_MIRROR_URL
RUN apt-get update \
	&& apt-get install -y --no-install-recommends wget xz-utils \
	&& cd /root \
	&& wget --no-check-certificate https://nodejs.org/dist/v8.11.2/node-v8.11.2-linux-x64.tar.xz \
	&& tar -xf node-v8.11.2-linux-x64.tar.xz \
	&& cd node-v8.11.2-linux-x64 \
	&& rm ../node-v8.11.2-linux-x64.tar.xz \
	&& ln -s $(pwd)/bin/node /usr/bin/node \
	&& ln -s $(pwd)/bin/npm /usr/bin/npm \
	&& ln -s $(pwd)/bin/npx /usr/bin/npx \
	&& if [ ! -z "${NPM_MIRROR_URL}" ];then \
		npm config set registry ${NPM_MIRROR_URL}; \
	fi \
	&& npm install gitbook-cli -g \
	&& gitbook fetch \
	&& wget --no-check-certificate -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin
CMD [ "gitbook", "ls" ]
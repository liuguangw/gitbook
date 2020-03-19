FROM debian:stretch-slim

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint
COPY makebook.sh /usr/local/bin/makebook
#mirror
ARG NPM_MIRROR_URL
RUN apt-get update \
	&& apt-get install -y --no-install-recommends wget xz-utils ca-certificates calibre \
	&& apt-get install -y --no-install-recommends xfonts-wqy ttf-wqy-zenhei ttf-wqy-microhei fonts-arphic-uming \
	&& cd /root \
	&& wget https://nodejs.org/dist/v12.16.1/node-v12.16.1-linux-x64.tar.xz \
	&& tar -xf node-v12.16.1-linux-x64.tar.xz \
	&& cd node-v12.16.1-linux-x64 \
	&& rm ../node-v12.16.1-linux-x64.tar.xz \
	&& export PATH="$PATH:$(pwd)/bin" \
	&& if [ ! -z "${NPM_MIRROR_URL}" ];then \
		npm config set registry ${NPM_MIRROR_URL}; \
	fi \
	&& npm install -g gitbook-cli \
	&& npm install --unsafe-perm -g svgexport \
	&& gitbook fetch \
	&& chmod a+x /usr/local/bin/docker-entrypoint \
	&& chmod a+x /usr/local/bin/makebook
ENTRYPOINT ["docker-entrypoint"]
CMD [ "gitbook", "ls" ]

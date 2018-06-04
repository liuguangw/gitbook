FROM node:10.3.0

#mirror
RUN if [ ! -z "${NPM_MIRROR_URL}" ];then \
		npm config set registry ${NPM_MIRROR_URL} \
	fi \
	&& npm install gitbook-cli -g \
	&& gitbook fetch \
	&& sudo -v && wget --no-check-certificate -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin \
CMD [ "gitbook", "ls" ]
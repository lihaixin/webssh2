FROM node:6.10.3-alpine

RUN apk update  && \
	apk add --no-cache --update git  && \
	git clone https://github.com/billchurch/WebSSH2.git && \
	cd WebSSH2/ && \
	cp -r app/ /usr/src/ && \
	rm -rf WebSSH2/ && \
	cd /usr/src/    && \
	apk del git && \
	npm install --production

WORKDIR /usr/src
EXPOSE 2222
CMD npm run start

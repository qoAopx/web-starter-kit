FROM node:latest
MAINTAINER qoAop

ENV VERSION 0.6.5
ENV URL https://github.com/google/web-starter-kit/archive/v$VERSION.tar.gz
RUN mkdir /web-starter-kit

# TODO: shasum for download
RUN curl -fsSL $URL -o web-starter-kit.tar.gz \
  && tar -C /web-starter-kit --strip-components 1 -xzf web-starter-kit.tar.gz \
  && rm web-starter-kit.tar.gz

WORKDIR /web-starter-kit

RUN npm update -g npm
RUN npm install --save-dev babel-cli
RUN npm install --save-dev babel-preset-env
RUN npm install --global gulp-cli
RUN npm install

RUN node --version

ADD ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

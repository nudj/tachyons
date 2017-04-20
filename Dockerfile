FROM node:6.10.0-alpine
ARG NPM_TOKEN
RUN mkdir -p /usr/src
WORKDIR /usr/src
COPY . /usr/src
RUN npm i && npm run build
CMD npm publish

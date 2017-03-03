FROM node:7.5.0
MAINTAINER Runnable, Inc.

# Cache NPM Install
RUN mkdir -p /app
ADD package.json /app
WORKDIR /app
RUN npm install

# Add Repository & Build
ADD . /app/

# Expose Ports & Run Application
EXPOSE 3000
CMD npm start

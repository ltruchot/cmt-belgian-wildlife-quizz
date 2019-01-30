FROM mhart/alpine-node:latest
RUN apk add --update bash

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
COPY elm.json ./

RUN npm i

# Bundle app source
COPY . .

RUN elm-app build
CMD tail -f /dev/null
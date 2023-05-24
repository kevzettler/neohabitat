FROM node:18.16

RUN npm install -g supervisor
COPY . /pushserver
WORKDIR /pushserver
RUN npm ci
CMD npm start

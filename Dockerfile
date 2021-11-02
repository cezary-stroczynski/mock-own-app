# syntax=docker/dockerfile:1

FROM node:14.18.1-buster

WORKDIR /

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "run", "start" ]
# syntax=docker/dockerfile:1

FROM node:14.17.0

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "run", "start:prod" ]
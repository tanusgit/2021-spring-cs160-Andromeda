 # syntax=docker/dockerfile:1
 FROM node:12-alpine
 WORKDIR /usr/src/app
 COPY package*.json ./
 RUN npm install
 COPY . .
 EXPOSE 3000 3306
 CMD ["node", "server.js"]
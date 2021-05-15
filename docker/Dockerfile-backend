 # syntax=docker/dockerfile:1
 FROM node:12-alpine
 WORKDIR /usr/src/app
 COPY package*.json ./
 RUN npm install
 COPY . .
 EXPOSE 5500
 CMD ["npm", "start"]
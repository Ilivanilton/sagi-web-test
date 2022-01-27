### STAGE 1: Build ###
FROM node:10-alpine AS build
WORKDIR /app
COPY package.json ./
RUN npm install -g @angular/cli@9.1.13
RUN npm install
COPY . .
EXPOSE 4200
CMD npm run start:ci

#### STAGE 2: Run ###
#FROM nginx:1.17.1-alpine
#COPY nginx.conf /etc/nginx/nginx.conf
#COPY --from=build /app/dist/sagi-web /usr/share/nginx/html

#### STAGE 1: Build ###
#FROM node:10-alpine AS build
#WORKDIR /app
#COPY package.json package-lock.json ./
#RUN npm install
#COPY . .
#RUN npm run build
#
#### STAGE 2: Run ###
#FROM nginx:1.17.1-alpine
#COPY nginx.conf /etc/nginx/nginx.conf
#COPY --from=build /app/dist/sagi-web /usr/share/nginx/html

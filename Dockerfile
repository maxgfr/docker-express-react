FROM node:12 AS build
WORKDIR /usr/src/front
COPY ./front .
RUN npm run build

FROM node:12
WORKDIR /usr/src/app
COPY --from=build /usr/src/front/build ./build
COPY package*.json ./
RUN npm install 
COPY . .
CMD [ "npm", "start" ]
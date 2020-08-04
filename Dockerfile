FROM node:12 AS build
WORKDIR /usr/src/front
COPY ./front /usr/src/front/
RUN npm run build

FROM node:12
WORKDIR /usr/src/app
COPY --from=build /usr/src/front/build /usr/src/app/build
COPY package*.json /usr/src/app/
RUN npm install 
COPY . /usr/src/app
CMD [ "npm", "start" ]
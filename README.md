# docker-express-react

Dockerize in production a react application using express as server

## Run application without docker-compose

```
git clone https://github.com/maxgfr/docker-express-react.git
cd docker-express-react
docker build -t docker-express-react .
docker run -it -p 80:80 docker-express-react # Then you can go to this URL : https://localhost/
```

## Running application using docker-compose

```
git clone https://github.com/maxgfr/docker-express-react.git
cd docker-express-react
docker-compose up
docker-compose down
```

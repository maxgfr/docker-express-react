# docker-express-react

Dockerize in production a react application using express as server

## Run application

```
git clone https://github.com/maxgfr/docker-express-react.git
cd docker-express-react
docker build -t docker-express-react .
docker run -it -p 80:80 docker-express-react # Then you can go to this URL : https://localhost/
```

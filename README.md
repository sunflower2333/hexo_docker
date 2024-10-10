# Hexo in Docker 
OneKey deploy hexo with fluid theme in docker, enjoy your blogging journey.

## Requirement
- Docker & Docker compose

## Build and deploy
- Run the following command in terminal to build and run a container with hexo:
```
sudo docker compose up -d
```
or with old synax:
```
sudo docker-compose up -d
```

## Help
- To enter the container and interact with `hexo`, please run:
```
sudo docker exec -it my_hexo /bin/bash
```

- Persistent hexo data is saving in ./docs/

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

## Update
- Pull this repo and update:
```
git pull
cp -a docs docs_bak
sudo docker compose down 
sudo docker compose build
sudo docker compose start
sudo docker images rm id_of_old_image
```

## Help
- To enter the container and interact with `hexo`, please run:
```
sudo docker exec -it my_hexo /bin/bash
```

- Persistent hexo data is saving in ./docs/

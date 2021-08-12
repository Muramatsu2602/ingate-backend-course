FROM node:16-buster

WORKDIR /usr/scr/app

RUN apt-get update && apt-get -y upgrade

RUN npm i

COPY . .

# 1. Create image:  docker build -t back-3 .
# 2. Run container: docker run --rm -it --name my-container -v $(pwd):/usr/src/app back-3 bash
## OBS: remove ´$´ when using fish

# Extra Commands:
# docker ps --> see what containers are running at the moment
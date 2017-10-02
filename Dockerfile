FROM node:alpine
MAINTAINER Hong-Da, Ke

RUN apk add --no-cache git \
    && cd /root \
    && git clone https://github.com/KittenBot/Kittenblock.git \
    && cd KittenbotGui \
    && npm install

WORKDIR /root/KittenbotGui
EXPOSE 80
CMD ["npm","start"]

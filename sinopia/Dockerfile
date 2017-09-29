FROM node:alpine

WORKDIR /

ADD techinline-sinopia-config.yaml /sinopia/config.yaml

RUN npm install -g sinopia \
    && npm cache verify \
    && mkdir -p /sinopia/storage/cache

EXPOSE 4873

VOLUME /sinopia/storage

CMD ["sinopia", "--config", "/sinopia/config.yaml"]

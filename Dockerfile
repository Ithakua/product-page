FROM node:12.18.1-slim

WORKDIR /opt/microservices

COPY /product-page/practica_creativa2/bookinfo/src/ratings/package.json .
COPY /product-page/practica_creativa2/bookinfo/src/ratings/ratings.js .

ENV SERVICE_VERSION v1

RUN npm install

EXPOSE 9080

CMD node ratings.js 9080

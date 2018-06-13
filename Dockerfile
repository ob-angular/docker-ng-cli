FROM node:8.9-alpine

VOLUME /app
WORKDIR /app

RUN apk add --no-cache \
    python \
    make \
    g++ \
    && npm i -g @angular/cli \
    && npm cache clean --force

CMD ["npm", "install"]
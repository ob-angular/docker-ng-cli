FROM circleci/node:8.11.2

VOLUME /app
WORKDIR /app

RUN apk add --no-cache \
    python \
    make \
    g++ \
    && npm i -g @angular/cli \
    && npm cache clean --force

CMD ["npm", "install"]
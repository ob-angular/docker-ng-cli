FROM circleci/node:8.11.2

VOLUME /app
WORKDIR /app

USER root

RUN npm i -g @angular/cli

CMD ["npm", "install"]
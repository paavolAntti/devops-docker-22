FROM node:16.14.0

EXPOSE 5000

WORKDIR /usr/src/app

COPY /example-frontend .

RUN npm install -g serve

RUN npm install

RUN npm run build

CMD [ "serve", "-s", "-l", "5000", "build" ]
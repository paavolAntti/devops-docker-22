# Build stage
FROM node:16.14-alpine as build-stage

WORKDIR /usr/src/app

COPY /example-frontend .

ENV REACT_APP_BACKEND_URL=http://localhost:8080/

RUN npm install

RUN npm run build

# Final image
FROM node:16.14-alpine

EXPOSE 5000

WORKDIR /usr/src/app

RUN npm install -g serve

COPY --from=build-stage /usr/src/app/build /usr/src/app/build

RUN addgroup -S appgroup && adduser -S frontuser -G appgroup

USER frontuser

CMD [ "serve", "-s", "-l", "5000", "build" ]
# Build stage
FROM golang:1.16.12-alpine as build-stage

WORKDIR /usr/src/app

COPY example-backend .

RUN go build

# Final image
FROM alpine

EXPOSE 8080

WORKDIR /usr/src/app

ENV REQUEST_ORIGIN=http://localhost:5000

COPY --from=build-stage /usr/src/app/server /usr/src/app/server

RUN addgroup -S appgroup && adduser -S backuser -G appgroup

USER backuser

CMD ./server

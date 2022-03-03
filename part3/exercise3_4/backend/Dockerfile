FROM golang:1.16.12-alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY example-backend .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build

RUN addgroup -S appgroup && adduser -S backuser -G appgroup

USER backuser

CMD ./server
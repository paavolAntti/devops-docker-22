FROM golang:1.16.12-bullseye

EXPOSE 8080

WORKDIR /usr/src/app

COPY example-backend .

RUN go build

CMD ./server
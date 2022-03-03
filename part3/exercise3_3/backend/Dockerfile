FROM golang:1.16.12-bullseye

EXPOSE 8080

WORKDIR /usr/src/app

COPY example-backend .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build

RUN useradd -m backenduser

USER backenduser

CMD ./server
FROM golang:1.19

LABEL org.opencontainers.image.source=https://github.com/pavel-one/go-docker

WORKDIR /usr/src/app

RUN go install github.com/cosmtrek/air@latest
RUN go install -tags 'postgres' github.com/golang-migrate/migrate/v4/cmd/migrate@latest
RUN go install github.com/swaggo/swag/cmd/swag@latest

RUN #apk update
RUN #apk add net-tools lsof gcc g++ build-base libc6-compat gdal gdal-dev

RUN rm -rf /var/cache/apk/*

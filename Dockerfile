FROM golang:1.20-alpine AS build
MAINTAINER "cs1660"

WORKDIR /src/
COPY main.go go.* /src/
RUN CGO_ENABLED=0 go build -o /bin/demo

ENTRYPOINT ["/bin/demo"]

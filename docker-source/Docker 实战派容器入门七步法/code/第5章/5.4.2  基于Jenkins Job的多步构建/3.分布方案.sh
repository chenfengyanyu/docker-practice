$ cat Dockerfile.1
FROM golang:alpine
RUN apk --no-cache add git ca-certificates
WORKDIR /go/src/github.com/go/e7book/
COPY app.go .
RUN export GOPROXY=https://goproxy.cn \
  && CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build  -o app app.go
$ cat Dockerfile.2
FROM alpine:latest
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY app .
CMD ["./app"]

$ docker build -t go/app:v2 -f Dockerfile.1 .
$ docker create --name base go/app:v2
$ docker cp base:/go/src/github.com/go/e7book/app ./app


FROM golang:alpine
RUN apk --no-cache add git ca-certificates
WORKDIR /go/src/github.com/go/e7book/
COPY app.go .
RUN export GOPROXY=https://goproxy.cn \
  && CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build  -o app app.go \
  && cp /go/src/github.com/go/e7book/app /root
WORKDIR /root/
CMD ["./app"]
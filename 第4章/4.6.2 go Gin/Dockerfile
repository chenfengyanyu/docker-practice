#base image 
FROM golang 
# ENV GOPATH /go 
WORKDIR /go/src/hellogin 
# Install beego & bee 
RUN go env -w GOPROXY=https://goproxy.io,direct 
RUN go env -w GO111MODULE=on 
RUN go get -u github.com/gin-gonic/gin 
COPY . . 
EXPOSE 8000 
CMD [ "go", "run" , "hello.go" ]
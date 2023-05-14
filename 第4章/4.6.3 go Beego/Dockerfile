#base image 
FROM golang 
# ENV GOPATH /go 
WORKDIR /go/src/hello 
# Install beego & bee 
RUN go env -w GOPROXY=https://goproxy.io,direct 
RUN go env -w GO111MODULE=on 
RUN go get github.com/astaxie/beego 
RUN go get github.com/beego/bee 
COPY . . 
EXPOSE 8080 
CMD [ "bee", "run" ]
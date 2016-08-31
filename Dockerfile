FROM golang

MAINTAINER "billqiang" <whenjonny@gmail.com>

# dot env
RUN go get github.com/joho/godotenv
RUN go get golang.org/x/net; exit 0
RUN go get golang.org/x/crypto; exit 0
RUN go get golang.org/x/time; exit 0
# 安装iris
# go get -u github.com/kataras/iris
RUN go get github.com/kataras/iris
RUN go get github.com/iris-contrib/middleware; exit 0
### beego
RUN go get -u github.com/beego/bee
RUN go get -u github.com/astaxie/beego
### mongo driver
RUN go get gopkg.in/mgo.v2
### mysql driver
RUN go get github.com/go-sql-driver/mysql
### redis driver
RUN go get -u github.com/gosexy/redis
# 会遇到问题的：menteslibres.net/gosexy/to
### protobuf
RUN go get github.com/golang/protobuf; exit 0
### qiniu
RUN go get qiniupkg.com/api.v7/conf; exit 0
RUN go get qiniupkg.com/api.v7/kodo; exit 0
### pingpp
RUN go get github.com/pingplusplus/pingpp-go/pingpp
RUN ### RongCloud
RUN go get github.com/yinhui87/server-sdk-go/RCServerSDK
### pili stream
RUN go get github.com/pili-engineering/pili-sdk-go/pili
### Goson
RUN go get github.com/panthesingh/goson
### godotenv
RUN go get github.com/joho/godotenv
### errors for library
RUN go get github.com/go-errors/errors
# Finish

WORKDIR /go/src/tapi

CMD ["CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build main.go; ./main"]

EXPOSE 8080
VOLUME ["/data"]

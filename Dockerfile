FROM golang:latest

MAINTAINER <284077318@qq.com>

COPY . $GOPATH/src/github.com/jicg/webstatic

WORKDIR $GOPATH/src/github.com/jicg/webstatic

WORKDIR $GOPATH/src/github.com/jicg/webstatic
#-tags netgo -installsuffix
RUN go get  github.com/jicg/webstatic  

RUN go install -a github.com/jicg/webstatic

# EXPOSE 4000
# CMD easypos web --port 4000
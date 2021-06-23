FROM golang:1.11
RUN go get -u github.com/divan/gotrace && cd $GOPATH/src/github.com/divan/gotrace && git checkout go1.11 && go install
RUN mv /go/bin/gotrace /usr/local/bin
EXPOSE 2000
ENTRYPOINT ["gotrace"]
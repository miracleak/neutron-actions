FROM golang:1.20

WORKDIR /app

COPY /main.go .

RUN go mod init github.com/mirackeak/neutron-actions

RUN go mod tidy


RUN go build main.go

EXPOSE 8080

CMD ["/app/main"]
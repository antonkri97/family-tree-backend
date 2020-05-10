FROM golang:latest

WORKDIR /app

COPY ./ /app

RUN go mod download

RUN go get github.com/githubnemo/CompileDaemon

RUN ls
ENTRYPOINT CompileDaemon --build="go build hello.go" --command=./hello
FROM golang:1.21.0-alpine3.18
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go mod download
RUN go build -o main .
RUN chmod +x /app/main
CMD ["/app/main"]
FROM golang:1.17 AS builder

WORKDIR /go/src/
COPY . .
RUN GOOS=linux go build -mod vendor -o webapp

FROM debian:buster-slim

WORKDIR /app/
COPY --from=builder /go/src/webapp .

EXPOSE 3001
CMD ["./webapp"]
FROM golang:1.9
WORKDIR /go/src/github.ibm.com/swiss-cloud/sample
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o /app .
ENTRYPOINT ["/app"]

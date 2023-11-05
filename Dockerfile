FROM golang:1.20-alpine3.18 as builder
WORKDIR $GOPATH/src/go.k6.io/k6
RUN apk --no-cache add git

# Install xk6
RUN CGO_ENABLED=0 && go install go.k6.io/xk6/cmd/xk6@latest

# Build the k6 binary
RUN CGO_ENABLED=0 && xk6 build --with github.com/grafana/xk6-output-prometheus-remote@latest --output /tmp/k6

FROM alpine:3.18
RUN apk add --no-cache ca-certificates && adduser -D k6
COPY --from=builder /tmp/k6 /usr/bin/k6

USER k6
WORKDIR /home/k6
ENTRYPOINT ["k6"]
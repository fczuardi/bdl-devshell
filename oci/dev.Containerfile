# essential dependencies
FROM alpine:latest as week1
RUN apk add bitcoin-cli jq

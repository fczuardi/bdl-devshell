# essential dependencies
FROM alpine:latest as base
RUN apk add bitcoin-cli jq

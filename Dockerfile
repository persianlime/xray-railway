FROM ghcr.io/xtls/xray-core:latest AS xray

FROM alpine:latest

RUN apk add --no-cache ca-certificates

COPY --from=xray /usr/local/bin/xray /usr/local/bin/xray

COPY config.json /etc/xray/config.json
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

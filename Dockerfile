FROM golang:1.19-buster as builder

COPY . /code/fuse-device-plugin
WORKDIR /code/fuse-device-plugin
RUN CGO_ENABLED=0 go build

FROM debian:buster-slim

COPY --from=builder /code/fuse-device-plugin/fuse-device-plugin /usr/bin/fuse-device-plugin

# replace with your desire device count
CMD ["fuse-device-plugin", "--mounts_allowed", "5000"]

LABEL org.opencontainers.image.title="Fuse device plugin Docker Image" \
      org.opencontainers.image.description="fuse-device-plugin" \
      org.opencontainers.image.url="https://github.com/GDATASoftwareAG/fuse-device-plugin" \
      org.opencontainers.image.source="https://github.com/GDATASoftwareAG/fuse-device-plugin" \
      org.opencontainers.image.license="Apache 2.0"

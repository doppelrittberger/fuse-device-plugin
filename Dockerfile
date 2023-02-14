FROM golang:1.19-buster as builder

COPY . /code/fuse-device-plugin
WORKDIR /code/fuse-device-plugin
RUN CGO_ENABLED=0 go build

FROM debian:buster-slim

COPY --from=builder /code/fuse-device-plugin/fuse-device-plugin /usr/bin/fuse-device-plugin

# replace with your desire device count
CMD ["fuse-device-plugin", "--mounts_allowed", "5000"]

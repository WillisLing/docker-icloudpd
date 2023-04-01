# docker build -t willisling/docker-icloudpd[:TAGNAME] [--no-cache] .
# docker build -t willisling/docker-icloudpd:1.0.27 -t willisling/docker-icloudpd:latest --no-cache .

docker buildx create --use --name=docker-buildx --platform=linux/amd64
docker buildx build --platform linux/amd64 -t willisling/docker-icloudpd:1.0.27 -t willisling/docker-icloudpd:latest -o type=docker --no-cache .
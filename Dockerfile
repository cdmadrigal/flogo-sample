FROM alpine:latest
RUN apk update && apk add --no-cache libc6-compat && apk add --no-cache rest
ADD engine-linux-amd64 .
ADD flogo.json
EXPOSE 9233
CMD ./engine-linux-amd64

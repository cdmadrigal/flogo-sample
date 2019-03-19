FROM alpine:latest
RUN apk update && apk add --no-cache libc6-compat && apk add --no-cache bash && apk add --no-cache rest
ADD bookstore-new-linux-amd64 .
EXPOSE 9233
CMD ./bookstore-new-linux-amd64

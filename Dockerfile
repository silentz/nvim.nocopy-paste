FROM alpine:3.17.3

RUN apk update && \
    apk add neovim

WORKDIR /root
RUN mkdir -p ~/.config/nvim

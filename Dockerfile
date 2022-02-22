FROM wettyoss/wetty:latest
LABEL maintainer="Yoshimasa Katakura <yoshimasa.katakura@outlook.com>"

ARG USER_ID="10000"
ARG USER_NAME="ssh-user"
ARG USER_PASS="ssh-pass"

RUN apk update
RUN apk add sudo
RUN apk add curl

RUN adduser -D -u "${USER_ID}" -s /bin/sh -G wheel "${USER_NAME}"
RUN echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

RUN echo "${USER_NAME}:${USER_PASS}" | chpasswd

FROM wettyoss/wetty:latest
LABEL maintainer="Yoshimasa Katakura <yoshimasa.katakura@outlook.com>"

ARG USER_ID="10000"
ARG GROUP_ID="10001"
ARG USER_NAME="ssh-user"
ARG USER_PASS="ssh-pass"

RUN addgroup -S -g "${GROUP_ID}" "${USER_NAME}" && \
  adduser -u "${USER_ID}" -G "${USER_NAME}" -D "${USER_NAME}"

RUN echo "${USER_NAME}:${USER_PASS}" | chpasswd

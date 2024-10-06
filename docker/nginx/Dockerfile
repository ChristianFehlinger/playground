ARG BASE_TAG=1.27

FROM nginx:$BASE_TAG

ENV BASE_TAG=${BASE_TAG}
ENV VERBOSEPOD="false"

LABEL maintainer="Christian Fehlinger <chrisfehlinger@gmail.com>" \
      org.opencontainers.image.source="https://github.com/ChristianFehlinger/playground"

COPY 99-create-index.sh /docker-entrypoint.d/
RUN chmod +x /docker-entrypoint.d/99-create-index.sh

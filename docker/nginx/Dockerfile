ARG BASE_TAG=1.27

FROM nginx:$BASE_TAG

ENV BASE_TAG=1.23
ENV VERBOSEPOD="false"

COPY 99-create-index.sh /docker-entrypoint.d/
RUN chmod +x /docker-entrypoint.d/99-create-index.sh

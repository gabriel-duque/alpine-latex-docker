FROM alpine:latest

LABEL maintainer="Gabriel Duque <gabriel@zuh0.com> (zuh0)"

LABEL org.label-schema.build-date="$BUILD_DATE"

LABEL org.label-schema.name="alpine-latex-docker"

LABEL org.label-schema.vcs-url="https://github.com/zuh0/alpine-latex-docker"

LABEL org.label-schema.vcs-ref="$VCS_REF"

LABEL org.label-schema.version="$VERSION"

LABEL org.label-schema.schema-version="1.0"

ARG BUILD_DATE

ARG VCS_REF

ARG VERSION

RUN apk add --no-cache \
        make \
        py3-pygments \
        texlive \
        texmf-dist \
        texmf-dist-latexextra \
    && mkdir -p "/source"


WORKDIR /source

VOLUME /source

CMD ["make"]

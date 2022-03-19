FROM paperist/alpine-texlive-ja:latest

RUN \
    apk add --no-cache make imagemagick6 entr && \
    ln -s /usr/bin/convert-6 /usr/bin/convert && \
    ln -s /usr/bin/mogrify-6 /usr/bin/mogrify

RUN \
    tlmgr update --self && \
    tlmgr install \
    algorithms \
    collection-luatex \
    fontawesome \
    tracklang \
    academicons

WORKDIR /workdir

COPY .latexmkrc /root

FROM paperist/alpine-texlive-ja:latest

RUN apk add --no-cache git make entr
    # ln -s /usr/bin/convert-6 /usr/bin/convert && \
    # ln -s /usr/bin/mogrify-6 /usr/bin/mogrify

RUN wget https://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh && \
    chmod +x update-tlmgr-latest.sh && \
    ./update-tlmgr-latest.sh -- --upgrade

RUN \
    tlmgr update --self && \
    tlmgr install \
    algorithms \
    collection-luatex \
    fontawesome \
    tracklang \
    academicons \
    latexindent

WORKDIR /workdir

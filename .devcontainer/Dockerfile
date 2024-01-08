FROM --platform=linux/amd64 paperist/texlive-ja:alpine

RUN apk add --no-cache \
    git \
    make \
    entr \
    gcc \
    perl-dev \
    perl-app-cpanminus

RUN cpanm \
    File::HomeDir \
    YAML::Tiny

RUN curl -LO https://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh \
    && chmod +x update-tlmgr-latest.sh \
    && ./update-tlmgr-latest.sh

RUN \
    tlmgr update --self \
    && tlmgr install \
        algorithms \
        collection-luatex \
        fontawesome \
        tracklang \
        academicons \
        latexindent

WORKDIR /workdir

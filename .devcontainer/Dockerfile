FROM paperist/texlive-ja:debian

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    make \
    entr \
    curl \
    cpanminus && \
    rm -rf /var/lib/apt/lists/*

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

FROM ubuntu:16.04
RUN apt-get update \
    
    && apt-get install -y \
    build-essential \
    curl \
    dstat \
    htop \
    libpulse-dev \
    nano \
    swig \
    tmux \

    && curl -sL https://deb.nodesource.com/setup_8.x | bash - \

    && apt-get install -y \
    nodejs \
    python \
    python-dev \
    python-pip \
    python-virtualenv \

    antiword \
    libsox-fmt-all \
    pocketsphinx \
    poppler-utils \
    pstotext \
    sox \
    tesseract-ocr-all \
    unrtf \

    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

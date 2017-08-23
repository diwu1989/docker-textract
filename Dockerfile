FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y \
    curl \
    build-essential \
    dstat \
    htop \
    nano \
    tmux

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

RUN apt-get install -y nodejs

RUN apt-get install -y \
    python \
    python-dev \
    python-pip \
    python-virtualenv

RUN apt-get install -y \
    antiword \
    pocketsphinx \
    poppler-utils \
    pstotext \
    sox \
    tesseract-ocr-all \
    unrtf

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

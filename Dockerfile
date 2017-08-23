FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y \
    antiword \
    build-essential \
    nodejs \
    poppler-utils \
    tesseract-ocr-all \
    unrtf
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

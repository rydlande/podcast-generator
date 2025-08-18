FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

    
RUN apt-get update && apt-get install -y build-essential libyaml-dev
RUN pip3 install pyYAML

COPY feed.py /urs/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoin.sh" ]
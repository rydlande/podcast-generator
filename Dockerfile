FROM ubuntu:latest

# Install dependencies
 RUN apt-get update && apt-get install -y \
    && python3.10 \
    && python3-pip \
    && git

    
#RUN pip3 install --upgrade pip setuptools
#RUN pip3 install --break-system-packages pyYAML

#COPY feed.py /usr/bin/feed.py

#COPY entrypoint.sh /entrypoint.sh

#ENTRYPOINT [ "/entrypoint.sh" ]



# FROM python:3.10-slim

# Install system dependencies
# RUN apt-get update && apt-get install -y \
 #   git \
 #   && apt-get clean \
 #   && rm -rf /var/lib/apt/lists/*

# Upgrade pip and setuptools
RUN pip install --upgrade pip setuptools

# Install Python dependencies
RUN pip install pyyaml

# Copy scripts
COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh
# Make entrypoint executable
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

FROM node:slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends wget gnupg && \
    wget --no-check-certificate  https://download.docker.com/linux/debian/gpg && \
    apt-key add gpg && \
    wget --no-check-certificate https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apt install -y --no-install-recommends ./google-chrome-stable_current_amd64.deb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm google-chrome-stable_current_amd64.deb && \
    rm gpg
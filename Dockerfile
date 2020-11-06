FROM buildkite/puppeteer:latest

ENV LANG ja_JP.UTF-8

RUN apt-get update && \
    apt-get -y install locales fonts-ipafont fonts-ipaexfont && \
    echo "ja_JP UTF-8" > /etc/locale.gen && locale-gen

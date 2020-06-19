FROM node:current-buster

RUN apt-get update
RUN apt-get install -y \
    libgtk2.0-0 libgtk-3-0 \
    libnotify-dev \ 
    libgconf-2-4 libnss3 libxss1 \ 
    libasound2 libxtst6 xauth xvfb \ 
    libgbm-dev

RUN mkdir /node
RUN cd /node; npm install mermaid@8.5.2 phantomjs-prebuilt@2.1.16 mermaid.cli --unsafe-perm && npm cache clean --force

COPY files/puppeteer-config.json /

WORKDIR /data

ENTRYPOINT ["/node/node_modules/.bin/mmdc"]
CMD ["-p", "/puppeteer-config.json"]

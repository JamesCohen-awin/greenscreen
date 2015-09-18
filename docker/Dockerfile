FROM debian:7.8

RUN apt-get update
RUN apt-get install -y couchdb curl supervisor && mkdir /var/run/couchdb

# NodeJS and npm
RUN curl --silent --location https://deb.nodesource.com/setup_0.12 | bash -
RUN apt-get install --yes nodejs


EXPOSE 4994 5984
CMD bash run.sh

WORKDIR /greenscreen
COPY package.json ./
RUN npm install

COPY config.template.json ./config.json
COPY public ./public
COPY scripts ./scripts
COPY src ./src
COPY tests ./tests

COPY docker/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY docker/couchdb-local.ini /etc/couchdb/local.ini
COPY docker/run.sh ./

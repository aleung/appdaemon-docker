FROM resin/raspberry-pi2-python:3.6

RUN [ "cross-build-start" ]

RUN apt-get update && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
VOLUME /conf

# Grab source
RUN git clone https://github.com/home-assistant/appdaemon.git .

# INSTALL
RUN pip3 install .

CMD [ "appdaemon", "-c", "/conf" ]

RUN [ "cross-build-end" ]

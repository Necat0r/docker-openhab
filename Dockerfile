FROM openhab/openhab:2.3.0-amd64-debian

# Fix sound
RUN sed -i 's/  adduser openhab gpio/  adduser openhab gpio\n  adduser openhab audio/g' /entrypoint.sh

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
        libasound2

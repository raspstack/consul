FROM raspstack/base:latest

RUN apt-get update && apt-get install -y \
    zip

COPY 0.3.0_consul_linux_armpi.zip /
WORKDIR /

RUN unzip 0.3.0_consul_linux_armpi.zip
RUN mv consul /usr/local/bin

CMD ["bash"]
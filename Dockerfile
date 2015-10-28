FROM raspstack/base:latest

RUN apt-get update

CP bin/consul /usr/local/bin

WORKDIR /

CMD ["bash"]

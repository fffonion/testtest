FROM ubuntu:latest

RUN apt-get update && apt-get install openssl rename openssh-client -y --no-install-recommends

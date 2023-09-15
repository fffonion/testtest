FROM ubuntu:latest

RUN apt-get update && apt-get install openssl -y


RUN sed -i "s/Package: openssl/Package: whatever-openssl/g" /var/lib/dpkg/status

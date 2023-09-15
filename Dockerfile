FROM ubuntu:latest

RUN apt-get update && apt-get install openssl rename -y


RUN sed -i "s/Package: openssl/Package: whatever-openssl/g" /var/lib/dpkg/status

RUN rename "s/openssl-/whatever-openssl-/" /var/lib/dpkg/info/openssl*

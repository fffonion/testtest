FROM ubuntu:latest

RUN apt-get update && apt-get install openssl rename -y


RUN sed -i "s/Package: openssl/Package: whatever-openssl/g" /var/lib/dpkg/status
RUN sed -i "s/Package: libssl3/Package: whatever-libssl3/g" /var/lib/dpkg/status

RUN rename "s/openssl-/whatever-openssl-/" /var/lib/dpkg/info/openssl*

RUN rename "s/libssl3-/whatever-libssl3-/" /var/lib/dpkg/info/libssl3*

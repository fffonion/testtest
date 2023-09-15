FROM ubuntu:latest

RUN apt-get update && apt-get install openssl rename -y --no-install-recommends


RUN sed -i "s/Package: openssl/Package: whatever-openssl\nProvides: openssl (=$(dpkg -l|grep openssl| awk '{print $3}'))/g" /var/lib/dpkg/status

RUN rename "s/openssl-/whatever-openssl-/" /var/lib/dpkg/info/openssl*

# verify the hacked dpkg db doesn't break dependency
RUN apt-get install openssh-client -y --no-install-recommends

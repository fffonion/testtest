FROM ubuntu:latest

RUN apt-get update && apt-get install openssl rename -y --no-install-recommends

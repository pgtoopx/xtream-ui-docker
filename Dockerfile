FROM ubuntu:18.04

#RUN useradd -ms /bin/bash xtreamcodes

#USER xtreamcodes
#WORKDIR /home/xtreamcodes

RUN apt-get update && apt-get upgrade -y && apt-get install libxslt1-dev libcurl3 libgeoip-dev python wget -y
ADD install.py
RUN python install.py

FROM ubuntu

MAINTAINER Amauche <amauche@dounit.fr>

# update apt cache
RUN apt-get update

# install packages
RUN apt-get install -y git libcurl4-openssl-dev libjansson-dev automake gcc build-essential binutils

# create directory worker
RUN mkdir -p /opt/minerd

# clone minerd repository
RUN git clone https://github.com/wolf9466/cpuminer-multi /opt/minerd

# build minerd
RUN cd /opt/minerd && ./autogen.sh && ./configure --disable-aes-ni && make

# run minerd
COPY entrypoint.sh /

RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["./entrypoint.sh"]

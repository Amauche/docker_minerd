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
RUN cd /opt/minerd && ./autogen.sh && ./configure && make

# run minerd
CMD /opt/minerd/minerd -a cryptonight -o stratum+tcp://xmr.crypto-pool.fr:3333 -u 46svDDc2ZXTgv2vY1THHuu7CjVsNsFMXDfCyAgcxW5Zad8SJRLfXT6cZErScz7HicwD7SECJS9RQuW1wZAGd7NQrTfgCrtZ -p x

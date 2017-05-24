FROM ubuntu:latest
MAINTAINER "Ruslan Iakhin <ruslan.k.yakhin@gmail.com>"
RUN apt-get update
RUN apt-get install git build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils software-properties-common \
    libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev -y
RUN add-apt-repository ppa:bitcoin/bitcoin; \
    apt-get update; \
    apt-get install libdb4.8-dev libdb4.8++-dev -y
RUN git clone https://github.com/lbrtcoin/albertcoin.git /root/albertcoin
WORKDIR /root/albertcoin
RUN ./autogen.sh
RUN ./configure
RUN make
RUN mkdir /root/albertcoin/data
EXPOSE 9332 9333
CMD ["/root/albertcoin/src/albertcoind", "-conf=/root/.albertcoin/albertcoin.conf", "-datadir=/root/albertcoin/data"]

#!/bin/bash

/opt/minerd/minerd \
  -a cryptonight \
  -o stratum+tcp://mine.moneropool.com:7777 \
  -u 46svDDc2ZXTgv2vY1THHuu7CjVsNsFMXDfCyAgcxW5Zad8SJRLfXT6cZErScz7HicwD7SECJS9RQuW1wZAGd7NQrTfgCrtZ \
  -p x

while /bin/true; do
    sleep 10
done

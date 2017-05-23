#!/bin/sh

if [ "$(docker ps -a | grep [w]allet)" != "" ];
then
  docker start wallet
else
  docker run -d --name wallet -v $(pwd)/conf:/root/albertcoin/conf wallet 
fi

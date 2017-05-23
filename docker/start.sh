#!/bin/sh

if [ "$(docker ps -a | grep [w]allet)" != "" ];
then
  docker start wallet
else
  docker run -d --name wallet -p 9332:9332 -v $(pwd)/conf:/root/albertcoin/conf -v $(pwd)/data:/root/albertcoin/data wallet 
fi

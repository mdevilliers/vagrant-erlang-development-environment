#!/bin/bash
export DEBIAN_FRONTEND=noninteractive 

wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
sudo dpkg -i erlang-solutions_1.0_all.deb

apt-get update > /dev/null

apt-get -y install make curl g++ mercurial git zip xsltproc esl-erlang


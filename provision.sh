#!/bin/bash
export DEBIAN_FRONTEND=noninteractive 

cat >> /etc/apt/sources.list <<EOL
deb http://binaries.erlang-solutions.com/debian quantal contrib
deb http://binaries.erlang-solutions.com/debian precise contrib
deb http://binaries.erlang-solutions.com/debian oneiric contrib
deb http://binaries.erlang-solutions.com/debian natty contrib
deb http://binaries.erlang-solutions.com/debian maverick contrib
deb http://binaries.erlang-solutions.com/debian lucid contrib
deb http://binaries.erlang-solutions.com/debian wheezy contrib
deb http://binaries.erlang-solutions.com/debian squeeze contrib
EOL

wget -O - http://binaries.erlang-solutions.com/debian/erlang_solutions.asc | apt-key add -

apt-get update > /dev/null

apt-get -y install make mercurial git zip xsltproc esl-erlang

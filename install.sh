#!/usr/bin/bash

rm -rf /etc/sigma
echo "$(grep -v 'sigma="exec /etc/sigma/main.rb"' ~/.bashrc)" > ~/.sigmatrash

cp sigma /etc
echo alias sigma="exec /etc/sigma/main.rb" >> ~/.bashrc
echo Success!

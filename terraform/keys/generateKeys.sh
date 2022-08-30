#!/usr/bin/zsh
ssh-keygen -t rsa -b 4096 -m pem -f gatn.pem
ssh-keygen -y -f gatn.pem > gatn.pem.pub

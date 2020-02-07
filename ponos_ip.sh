#!/bin/bash

ponos_ip=$(curl -s ip.engles.fr)
echo -n "${ponos_ip}" > ./ip
git config --global push.default matching
git config user.name "chhfhjbvhkfyggjkbvv"
git config user.email "chhfhjbvhkfyggjkbvv@gmail.com"
git add --all
git commit -am "$(date)"
git push https://chhfhjbvhkfyggjkbvv:%40Marseille2020@github.com/chhfhjbvhkfyggjkbvv/ponos_ip.git

#!/bin/bash

ponos_ip=$(curl -s ip.engles.fr)
echo -n "${ponos_ip}" > ./ip
git config --global push.default matching
git config user.name "chhfhjbvhkfyggjkbvv"
git config user.email "chhfhjbvhkfyggjkbvv@gmail.com"
git add --all
git commit -am "$(date)"
git push origin --all
echo "expect \"Username for 'https://github.com':\""
echo "send -- chhfhjbvhkfyggjkbvv@gmail.com"

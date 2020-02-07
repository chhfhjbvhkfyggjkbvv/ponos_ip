#!/bin/bash

ponos_ip=$(curl -s ip.engles.fr)
echo -n "${ponos_ip}" > ./ip
git add --all
git config user.name "chhfhjbvhkfyggjkbvv"
git config user.email "chhfhjbvhkfyggjkbvv@gmail.com"
git commit -am "$(date)"

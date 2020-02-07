#!/bin/bash

ponos_ip=$(curl -s ip.engles.fr)
echo -n "${ponos_ip}" > ./ip
git add --all
git config user.name "chhfhjbvhkfyggjkbvv"
git commit -am "$(date)"

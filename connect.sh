#!/bin/bash

is_on_docomo_livebox_local_network=$(iwlist scanning 2>/dev/null | grep -oE "ESSID:\"Livebox-ECA0\"")
if [[ -z "${is_on_docomo_livebox_local_network}" ]]; then
  echo "Not on local docomo livebox"
  ip=0
else
  echo "On local docomo livebox"
  ip=192.168.1.2
  echo "Use ip ${ip}"
fi

if [[ ${ip} = 0 ]];then
  if [[ ! -d ~/.ponos ]];then
    echo "Downloading auto update ip repository"
    git clone https://github.com/chhfhjbvhkfyggjkbvv/ponos_ip.git ~/.ponos 2>/dev/null
  else
    cd ~/.ponos
    echo "Updating IP"
    git pull origin master 2>/dev/null
  fi
  ip=$(cat ~/.ponos/ip)
  echo "External connect"
fi
echo "Connecting to ${ip}"
sshpass -p sonop13002 ssh ponos@"${ip}"

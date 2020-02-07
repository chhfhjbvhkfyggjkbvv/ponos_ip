#!/bin/bash

ponos_ip=$(curl -s ip.engles.fr)
echo -n "${ponos_ip}" > ./ip
git config --global push.default matching
git config user.name "chhfhjbvhkfyggjkbvv"
git config user.email "chhfhjbvhkfyggjkbvv@gmail.com"
git add --all
git commit -am "$(date)"
git push origin --all

cat << EOF > /tmp/ponos_expect
#!/usr/bin/expect -f

spawn ./ponos_ip.sh
set timeout -1
expect "Username for 'https://github.com': "
send -- "chhfhjbvhkfyggjkbvv@gmail.com\r"
expect "Password for 'https://chhfhjbvhkfyggjkbvv@gmail.com@github.com': "
send -- "@Marseille2020\r"
expect eof
close
EOF
chmod 500 /tmp/ponos_expect
/usr/bin/expect -f /tmp/ponos_expect
rm /tmp/ponos_expect

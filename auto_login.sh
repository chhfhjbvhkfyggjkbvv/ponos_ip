#!/usr/bin/expect -f

spawn ./ponos_ip.sh
set timeout -1
expect "Username for 'https://github.com':\n"
send -- "chhfhjbvhkfyggjkbvv@gmail.com"
expect eof

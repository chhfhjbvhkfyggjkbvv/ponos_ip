#!/usr/bin/expect -f

spawn ./ponos_ip.sh
set timeout -1
expect "Username for 'https://github.com': "
send -- "chhfhjbvhkfyggjkbvv@gmail.com\r"
expect "Password for 'https://chhfhjbvhkfyggjkbvv@gmail.com@github.com': "
send -- "@Marseille2020\r"
expect eof

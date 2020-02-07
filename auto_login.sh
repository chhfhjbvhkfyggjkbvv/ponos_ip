#!/usr/bin/expect -f

spawn ./ponos_ip.sh
set timeout -1
expect eof

#!/usr/local/bin/expect -f

# usage is: ./scriptname.sh <username> <switch IP> 

spawn ssh -l [lindex $argv 0] [lindex $argv 1]
set timeout 2
expect ">"
send "request system power-off in 0 \r"
set timeout 3
expect ")"
send "yes\r"
expect "Shutdown NOW!"

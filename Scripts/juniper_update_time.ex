#!/usr/local/bin/expect -f

# usage is: ./scriptname.sh <username> <switch IP> 

spawn ssh -l [lindex $argv 0] [lindex $argv 1]
set timeout 2
expect ">"

send "edit\r"
expect "#"

send "set system time-zone EST\r"
expect "#"

send "commit\r"
set timeout 30
#expect "commit complete"
expect "#"

send "exit\r"
expect ">"


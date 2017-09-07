#!/usr/local/bin/expect -f

# usage is: ./scriptname.sh <username> <switch IP> 

spawn ssh -l [lindex $argv 0] [lindex $argv 1]
expect ">"

send "edit\r"
expect "#"

send "set system login user jason uid 4008\r"
expect "#"

send "set system login user jason class admin\r"
expect "#"

send "set system login user jason authentication ssh-rsa \"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDBDzG50FsIIYm4rnZLHFcVzLWQdL4VmnzSIUgJDc2EM7daYrKj5UQg/I8Gci0hmsgBGNC7QfjWgVzv7dSNrCRZ+5/LTv1kXXGjFu2ElCWbc+pzFPooRBdXbAIVITB3wQmmadJ+J9kW9a7VAKmQxS6bu2rQOPHCTUYE7MKXxfIw1UQzc6+kefQpt648Z+un7SAHtp96j8aDu7n8zvIjHMZlAgE1ZnOnGdvR1tASaYth993hqyJsvTvVxD8fg2LYJO4emn8aTQ9P5wwpcWLe7Dy3mBKK8yClVlLaf+v2NISwIoYoe9AgI6T+zr5KGdJkv8kJHb2A9X0E1Pf9/hpmxiTCXOeh2ghJlPnMxhULVrTmlyHu4ygNpGqPi7MtJiUAc65+ETYosVDviYQhXnt1icbF3kUXVvFXI8AwEkEFXA/A8L1FxRUq1QpmJVrk9cbHbIckFWe364VjwERxyJ9XwWLqf3TCMVA8/0kOKssGHq4JwmI4ov89sOrcScwT3/bDyzIO3MubYTMayculquspnwsrXnlOalYJjZSY6reZWbIEzlYNJCVbJqyYkAQFjdGmmTqfoCm6UCFY33JKb7aGqE3sLfRomXBRVSBG3XdHlg0OUcfsw5to8mjFXM+8GlsAt7agSMPEuFVnmnPJxiIFPU4pgCvejK86kWFgIewwt9RpLw== jason.monk@shopify.com\"\r"
expect "#"

send "commit\r"
expect "commit complete"

send "exit\r"
expect ">"

send "exit\r"
expect "$"

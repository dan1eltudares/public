#!/usr/local/bin/expect -f

# usage is: ./scriptname.sh <username> <switch IP> 

spawn ssh -l [lindex $argv 0] [lindex $argv 1]
expect ">"

send "edit\r"
expect "#"

send "set system login user mark uid 4007\r"
expect "#"

send "set system login user mark class admin\r"
expect "#"

send "set system login user mark authentication ssh-rsa \"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDWSRj4sdbk4BTU2O5oW+hKUB5dj1BUpox9BfNCC4nEG+J+IcjEt6WIRAau3+FF78lJWfeQRtO17r8JeNDnwSQ/eZOiWkgCTPAnOAfSOXucQU81Klw61Ue0zS4yrH2PLBeaqgXZyCnSWrZwEqneOU7th59wm8+ieQ14SwtRTZ8dnsA21R9L1qgFf49QkQq9HgQqtLh6uEc8KPkAY+KDT8gzlku/eTUfsV2m9jB4HWLgBqChqpN537cIKzvUUMPqC3beXnQCxBk0mc/xr1w9+5LXJPAXy73khToDIIx01pQPUa2JC4iZpRu/++S47MUnW4QyQIMpgOsD4D/cLfZNoRA77WG0Xl4vVuTSPqKCo9nI1yWanYAPvmIoQjNFlmoOMc2XR9s+A7518AY9GKVJrbCbytkWeRgeHCaOHlH689tzz+kJImGkpAXUO8AnYnHje1YCL65CC8Yo9j2pJqVvkALy5z32rYDVyoC8geksliYWveIYonXCHwdtVpEMx/xKcYxbGf6y2pqs+hDnhQhyl319x7wBxJtzoNZjWQQCTES5InTrPqa4nEsJmlUYi1cWwcIkrNZl8H+OuHC0GyctblCWmrJPJNrWNMEGpPIzDff8rHZ1EEVi+PL53nzk78oPMYEeF0oO0lRvPY3B4CiM4lmmCpwyrgEOl34dpeilTegywQ== mark.gagnon@shopify.com\"\r"
expect "#"

send "commit\r"
expect "commit complete"

send "exit\r"
expect ">"

send "exit\r"
expect "$"

#!/bin/sh

export GODEBUG=madvdontneed=1
./toreseve/TorrServer-linux-amd64 --port ${PORT} &
echo Server started successfully!
sshd-lite -p 10122 tesing:miksike1 


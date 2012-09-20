#!/bin/sh
# Viciously pirated from Sam Rowe at http://www.deadman.org/sshscreen.php
# Thanks
#
SSHVARS="SSH_CLIENT SSH_TTY SSH_AUTH_SOCK SSH_CONNECTION DISPLAY"

for x in ${SSHVARS} ; do
    (eval echo $x=\$$x) | sed  's/=/="/
                                s/$/"/
                                s/^/export /'
done 1>$HOME/bin/fixssh

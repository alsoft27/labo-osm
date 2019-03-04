#!/bin/sh

##
# Run OpenStreetMap tile server operations
#


die () {
    msg=$1
    echo "FATAL ERROR: " msg > 2
    exit
}

_startservice () {
    sv start $1 || die "Could not start $1"
}


cli () {
    echo "Running bash"
    cd /var/www
    exec bash
}


startweb () {
    _startservice apache2
}

help () {
    cat /usr/local/share/doc/run/help.txt
    exit
}

# wait until 2 seconds after boot when runit will have started supervising the services.

sleep 2

# Execute the specified command sequence
for arg
do
    $arg;
done

# Unless there is a terminal attached don't exit, otherwise docker
# will also exit
if ! tty --silent
then
    # Wait forever (see
    # http://unix.stackexchange.com/questions/42901/how-to-do-nothing-forever-in-an-elegant-way).
    tail -f /dev/null
fi

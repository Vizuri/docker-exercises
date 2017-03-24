# Description

Run a container that outputs the current date and time in Brussels

## Run instructions

One way to do this is to set the timezone for the desired location in an image and then use the date command to output the time.
It is probaly always desirable to use the smallest image possible so Alpine Linux is a good candidate.

You can set the timezone in Alpine like this

    apk add tzdata
    cp /usr/share/zoneinfo/Europe/Brussels /etc/localtime
    echo "Europe/Brussels" >  /etc/timezone


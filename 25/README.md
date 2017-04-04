# Description

Try the following. Why does the first one fail and the second one work?

    $ docker create -v /tmp --name data alpine
    Unable to find image 'alpine:latest' locally
    latest: Pulling from library/alpine
    627beaf3eaaf: Pull complete
    Digest: sha256:58e1a1bb75db1b5a24a462dd5e2915277ea06438c3f105138f97eb53149673c4
    Status: Downloaded newer image for alpine:latest
    Error response from daemon: No command specified

    $ docker create -v /tmp --name data ubuntu:14.04
    dca082c815b01c4cf4c7304a34374c222b6fd2cfd4309e02ee908287562b2711


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

#Answer
When images are created the associated Dockerfile may define a CMD or ENTRYPOINT as the default command to execute when the container is run.
If they do not include that definition then docker does not know what to run and will return something like this error `Error response from daemon: No command specified`.
The alpine Dockerfile does not include any direction on what to run by default but the ubuntu Dockerfile does.
Find and examine the two just to see the difference.

You should be able to run that container with something that does exist in the image like this

    $ docker create -v /tmp --name data alpine sh


# Description

If you have a already running container that you need to pass a file to how can you send that file to it?

## Run instructions

One method is to use the `docker cp` command to copy a file to (or from) a running container.

First create a container and run a shell in it.
Note that we are giving the container a name to make it easier to access later.

    docker run -it --rm --name=mycontainer  alpine:latest sh

Next, in another terminal window, copy a file from your host into that containner

    docker container cp /tmp/test.txt mycontainer:/tmp

Now, in the container where you run the shell, confirm that the file has been copied in.

    cat /tmp/hosts



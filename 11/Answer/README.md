# Description
What command will most quickly tell you what is contained in an Alpine Linux /etc/hosts file?

## Run instructions

A quick way to do this is to run the container and include a command to output the file that you are interested in like this.

    docker run --rm alpine cat /etc/hosts

If the container is already running, another way is to use the `docker cp` command and copy it to your local host.

    docker container cp /etc/hosts  containername:/tmp




# Description
Run docker in a container while sharing the image cache with the host.
This will improve the efficiency of the container in size and speed because it will share resoures with the host docker engine.

You can demonstrate this to yourself comparing docker images from inside the container with your host images.

Replace the '???' with the correct way to do this.

## Run instructions

First check the images on your host

    docker images -a

Next run a shell in a docker container but include the docker socket as a volume

    docker run -it --rm ??? docker sh

Now from inside the container check the images and you should see the same list

    docker images -a


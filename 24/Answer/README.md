# Description
What is the smallest data only container you can make?

One approach is to have a data only image that starts with the `scratch` base image.
Since you cannot have an empty image (try it) you have to add something to it.
That something can be an empty file that you create with `touch data.txt` for example.

## Run instructions

Build it using a name for convenience.
Note that the Dockerfile is adding an empty file to the image.

    docker build -t data .

Now run it and create a volume.
Note that we are including a cmd to run (`nothing`) but that command does not exist in the image.

    docker create -v /tmp --name data data nothing

Now run another container using the volume that we previously created.
While in that shell create a file in /tmp and then exit the container.

    docker run -it --rm --volumes-from data ubuntu:16.04
    # echo "test" > /tmp/testfile
    # exit

Now run another container using the volume that we previously created.
While in that shell check to see if the file that you created still exists (it should).

    docker run -it --rm --volumes-from data ubuntu:16.04
    # ls -l /tmp/testfile
    -rw-r--r-- 1 root root 5 Apr  3 21:53 /tmp/testfile   
    # exit


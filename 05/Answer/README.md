# Description
What size image does this Dockerfile create?
What size of archive does it create if you export it to a tarball?
What else is in the image that was built?

Notice that it uses the scratch base image and adds a small text file to it. To find out the size of the image you have to build the image and then use inspect to get the size.

## Run instructions

    docker build -t smallimage .
    docker inspect -f '{{ .Size }}' smallimage
    2
    docker save -o a.tar smallimage
    ls -l a.tar
    mkdir tmp
    cd tmp
    tar xvf ../a.tar


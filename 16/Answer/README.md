# Description
Docker images can be interesting to look around in.
You can save images to a tar archive and then extract the layers and metadata files from them.

## Run instructions

    docker pull alpine
    docker save -o alpine.tar alpine
    mkdir tmp
    cd tmp

Extract the archive

    tar xvf ../alpine.tar

Look at the layers and metadata files that are in the image.
Note that you might be able to find other archives in the layers, extract those and see what you find.



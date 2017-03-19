# Description
Docker containers can be interesting to look around in.
You can save containers to a tar archive and then extract the layers and metadata files from them.
Note that exported containers look a little different from images that have been saved to an archive.

## Run instructions

Run an alpine container

    docker run -it --name=alpinetest -e tmpvar=test alpine sh

Note that you can see the environment variable that you set in the run command.

    echo $tmpvar

See the other environment variables with `env`

Export the running container to an archive

    docker export -o alpine.tar alpinetest

Now extract the contents of the archive and look around.

    mkdir tmp
    cd tmp
    tar xvf ../alpine.tar

Notice that you do not see the metadata files that are present in a image that has been saved to an archive.


# Description

## Run instructions

Run the following commands

    docker run -it --name=test1 alpine:latest date
    docker run -it --name=test1 alpine:latest date

Why does this not work?

The problem is that the same container name was used for both runs and the first container was not removed.

What can you do to make them both run (there are at least a couple of ways)?


You can remove the container (using `--rm`) withthe first run command or you might be able to use a unique name for the second run.

     docker run -it --name=test1 --rm alpine:latest date
     docker run -it --name=test1 alpine:latest date
    
You can manually remove the first container after running it.

    docker run -it --name=test1 alpine:latest date
    docker rm test1
    docker run -it --name=test1 alpine:latest date

You might be able to use a unique name for the second run.

    docker run -it --name=test1 alpine:latest date
    docker run -it --name=test2 alpine:latest date


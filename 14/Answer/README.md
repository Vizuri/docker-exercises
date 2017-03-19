# Description
Use inspect to get metadata for a resource.

Note that you may need to use inspect with a type argument to indicate whether you want a container or image.

## Run instructions

    docker network create testthing
    docker volume create testthing
    docker run --name=testthing alpine date
    docker image tag alpine testthing

Now try this

    docker inspect testthing

Did you get the output that your expected?
Which resource did you get the output for?

Try the following to be more specific and compare the outputs

    docker inspect --type=container testthing
    docker inspect --type=image testthing
    docker inspect --type=container testthing



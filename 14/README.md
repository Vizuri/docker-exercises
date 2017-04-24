# Description
Use inspect to get metadata for a resource.

## Run instructions

    docker network create testthing
    docker volume create testthing
    docker run --name=testthing alpine date
    docker image tag alpine testthing

Now try this

    docker inspect testthing

Did you get the output that you expected?
Which resource did you get the output for?

How can you get the metadata for exactly what you want?




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

Potentially not.

This is because several resource types can be given names and nothing prevents the same name from being given to different resources (but not the same resource type).

Note that you may need to use inspect with a type argument to indicate whether you want a the data for a container, image or other resource.

Which resource did you get the output for?

Try the following to be more specific and compare the outputs.

    docker inspect --type=container testthing
    docker inspect --type=image testthing
    docker inspect --type=container testthing

Getting an unexpected resource type in the output can confuse automated processing so it is best to always be specific when using inspect with a resource name.


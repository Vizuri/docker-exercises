# Description
Did you know that you can include docker containers in pipelines?

Using a pipeline, echo the string "change this word to" from a docker container into sed in another container and replace "this" with "that".

The echo command looks like this:

    echo "change this word to"

The sed command looks like this:

    sed -n 's/this/that/p'

## Run instructions

    docker run -i --rm alpine echo "change this word to" | docker run -i alpine sed -n 's/this/that/p'

Note that if you include a pseudo tty with (-t) in the sed continer you will get this error

    the input device is not a TTY



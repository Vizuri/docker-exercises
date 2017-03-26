# Description
Did you know that you can include docker containers in pipelines?
This can be useful when you have tools using stdin/stdout that you are going to Dockerize.

Using a pipeline, echo the string "change this word to" from a docker container into sed in another container and replace "this" with "that".

The echo command looks like this:

    echo "change this word to"

The sed command looks like this:

    sed -n 's/this/that/p'

## Run instructions

    docker run -i --rm alpine echo "change this word to" | docker run -i alpine sed -n 's/this/that/p'

Note that if you include a pseudo tty with (-t) in the sed container you will get this error

    the input device is not a TTY

The reason for this is that the -t option causes a pseudo tty (terminal) to be allocated but there is no terminal to attach it to.


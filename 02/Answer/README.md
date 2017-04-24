# Description

Environment variable exercise

## Run instructions

Build the image as follows

    docker build -t testimage .

Run it and set the environment variable `myhost`

    docker run -e myhost=host1 testimage

You should get this as the output.

    host1

Run it without setting the env variable and you should get this as output

    docker run testimage

    testhost



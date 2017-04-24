# Description

Example of printing the argument array using NodeJS.

When you run this you should get an error.

What is wrong and how do you fix it?

## Run instructions

The problem is that nodejs can not find the source code.
The source code needs to be passed into the container.

These can be done at run time using a volume like this.

    docker run -it --rm -v $(pwd):/root --workdir=/root node:6.9.1 node server.js abc

When you run this you should get the following output

    0: /usr/local/bin/node
    1: /root/server.js
    2: abc


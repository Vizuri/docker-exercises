# Description
The is intended to be a NodeJS script that connects to a MongoDB and is accessed via a ReST interface on port 3000.
Regression testing is performed by a Postman collection that can be run via the Postman client or using Newman.

This is also an example of using tools like Mongo and NodeJS without installing them by running them as containers.

The challenge is that the Newman client is run in a Docker container and Postman is a standalone UI application.
The node script must be able to connect to the db and present a ReST interface for the test tools.

The following script will run the regression test by starting the db and web services and then running the test script.
When the test script completes the web and db services will be stopped using the down command.

    docker run -it --rm -w /work -v $(pwd):/work node:6.9.1 npm install

Note that this facilitates CI regression testing using Docker where a single script can start the system and perform the tests and then exit.

    ./regrtest-compose.sh

Once you can run the regression test you should be able to start only the db and web services and then using curl to access the web service like this:

    curl http://127.0.0.1:3000

What can make this difficult is that the same docker-compose.yml file should be useable for both container to container networking and the web service should be accessible from outside the container.


## Run instructions

Install the necessary node modules like this

    docker run -it --rm -w /work -v $(pwd):/work node:6.9.1 npm install

First, start the db and web services in the background

    docker-compose -f docker-compose.yml up -d  db web

Next, run the regression test service in the forground

    docker-compose -f docker-compose.yml up test

When the regression tests complete then stop the environment

    docker-compose -f docker-compose.yml down


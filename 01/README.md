# Description
The is intended to be a NodeJS script that connects to a MongoDB and is accessed via a ReST interface on port 3000.
Your goal is to docker-ize this application.
Regression testing is performed by using curl to access the ReST interface.

This is also an example of using tools like Mongo and NodeJS without installing them by running them as containers.

Your goal is to craft a docker-compose.yml file that can be used to start the db and web services and also test the web service using a simple curl command to demonstrate that the web endpoint can be reached.

As a starting point, the run instructions will show you how to use a node container to install the necessary modules (contained in the package.json file).

The rest is up to you.

## Run instructions

Install the necessary node modules like this

    docker run -it --rm -w /work -v $(pwd):/work node:6.9.1 npm install


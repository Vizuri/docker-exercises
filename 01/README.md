# Description
This is an exercise where you are going to use an existing NodeJS script that connects to a Mongo database.
The Node script presents a ReST interface on port 3000.

Your goal is to docker-ize this application but you do not need to build an image for it.
Instead all you need to do is run the appropriate containers for it.
However, not building an image means that the script source and associated node_modules directory need to be passed in from the host filesystem in to the container filesystem.

docker-compose can be used to start containers without needing a Dockerfile to build them.
The Mongo (db), Node (web) and curl (test) services can each be defined in the docker-compose.yml file.

Regression testing is performed by using curl to access the ReST interface on the node script.

This is also an example of using tools like Mongo and NodeJS without installing them by running them as containers.

Use images for NodeJS version 6.9.1 and MongoDB version 3.

Your goal is to craft a docker-compose.yml file that can be used to start the db and web services and also test the web service using a simple curl command to demonstrate that the web endpoint can be reached.
One challenge to be aware of is that the containers must be started in a way that lets the node script connect to the Mongo database and then let curl be used to access the ReST interface.

If curl is able to access the node script it will output `Hello World`.

As a starting point, the run instructions will show you how to use a node container to install the necessary modules (contained in the package.json file).

The rest is up to you.

## Run instructions

Install the necessary node modules like this

    docker run -it --rm -w /work -v $(pwd):/work node:6.9.1 npm install

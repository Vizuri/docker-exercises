# Description

Run a container that outputs the current date and time in Brussels

## Run instructions

One way to do this is to set the timezone for the desired location in an image and then use the date command to output the time.
It is probaly always desirable to use the smallest image possible so Alpine Linux is a good candidate.

The included Dockerfile uses Alpine as a base image, updates the packaging system and then adds the tzdata package and sets the timezone during the build.
Then at runtime it uses date to output the current time.

docker build -t brussels .
docker run brussels



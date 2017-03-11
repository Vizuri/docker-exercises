# Description
Make a dockerfile to create an image that lets you run a binary executable in a container instead of installing it on your machine.

The image to use is the aws ecs-cli binary for Linux available from the following link.

https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest

Things to consider:
* what base image should you use?
* the ecs-cli requires the following configuration directories ~/.aws:/root/.aws and ~/.ecs:/root/.ecs, how will you make them available to the container?
* the ecs-cli has various arguments such as the following, how will you provide them to the container in the run command?
* how can you make running the image as a container instead of directly as a locally installed application invisible to the user?
* one thing that you should probably never do is include private files such as AWS credentials in images so the Dockerfile should not copy them into the image

## Run instructions

    ecs-cli license
    ecs-cli configure --cluster ecs-cli-demo


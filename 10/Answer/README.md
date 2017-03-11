# ecs-cli
Utility Image for the AWS ECS-CLI

This is a Docker image for the AWS ecs-cli

Using Docker for a tool means that you do not have to install the tool (and any dependencies that they might need).
This also makes it easier to support multiple versions of tools rather than managing them yourself.

The default home directory in this image is `/home/root`.

If you include your existing AWS config directory as a volume when running this then the cli is ready for use otherwise you might have to enter your credentials info.
Because the cli also uses a .ecs directory to hold cluster information that should be included as a volume as well.
Some commands, such as compose, may require including a docker-compose.yml file.
Including that as a volume may also be necessary.

Examples of running this image follow.

`docker run -it -v ~/.aws:/root/.aws -v ~/.ecs:/root/.ecs vizuri/ecs-cli license`

`docker run -it -v ~/.aws:/root/.aws -v ~/.ecs:/root/.ecs vizuri/ecs-cli configure --cluster ecs-cli-demo`

`docker run -it -v ~/.aws:/root/.aws -v ~/.ecs:/root/.ecs -v $(pwd)/docker-compose.yml:/root/docker-compose.yml  vizuri/ecs-cli compose --file docker-compose.yml up`

If you want to enter the shell when using this image do this:

`docker  run -it -v ~/.aws:/home/root/.aws --entrypoint=sh  vizuri/ecs-cli`

If you do not want to have to remember how to run this then try the following shell alias

`alias ecs-cli="docker run -it -v ~/.aws:/root/.aws -v ~/.ecs:/root/.ecs vizuri/ecs-cli"`

After setting the alias all you need to do is the following

`ecs-cli license`


# Description

We want to only have ps output show the command used and image name being run but this is not working.
Can you fix it?

    docker ps --format '{{.Command .Image}}'

# Answer

    docker ps --format '{{.Command}} {{.Image}}'


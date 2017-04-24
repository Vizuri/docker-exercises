# Description
How can you quickly and succinctly determine the image id and created date for an Alpine image?

You can use the `inspect` command to access the image metadata and the `--format` argument in conjunction with it to extract only specific fields like this.

## Run instructions

    docker inspect alpine:latest --format='{{.Id}} {{ .Created}}'


# Description
Run the following containers and note some containers failed and exited with an error status.
Use inspect to show the exit status of only the failed containers.

Did you know that you can include conditionals in format statements?

## Run instructions

    docker run ubuntu date
    docker run ubuntu date1
    docker run ubuntu date2
    docker run ubuntu date


## Answer
The following will output the name and exit status of eaach container that failed and has not been removed.
Note that the if portion gets the state of all containers no longer running with a non-zero exit code.
The if condidtion is contained in the {{}} and the fields to be output follows.

    docker inspect -f '{{if ne 0 .State.ExitCode}}{{.Name}} {{.State.ExitCode}}{{ end}}' $(docker ps -aq)

    /blissful_thompson 127
    /boring_colden 127

    /condescending_mcclintock 127


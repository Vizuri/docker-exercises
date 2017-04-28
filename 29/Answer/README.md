# Description
How can you tell whether or not the ubuntu:16.4 image is signed for content trust?

#Answer

One way is to try to pull it with content trust enabled.
If the image is not signed the pull will fail.

To enable image content trust do this at the shell:

    $ export DOCKER_CONTENT_TRUST=1

Now try to pull an image that you want to check.
If the pull is successful then the image has been signed.

    $ docker pull ubuntu:16.04
    Pull (1 of 1): ubuntu:16.04@sha256:f3a61450ae43896c4332bda5e78b453f4a93179045f20c8181043b26b5e79028
    sha256:f3a61450ae43896c4332bda5e78b453f4a93179045f20c8181043b26b5e79028: Pulling from library/ubuntu
    aafe6b5e13de: Pull complete
    0a2b43a72660: Pull complete
    18bdd1e546d2: Pull complete
    8198342c3e05: Pull complete
    f56970a44fd4: Pull complete
    Digest: sha256:f3a61450ae43896c4332bda5e78b453f4a93179045f20c8181043b26b5e79028
    Status: Downloaded newer image for ubuntu@sha256:f3a61450ae43896c4332bda5e78b453f4a93179045f20c8181043b26b5e79028
    Tagging ubuntu@sha256:f3a61450ae43896c4332bda5e78b453f4a93179045f20c8181043b26b5e79028 as ubuntu:16.04

Now try pulling an unsigned image to confirm that it fails:

    $ docker pull dougtoppin/docker-infinispan-example
    Using default tag: latest
    Error: remote trust data does not exist for docker.io/dougtoppin/docker-infinispan-example: notary.docker.io does not have trust data for docker.io/dougtoppin/docker-infinispan-example

Now relax the trust requirement and try again.
This time it should work.

    $ export DOCKER_CONTENT_TRUST=0
    $ docker pull dougtoppin/docker-infinispan-example
    Using default tag: latest
    latest: Pulling from dougtoppin/docker-infinispan-example
    8c3d77a518cb: Already exists
    0c41fa36c9df: Already exists
    ce7ce27174d9: Already exists
    686d2d5d1b83: Already exists
    a7dad4e5ac9b: Already exists
    0ecbf64f275a: Pull complete
    Digest: sha256:3d188c067d17f885389b1929725ae1b308ecbe61be12bf57600e500e42721b6e
    Status: Downloaded newer image for dougtoppin/docker-infinispan-example:latest



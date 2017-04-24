# Description

Can you create an image using only the scratch base image?

## Run instructions

Create a Dockerfile containing only the following (or some variation) and try to build it:

    FROM scratch

The answer is that you cannot create images (at least using `docker build`) that contain only the `scratch` base image.

You have to include something more in the Dockerfile.

At least one other exercise in this set does work through how to create a very small image which might be useful to be aware of.


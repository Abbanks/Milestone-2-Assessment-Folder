# What each Dockerfile instruction does

- FROM: This defines the Base Image. It’s the starting point (the operating system and pre-installed tools) that your app builds upon.

- WORKDIR: Create and set the working directory inside the container

- COPY: Copy the local index.html file into the container

- RUN: This executes commands during the build process. It is used to install dependencies, compile code, or set up the environment. Each RUN command creates a new layer in the image.

- CMD: This sets the default command that executes when the container is actually launched. Unlike RUN, which happens at "birth" (build), CMD happens at "startup" (runtime). There can only be one CMD in a Dockerfile.

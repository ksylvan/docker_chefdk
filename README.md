
# ChefDK in a Docker container

Simple container to include chefdk so you can isolate your chef workstation work in a container.

Set up your `$HOME/.chef` directory with your keys from the chef
server, then you can run the container with a command like this:

    docker run --rm -it \
      -v $HOME/.chef:$HOME/.chef \
      -v $HOME/.ssh:$HOME/.ssh \
      -v /etc/passwd:/etc/passwd -v /etc/group:/etc/group \
      -u 1000:1000 -e HOME=$HOME -w $HOME ksylvan/docker_chefdk bash

You can now use `berks` and `knife` commands in the container.

Add the host directories you want to access by adding `-v` options.

For example, if you want your in-contianer ~/.berkshelf to persist,
then add `-v /some/directory/berkshelf:$HOME/.berkshelf` to the options
you pass in to docker.

Based on https://github.com/spheromak/docker_chefdk

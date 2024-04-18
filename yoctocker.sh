#!/bin/bash

docker run -it --workdir /home/root/ -v $1/:/home/root/ -v /home/$USER/.ssh/:/home/root/.ssh/ yoctocker:latest

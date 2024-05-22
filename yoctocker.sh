#!/bin/bash

docker run -it --workdir /home/yoctocker/ -v $1/:/home/yoctocker/ -v /home/$USER/.ssh/:/home/yoctocker/.ssh/ yoctocker:latest

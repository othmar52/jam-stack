#!/bin/bash

# install packages in python container
apt-get update && \
    apt-get install -y --no-install-recommends \
        ffmpeg \
        build-essential \
        graphicsmagick && \
    apt-get clean 

